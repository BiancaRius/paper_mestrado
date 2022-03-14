library(dplyr)
library(ggpubr)
library(TPD)
library(plotly)
library(ggplot2)
library(ggbreak)
##import the tables
table_nclim_PFT=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_3PFT_nclim_FD.csv')

table_nclim_PLS=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_PLS_nclim_FD.csv')

table_lowprec_PFT=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_3PFT_lowprec_FD.csv')

table_lowprec_PLS=read.csv('/home/bianca/paper_doutorado/CAETE_Rius_etal_2020/CAETE_v1.03PFT/functional_diversity/CAETEv1.0_PLS_lowprec_FD.csv')

table_PLS=rbind(table_nclim_PLS,table_lowprec_PLS)

table_PFT=rbind(table_nclim_PFT,table_lowprec_PFT)

sp_caete_PLS=table_PLS$clima

sp_caete_PFT=table_PFT$clima

##TPDS#######
#####PLS###
###allocation###
####aleaf
aleaf_PLS=table_PLS$aleaf_cwm
TPD_aleaf_PLS=TPDs(species = sp_caete_PLS, aleaf_PLS,alpha=1)
####aroot
aroot_PLS=table_PLS$aroot_cwm
TPD_aroot_PLS=TPDs(species = sp_caete_PLS, aroot_PLS,alpha=1)
####awood
awood_PLS=table_PLS$awood_cwm
TPD_awood_PLS=TPDs(species = sp_caete_PLS, awood_PLS,alpha=1)

###residence time###
####tleaf
tleaf_PLS=table_PLS$tleaf_cwm
TPD_tleaf_PLS=TPDs(species = sp_caete_PLS, tleaf_PLS,alpha=1)
####aroot
troot_PLS=table_PLS$troot_cwm
TPD_troot_PLS=TPDs(species = sp_caete_PLS, troot_PLS,alpha=1)
####awood
twood_PLS=table_PLS$twood_cwm
TPD_twood_PLS=TPDs(species = sp_caete_PLS, twood_PLS,alpha=1)

##TPDS#######
#####PFT###
###allocation###
####aleaf
aleaf_PFT=table_PFT$aleaf_cwm
TPD_aleaf_PFT=TPDs(species = sp_caete_PFT, aleaf_PFT,alpha=1)
####aroot
aroot_PFT=table_PFT$aroot_cwm
TPD_aroot_PFT=TPDs(species = sp_caete_PFT, aroot_PFT,alpha=1)
####awood
awood_PFT=table_PFT$awood_cwm
TPD_awood_PFT=TPDs(species = sp_caete_PFT, awood_PFT,alpha=1)

###residence time###
####tleaf
tleaf_PFT=table_PFT$tleaf_cwm
TPD_tleaf_PFT=TPDs(species = sp_caete_PFT, tleaf_PFT,alpha=1)
####aroot
troot_PFT=table_PFT$troot_cwm
TPD_troot_PFT=TPDs(species = sp_caete_PFT, troot_PFT,alpha=1)
####awood
twood_PFT=table_PFT$twood_cwm
TPD_twood_PFT=TPDs(species = sp_caete_PFT, twood_PFT,alpha=1)

###PLOTS
#####PLS
#####allocation
#aleaf
x=TPD_aleaf_PLS[["data"]][["evaluation_grid"]]
y1=TPD_aleaf_PLS[["TPDs"]][["nclim"]]
y2=TPD_aleaf_PLS[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 12,
  color = "black")
a <- list(title='eixo',
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.6))
c<-list(title='eixo',
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.1))

fig_aleaf_PLS=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_aleaf_PLS <- fig_aleaf_PLS %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')

fig_aleaf_PLS <- fig_aleaf_PLS %>% layout(xaxis = a,
                                          yaxis = c)
fig_aleaf_PLS <- fig_aleaf_PLS %>% layout(showlegend = FALSE)
fig_aleaf_PLS

#####PFT
#####allocation
#aleaf
x=TPD_aleaf_PFT[["data"]][["evaluation_grid"]]
y1=TPD_aleaf_PFT[["TPDs"]][["nclim"]]
y2=TPD_aleaf_PFT[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.6))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.1))

