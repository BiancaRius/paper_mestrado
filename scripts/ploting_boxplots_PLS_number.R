
table_50=read.csv("/home/bianca/CAETE_v1.0_results/PLS/50PLS/50_nclim/out50_nclim.csv")

table_100=read.csv("/home/bianca/CAETE_v1.0_results/PLS/100PLS/100_nclim/out100_nclim.csv")

table_200=read.csv("/home/bianca/CAETE_v1.0_results/PLS/200PLS/200_nclim/out200_nclim.csv")

table_500=read.csv("/home/bianca/CAETE_v1.0_results/PLS/500PLS/500_nclim/out500_nclim.csv")

table_1000=read.csv("/home/bianca/CAETE_v1.0_results/PLS/1000PLS/1000_nclim/out1000_nclim.csv")

table_3000=read.csv("/home/bianca/CAETE_v1.0_results/PLS/3000PLS/3000PLS_nclim/gross_results/out3000_nclim.csv")

###cmass##
par(mfrow=c(6,1))
par(mar=c(0,3,0,3))
bp_table_50=boxplot(table_50$cmass~table_50$run, data=table_50, outline=FALSE,horizontal = TRUE, ylim=c(0.,20.),xaxt='n',yaxt='n',ylab="",xlab="")
mtext(side=2, line=0.7, "50 PLS",cex=0.8,font=2)

par(mar=c(0,3,0,3))
bp_table_100=boxplot(table_100$cmass~table_100$run, data=table_100, outline=FALSE,horizontal = TRUE,ylim=c(0.,20.),xaxt='n',yaxt='n',ylab="",xlab="")
mtext(side=2, line=0.7, "100 PLS",cex=0.8,font=2)

par(mar=c(0,3,0,3))
bp_table_200=boxplot(table_200$cmass~table_200$run, data=table_200, outline=FALSE,horizontal = TRUE,ylim=c(0.,20.),ylab="",xlab="",xaxt='n',yaxt='n')
mtext(side=2, line=0.7, "200 PLS",cex=0.8,font=2)

par(mar=c(0,3,0,3))
bp_table_500=boxplot(table_500$cmass~table_500$run, data=table_500, outline=FALSE,horizontal = TRUE,ylim=c(0.,20.),ylab="",xlab="",xaxt='n',yaxt='n')
mtext(side=2, line=0.7, "500 PLS",cex=0.8,font=2)

par(mar=c(0,3,0,3))
bp_table_1000=boxplot(table_1000$cmass~table_1000$run, data=table_1000, outline=FALSE,horizontal = TRUE,ylim=c(0.,20.),ylab="",xlab="",xaxt='n',yaxt='n')
mtext(side=2, line=0.7, "1000 PLS",cex=0.8,font=2)

par(mar=c(0,3,0,3))
bp_table_3000=boxplot(table_3000$cmass~table_3000$run, data=table_3000, outline=FALSE,horizontal = TRUE,ylim=c(0.,20.),ylab="",xlab="",yaxt='n',xaxt='s')
mtext(side=2, line=0.7, "3000 PLS",cex=0.8,font=2)

####aleaf#####

bp_aleaf_table_50=boxplot(table_50$aleaf_cwm~table_50$run, data=table_50, outline=FALSE,horizontal = TRUE, ylim=c(0.25,0.4),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aleaf_table_100=boxplot(table_100$aleaf_cwm~table_100$run, data=table_100, outline=FALSE,horizontal = TRUE, ylim=c(0.25,0.4),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aleaf_table_200=boxplot(table_200$aleaf_cwm~table_200$run, data=table_200, outline=FALSE,horizontal = TRUE, ylim=c(0.25,0.4),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aleaf_table_500=boxplot(table_500$aleaf_cwm~table_500$run, data=table_500, outline=FALSE,horizontal = TRUE, ylim=c(0.25,0.4),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aleaf_table_1000=boxplot(table_1000$aleaf_cwm~table_1000$run, data=table_1000, outline=FALSE,horizontal = TRUE, ylim=c(0.25,0.4),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aleaf_table_3000=boxplot(table_3000$aleaf_cwm~table_3000$run, data=table_3000, outline=FALSE,horizontal = TRUE, ylim=c(0.25,0.4),yaxt='n',ylab="",xlab="")

####awood###
bp_awood_table_50=boxplot(table_50$awood_cwm~table_50$run, data=table_50, outline=FALSE,horizontal = TRUE, ylim=c(0.2,0.42),xaxt='n',yaxt='n',ylab="",xlab="")

bp_awood_table_100=boxplot(table_100$awood_cwm~table_100$run, data=table_100, outline=FALSE,horizontal = TRUE, ylim=c(0.2,0.42),xaxt='n',yaxt='n',ylab="",xlab="")

bp_awood_table_200=boxplot(table_200$awood_cwm~table_200$run, data=table_200, outline=FALSE,horizontal = TRUE, ylim=c(0.2,0.42),xaxt='n',yaxt='n',ylab="",xlab="")

bp_awood_table_500=boxplot(table_500$awood_cwm~table_500$run, data=table_500, outline=FALSE,horizontal = TRUE, ylim=c(0.2,0.42),xaxt='n',yaxt='n',ylab="",xlab="")

bp_awood_table_1000=boxplot(table_1000$awood_cwm~table_1000$run, data=table_1000, outline=FALSE,horizontal = TRUE, ylim=c(0.2,0.42),xaxt='n',yaxt='n',ylab="",xlab="")

bp_awood_table_3000=boxplot(table_3000$awood_cwm~table_3000$run, data=table_3000, outline=FALSE,horizontal = TRUE, ylim=c(0.2,0.42),yaxt='n',ylab="",xlab="")

####aroot####
bp_aroot_table_50=boxplot(table_50$aroot_cwm~table_50$run, data=table_50, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aroot_table_100=boxplot(table_100$aroot_cwm~table_100$run, data=table_100, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aroot_table_200=boxplot(table_200$aroot_cwm~table_200$run, data=table_200, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aroot_table_500=boxplot(table_500$aroot_cwm~table_500$run, data=table_500, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aroot_table_1000=boxplot(table_1000$aroot_cwm~table_1000$run, data=table_1000, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_aroot_table_3000=boxplot(table_3000$aroot_cwm~table_3000$run, data=table_3000, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),yaxt='n',ylab="",xlab="")

##twood###
bp_twood_table_50=boxplot(table_50$twood_cwm~table_50$run, data=table_50, outline=FALSE,horizontal = TRUE)#, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_twood_table_100=boxplot(table_100$twood_cwm~table_100$run, data=table_100, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_twood_table_200=boxplot(table_200$twood_cwm~table_200$run, data=table_200, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_twood_table_500=boxplot(table_500$twood_cwm~table_500$run, data=table_500, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_twood_table_1000=boxplot(table_1000$twood_cwm~table_1000$run, data=table_1000, outline=FALSE,horizontal = TRUE, ylim=c(0.26,0.44),xaxt='n',yaxt='n',ylab="",xlab="")

bp_twood_table_3000=boxplot(table_3000$twood_cwm~table_3000$run, data=table_3000, outline=FALSE,horizontal = TRUE, ylim=c(22.,30))#,yaxt='n',ylab="",xlab="")
