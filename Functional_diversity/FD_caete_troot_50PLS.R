#library(TPD)
caete<-read.csv("/home/bia/backup/paper_mestrado/Functional_diversity/pls_attrs.csv")
pls_colunm <- "PLS50"
caete$PLS <- pls_colunm
caetePLS <- caete$PLS
caete_troot <- caete[1:50,5]
TPDs_caete<- TPDs(species = caetePLS, caete_troot, alpha=1)
plotTPD(TPDs_caete)
FDindices_caete <- REND(TPDs = TPDs_caete)
plotTPD(TPD = TPDs_caete, whichPlot = NULL, nRowCol = NULL, color1 = "plum3", leg = TRUE, leg.text = paste0(names(FDindices_caete$species$FRichness), "; FDiv=", round(FDindices_caete$species$FDivergence,3)))
plotTPD(TPD = TPDs_caete, whichPlot = NULL, nRowCol = NULL, color1 = "plum3", leg = TRUE, leg.text = paste0(names(FDindices_caete$species$FRichness), "; FEve=", round(FDindices_caete$species$FEvenness,3)))
plotTPD(TPD = TPDs_caete, whichPlot = NULL, nRowCol = NULL, color1 = "plum3", leg = TRUE, leg.text = paste0(names(FDindices_caete$species$FRichness), "; FRic=", round(FDindices_caete$species$FRichness,3)))