fig_aleaf_PFT=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_aleaf_PFT <- fig_aleaf_PFT %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_aleaf_PFT <- fig_aleaf_PFT %>% layout(xaxis = a,
                                          yaxis = c)
fig_aleaf_PFT <- fig_aleaf_PFT %>% layout(showlegend = FALSE)
fig_aleaf_PFT


#aroot
x=TPD_aroot_PLS[["data"]][["evaluation_grid"]]
y1=TPD_aroot_PLS[["TPDs"]][["nclim"]]
y2=TPD_aroot_PLS[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.0,0.9))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.07))

fig_aroot_PLS=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_aroot_PLS <- fig_aroot_PLS %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_aroot_PLS <- fig_aroot_PLS %>% layout(xaxis = a,
                                          yaxis = c)
fig_aroot_PLS <- fig_aroot_PLS %>% layout(showlegend = FALSE)
fig_aroot_PLS

#aroot PFT
x=TPD_aroot_PFT[["data"]][["evaluation_grid"]]
y1=TPD_aroot_PFT[["TPDs"]][["nclim"]]
y2=TPD_aroot_PFT[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.0,0.9))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.07))

fig_aroot_PFT=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_aroot_PFT <- fig_aroot_PFT %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_aroot_PFT <- fig_aroot_PFT %>% layout(xaxis = a,
                                          yaxis = c)
fig_aroot_PFT <- fig_aroot_PFT %>% layout(showlegend = FALSE)
fig_aroot_PFT


#awood
x=TPD_awood_PLS[["data"]][["evaluation_grid"]]
y1=TPD_awood_PLS[["TPDs"]][["nclim"]]
y2=TPD_awood_PLS[["TPDs"]][["lowprec"]]



b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.5))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.23))

fig_awood_PLS=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_awood_PLS <- fig_awood_PLS %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_awood_PLS <- fig_awood_PLS %>% layout(xaxis = a,
                                          yaxis = c)
fig_awood_PLS <- fig_awood_PLS %>% layout(showlegend = FALSE)
fig_awood_PLS

#awood PFT
x=TPD_awood_PFT[["data"]][["evaluation_grid"]]
y1=TPD_awood_PFT[["TPDs"]][["nclim"]]
y2=TPD_awood_PFT[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.5))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.23))

fig_awood_PFT=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_awood_PFT <- fig_awood_PFT %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_awood_PFT <- fig_awood_PFT %>% layout(xaxis = a,
                                          yaxis = c)
fig_awood_PFT <- fig_awood_PFT %>% layout(showlegend = FALSE)
fig_awood_PFT




#####residence time
##tleaf
x=TPD_tleaf_PLS[["data"]][["evaluation_grid"]]
y1=TPD_tleaf_PLS[["TPDs"]][["nclim"]]
y2=TPD_tleaf_PLS[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,7.))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.09))

fig_tleaf_PLS=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_tleaf_PLS <- fig_tleaf_PLS %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_tleaf_PLS <- fig_tleaf_PLS %>% layout(xaxis = a,
                                          yaxis = c)
fig_tleaf_PLS <- fig_tleaf_PLS %>% layout(showlegend = FALSE)
fig_tleaf_PLS

#tleaf PFT
x=TPD_tleaf_PFT[["data"]][["evaluation_grid"]]
y1=TPD_tleaf_PFT[["TPDs"]][["nclim"]]
y2=TPD_tleaf_PFT[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,7.))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.09))

fig_tleaf_PFT=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_tleaf_PFT <- fig_tleaf_PFT %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_tleaf_PFT <- fig_tleaf_PFT %>% layout(xaxis = a,
                                          yaxis = c)
fig_tleaf_PFT <- fig_tleaf_PFT %>% layout(showlegend = FALSE)
fig_tleaf_PFT


##twood
x=TPD_twood_PLS[["data"]][["evaluation_grid"]]
y1=TPD_twood_PLS[["TPDs"]][["nclim"]]
y2=TPD_twood_PLS[["TPDs"]][["lowprec"]]


b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,38))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.25))

