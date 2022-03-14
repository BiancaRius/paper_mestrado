library(TPD)
caete<-read.csv("/home/bia/backup/paper_mestrado/Functional_diversity/50PLS/pls_attrs_50PLS_plus_100PLS.csv")
caete_tleaf <- caete[,5]
caete_pls <- caete$sp
TPDs_caete<- TPDs(species = caete_pls, caete_tleaf, alpha=0.9)
plotTPD(TPDs_caete)
FDindices_caete <- REND(TPDs = TPDs_caete)
plotTPD(TPD = TPDs_caete, whichPlot = NULL, nRowCol = NULL, color1 = "aquamarine", leg = TRUE, leg.text = paste0(names(FDindices_caete$species$FRichness), "; FRic=", round(FDindices_caete$species$FRichness,5)))
plotTPD(TPD = TPDs_caete, whichPlot = NULL, nRowCol = NULL, color1 = "aquamarine", leg = TRUE, leg.text = paste0(names(FDindices_caete$species$FEvenness), "; FEve=", round(FDindices_caete$species$FEvenness,3)))
plotTPD(TPD = TPDs_caete, whichPlot = NULL, nRowCol = NULL, color1 = "aquamarine", leg = TRUE, leg.text = paste0(names(FDindices_caete$species$FDivergence), "; FDiv=", round(FDindices_caete$species$FDivergence,3)))