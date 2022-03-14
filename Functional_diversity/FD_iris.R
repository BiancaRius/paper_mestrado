library(TPD)
spcolumn<- "setosa"
#spcolumn
iris$spcolumn <- spcolumn
#iris
#iris
#irisSetosa <- iris[iris$Species=="setosa"]
#irisSetosa <-iris$Species=="setosa"
irisSetosa<-iris$spcolumn
#irisSetosa
traitsiris<-iris[1:150, 1]
#traitsiris
#TPDs_iris<- TPDs(species = irisSetosa, traitsiris)
TPDs_iris<- TPDs(species = irisSetosa, traitsiris, alpha=1)
#plotTPD(TPDs_iris)
FDindices <- REND(TPDs = TPDs_iris)
plotTPD(TPD = TPDs_iris, whichPlot = NULL, nRowCol = NULL, color1 = "aquamarine", leg = TRUE, leg.text = paste0(names(FDindices$species$FRichness), "; FRich=", round(FDindices$species$FRichness,3)))