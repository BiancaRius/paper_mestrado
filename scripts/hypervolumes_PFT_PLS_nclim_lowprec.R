library(dplyr)
library(factoextra)
library(gridExtra)
library(hypervolume)
library(ggplot2)

table_nclim_PFT=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_3PFT_nclim_FD.csv')

table_nclim_PLS=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_PLS_nclim_FD.csv')

table_lowprec_PFT=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_3PFT_lowprec_FD.csv')

table_lowprec_PLS=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_PLS_lowprec_FD.csv')

table=rbind(table_nclim_PLS,table_lowprec_PLS,table_nclim_PFT,table_lowprec_PFT)

groups=as.factor(table$clima_approach)
approach=as.factor(table$approach)

table_traits=table[,6:11]
names(table_traits)=c("Leaf residence time", "Woody residence time","Root residence time","Leaf allocation","Woody allocation", "Root allocation")
pca=prcomp(table_traits, scale = TRUE)
pca2=fviz_pca_biplot(pca,geom=c("point"),pointshape=21 ,labelsize=6,pointsize=3,geom.var = c("arrow","text"),col.ind=approach,fill.ind=approach,palette=c("grey70","black"),alpha.ind=0.4,repel=TRUE,legend.title= "",col.var="black", title = "")
pca3=pca2+theme(panel.background=element_blank(),panel.grid.major=element_blank(),axis.text=element_text(size=14,colour = 'black'), axis.title.x=element_text(size=14),axis.title.y=element_text(size=14),legend.title = element_text(size=10),legend.text = element_text(size=0)) +xlab("PC1 (84.3%)")+ylab("PC2 (11.7%)")
pca3

pca_test=fviz_pca_ind(pca,habillage = approach,label='none',geom.var=c('arrow','text'))
pca_test

summary(pca)
pca$rotation
pca$center
pca$scale

new_variables<-pca$x
df_new_variables<-as.data.frame(new_variables)
colnames(df_new_variables)
final_table<-bind_cols(table,df_new_variables)
write.csv(final_table, file = "/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/pcs_PLS_PFT.csv")

#hypervolume
table_pcs = read.csv("/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/pcs_PLS_PFT.csv")

nclim_PLS = table_pcs[table_pcs$clima_approach=='nclim_pls',]
nclim_PLS_traits=nclim_PLS[,13:15]
hv_nclim_PLS=hypervolume(nclim_PLS_traits, method = "gaussian")
hv_nclim_PLS

nclim_PFT = table_pcs[table_pcs$clima_approach=='nclim_pft',]
nclim_PFT_traits=nclim_PFT[,13:15]
hv_nclim_PFT=hypervolume(nclim_PFT_traits, method = "gaussian")
hv_nclim_PFT

lowprec_PLS = table_pcs[table_pcs$clima_approach=='lowprec_pls',]
lowprec_PLS_traits=lowprec_PLS[,13:15]
hv_lowprec_PLS=hypervolume(lowprec_PLS_traits, method = "gaussian")
hv_lowprec_PLS

lowprec_PFT = table_pcs[table_pcs$clima_approach=='lowprec_pft',]
lowprec_PFT_traits=lowprec_PFT[,13:15]
hv_lowprec_PFT=hypervolume(lowprec_PFT_traits, method = "gaussian")
hv_lowprec_PFT

cl=c("red2","midnightblue")
list=hypervolume_join(hv_lowprec_PFT,hv_nclim_PFT)
hypervl=plot.HypervolumeList(list,show.density=TRUE,show.legend = FALSE, show.random = TRUE,cex.axis = 1, show.data=TRUE,show.centroid = TRUE,show.contour = TRUE,contour.lwd=0.5,contour.type ="kde", colors = cl,cex.data = 0.3,cex.legend = 0,cex.centroid=2,contour.raster.resolution = 2,reshuffle = FALSE,contour.kde.level = 0)

cl=c("red2","midnightblue")
list=hypervolume_join(hv_lowprec_PLS,hv_nclim_PLS)
hypervl=plot.HypervolumeList(list,show.density=TRUE,show.legend = FALSE, show.random = TRUE,cex.axis = 1, show.data=TRUE,show.centroid = TRUE,show.contour = TRUE,contour.lwd=0.5,contour.type ="kde", colors = cl,cex.data = 0.3,cex.legend = 0,cex.centroid=2,contour.raster.resolution = 0.1,reshuffle = FALSE,contour.kde.level = 0)

cl=c("grey","black",'coral1','turquoise4')
list=hypervolume_join(hv_lowprec_PLS,hv_nclim_PLS,hv_lowprec_PFT,hv_nclim_PFT)
hypervl=plot.HypervolumeList(list,show.density=T,show.legend = FALSE, show.random = T,cex.axis = 1, show.data=T,show.centroid = TRUE,show.contour = TRUE,contour.lwd=2,contour.type ="kde", colors = cl,cex.data = 0.3,cex.legend = 0,cex.centroid=1.5,contour.raster.resolution = 2,reshuffle = FALSE,contour.kde.level = 0)

set_PLS=hypervolume_set(hv_lowprec_PLS,hv_nclim_PLS,check.memory = FALSE)
ovlp_PLS=hypervolume_overlap_statistics(set)
hypervolume_distance_PLS=hypervolume_distance(hv_lowprec_PLS,hv_nclim_PLS,type='centroid')

set_PFT=hypervolume_set(hv_lowprec_PFT,hv_nclim_PFT,check.memory = FALSE)
ovlp_PFT=hypervolume_overlap_statistics(set_PFT)
hypervolume_distance_PFT=hypervolume_distance(hv_lowprec_PFT,hv_nclim_PFT,type='centroid')