fig_twood_PLS=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_twood_PLS <- fig_twood_PLS %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_twood_PLS <- fig_twood_PLS %>% layout(xaxis = a,
                                          yaxis = c)
fig_twood_PLS <- fig_twood_PLS %>% layout(showlegend = FALSE)
fig_twood_PLS

##twood PFT
x=TPD_twood_PFT[["data"]][["evaluation_grid"]]
y1=TPD_twood_PFT[["TPDs"]][["nclim"]]
y2=TPD_twood_PFT[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,38))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.25))

fig_twood_PFT=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_twood_PFT <- fig_twood_PFT %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_twood_PFT <- fig_twood_PFT %>% layout(xaxis = a,
                                          yaxis = c)
fig_twood_PFT <- fig_twood_PFT %>% layout(showlegend = FALSE)
fig_twood_PFT

##troot
x=TPD_troot_PLS[["data"]][["evaluation_grid"]]
y1=TPD_troot_PLS[["TPDs"]][["nclim"]]
y2=TPD_troot_PLS[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,9))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.1))

fig_troot_PLS=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_troot_PLS <- fig_troot_PLS %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_troot_PLS <- fig_troot_PLS %>% layout(xaxis = a,
                                          yaxis = c)
fig_troot_PLS <- fig_troot_PLS %>% layout(showlegend = FALSE)
fig_troot_PLS

##troot PFT
x=TPD_troot_PFT[["data"]][["evaluation_grid"]]
y1=TPD_troot_PFT[["TPDs"]][["nclim"]]
y2=TPD_troot_PFT[["TPDs"]][["lowprec"]]


b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,9))
c<-list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b, range=list(0.,0.1))

fig_troot_PFT=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_troot_PFT <- fig_troot_PFT %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_troot_PFT <- fig_troot_PFT %>% layout(xaxis = a,
                                          yaxis = c)
fig_troot_PFT <- fig_troot_PFT %>% layout(showlegend = FALSE)
fig_troot_PFT





#aroot
x=TPD_aroot_PFT[["data"]][["evaluation_grid"]]
y1=TPD_aroot_PFT[["TPDs"]][["nclim"]]
y2=TPD_aroot_PFT[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b)

fig_aroot_PFT=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_aroot_PFT <- fig_aroot_PFT %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_aroot_PFT <- fig_aroot_PFT %>% layout(xaxis = a,
                                          yaxis = a)
fig_aroot_PFT <- fig_aroot_PFT %>% layout(showlegend = FALSE)
fig_aroot_PFT

#awood
x=TPD_awood_PFT[["data"]][["evaluation_grid"]]
y1=TPD_awood_PFT[["TPDs"]][["nclim"]]
y2=TPD_awood_PFT[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b)

fig_awood_PFT=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_awood_PFT <- fig_awood_PFT %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_awood_PFT <- fig_awood_PFT %>% layout(xaxis = a,
                                          yaxis = a)
fig_awood_PFT <- fig_awood_PFT %>% layout(showlegend = FALSE)
fig_awood_PFT

#####residence time
##tleaf
x=TPD_tleaf_PFT[["data"]][["evaluation_grid"]]
y1=TPD_tleaf_PFT[["TPDs"]][["nclim"]]
y2=TPD_tleaf_PFT[["TPDs"]][["lowprec"]]

b=list(
  family = "Arial, sans-serif",
  size = 26,
  color = "black")
a <- list(
  zeroline = FALSE,
  showline = TRUE,
  ticks='outside',
  showticklabels = TRUE,
  showgrid = FALSE, tickfont=b)

fig_tleaf_PFT=plot_ly(x=x,y=y1,type="scatter",mode="lines",fill="tozeroy",name ="reg. clim.")

fig_tleaf_PFT <- fig_tleaf_PFT %>% add_trace(x =x, y = y2, name = 'low prec.', fill = 'tozeroy')
fig_tleaf_PFT <- fig_tleaf_PFT %>% layout(xaxis = a,
                                          yaxis = a)
fig_tleaf_PFT <- fig_tleaf_PFT %>% layout(showlegend = FALSE)
fig_tleaf_PFT



