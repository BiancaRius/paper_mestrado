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

sp_caete_PFT=table_PFT$clima