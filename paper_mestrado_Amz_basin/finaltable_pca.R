library(dplyr)
df_nclim=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000_nclimate/out3000_nclim.csv",header=TRUE)
df_lowprec=read.csv("/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000_lowprec/out3000_lowprec.csv",header=TRUE)

df=rbind(df_nclim,df_lowprec)
df_grouped=group_by(df,nx,ny,lat,lon,clima,add=FALSE)
colu=vars(gpp,ra,npp,rc,et,wue,cue,cmass,cleaf,cfroot,cawood,tleaf_cwm,twood_cwm,troot_cwm,aleaf_cwm,awood_cwm,aroot_cwm)
df_grouped_mean = summarise_at(df_grouped,.funs = mean,.vars=colu)

write.csv(df_grouped_mean, file="/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000_meanruns_nclim_lprec.csv")

df_grouped_mean_traits=df_grouped_mean[,17:22]
pca=prcomp(df_grouped_mean_traits, scale = TRUE)
biplot(pca)
summary(pca)
new_variables<-pca$x
df_new_variables<-as.data.frame(new_variables)
colnames(df_new_variables)
final_table<-bind_cols(df_grouped_mean,df_new_variables)
write.csv(final_table, file = "/home/bianca/paper_mestrado_codes_results/caete_results_server/paper_mestrado_Amz_basin/3000_meanruns_nclim_lprec_pcs.csv")

