library(TPD)
caete<-read.csv("/home/bia/backup/paper_mestrado/Functional_diversity/1000PLS/pls_attrs_1000PLS.csv")
pls_colunm <- "PLS1000"
caete$PLS <- pls_colunm
caetePLS <- caete$PLS
caete_tleaf <- caete[1:1000,3]
TPDs_caete<- TPDs(species = caetePLS, caete_tleaf, alpha=1)
plotTPD(TPDs_caete)
FDindices_caete <- REND(TPDs = TPDs_caete)
plotTPD(TPD = TPDs_caete, whichPlot = NULL, nRowCol = NULL, color1 = "aquamarine", leg = TRUE, leg.text = paste0(names(FDindices_caete$species$FRichness), "; FRic=", round(FDindices_caete$species$FRichness,3)))
plotTPD(TPD = TPDs_caete, whichPlot = NULL, nRowCol = NULL, color1 = "aquamarine", leg = TRUE, leg.text = paste0(names(FDindices_caete$species$FEvenness), "; FEve=", round(FDindices_caete$species$FEvenness,3)))
plotTPD(TPD = TPDs_caete, whichPlot = NULL, nRowCol = NULL, color1 = "aquamarine", leg = TRUE, leg.text = paste0(names(FDindices_caete$species$FDivergence), "; FDiv=", round(FDindices_caete$species$FDivergence,3)))