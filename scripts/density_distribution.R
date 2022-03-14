
library(dplyr)
library(ggpubr)
library(gridExtra)

##import the tables
table_nclim_PFT=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_3PFT_nclim_FD.csv')

table_nclim_PLS=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_PLS_nclim_FD.csv')

table_lowprec_PFT=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_3PFT_lowprec_FD.csv')

table_lowprec_PLS=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_PLS_lowprec_FD.csv')

#creating tables
table_PLS=rbind(table_nclim_PLS,table_lowprec_PLS)
table_PFT=rbind(table_nclim_PFT,table_lowprec_PFT)

#considering the climate and the approach as spp
sp_caete_PLS=table_PLS$clima

sp_caete_PFT=table_PFT$clima

###creating graphs
#####ALLOCATION TRAITS#####

gr1=ggdensity(table_PLS, x = "aleaf_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c("#0073C2FF","#FC4E07"),alpha=0.5, xlab='')
gr1=ggpar(gr1,main="",subtitle = "Leaf",legend='',font.family = 'Arial',ylab='TRAIT-BASED \nDensity distribution')
gr2=ggdensity(table_PLS, x = "awood_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette =c("#0073C2FF","#FC4E07"),alpha=0.5,ylab='',xlab='')
gr2=ggpar(gr2,legend = 'none',subtitle = 'Aboveground woody tissues',font.family = 'Arial')
gr3=ggdensity(table_PLS, x = "aroot_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c("#0073C2FF","#FC4E07"),alpha=0.5,ylab='',xlab='')
gr3=ggpar(gr3,legend='none',legend.title = 'Clima',subtitle = 'Fine roots',font.family = 'Arial')


gr4=ggdensity(table_PFT, x = "aleaf_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c("#0073C2FF","#FC4E07"),alpha=0.5, xlab='')
gr4=ggpar(gr4,legend='none',ylab='PFT \nDensity distribution')
gr5=ggdensity(table_PFT, x = "awood_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c("#0073C2FF","#FC4E07"),alpha=0.5, xlab='Trait values')
gr5=ggpar(gr5,legend='none',ylab='',xlab='')
gr6=ggdensity(table_PFT, x = "aroot_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c("#0073C2FF","#FC4E07"),alpha=0.5, xlab='')
gr6=ggpar(gr6,legend='none',ylab='',xlab='')

ggr=ggarrange(gr1,gr2,gr3,gr4,gr5,gr6,ncol=3,nrow=2,common.legend = TRUE, legend="top",align = 'hv')

annotate_figure(ggr,top = text_grob("Allocation traits"),bottom = text_grob("Trait values"))

###creating graphs
#####RESIDENCE TIME TRAITS#####

gr7=ggdensity(table_PLS, x = "tleaf_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c( "#0073C2FF","#FC4E07"),alpha=0.5, xlab='')
gr7=ggpar(gr1,main="",subtitle = "Leaf",legend='',font.family = 'Arial',ylab='TRAIT-BASED \nDensity distribution')
gr8=ggdensity(table_PLS, x = "twood_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette =c("#0073C2FF","#FC4E07"),alpha=0.5,ylab='',xlab='')
gr8=ggpar(gr2,legend = 'none',subtitle = 'Aboveground woody tissues',font.family = 'Arial')
gr9=ggdensity(table_PLS, x = "troot_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c("#0073C2FF","#FC4E07"),alpha=0.5,ylab='',xlab='')
gr9=ggpar(gr3,legend='none',legend.title = 'Clima',subtitle = 'Fine roots',font.family = 'Arial')


gr10=ggdensity(table_PFT, x = "tleaf_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c("#FC4E07","#0073C2FF"),alpha=0.5, xlab='')
gr10=ggpar(gr4,legend='none',ylab='PFT \nDensity distribution')
gr11=ggdensity(table_PFT, x = "twood_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c("#FC4E07","#0073C2FF"),alpha=0.5, xlab='Trait values')
gr11=ggpar(gr5,legend='none',ylab='',xlab='')
gr12=ggdensity(table_PFT, x = "troot_cwm", add = "mean", rug = TRUE, color = "clima", fill = "clima", palette = c("#FC4E07","#0073C2FF"),alpha=0.5, xlab='')
gr12=ggpar(gr6,legend='none',ylab='',xlab='')

ggr2=ggarrange(gr7,gr8,gr9,gr10,gr11,gr12,ncol=2,nrow=3,common.legend = TRUE, legend="top",align = 'hv')

annotate_figure(ggr2,top = text_grob("Residence time traits"),bottom = text_grob("Trait values"))


