library(ggplot2)

data = read.csv('/home/bianca/backup/paper_mestrado/table_FD_barplot.csv')


###LEAF ALLOCATION
library(ggplot2)
leaf_alloc=read.csv('/home/bianca/backup/paper_mestrado/table_FD_barplot_leaf_allocation.csv')

value_leaf_alloc=leaf_alloc$Change....
component_leaf_alloc=leaf_alloc$FD.component
approach=leaf_alloc$approach

p=ggplot(leaf_alloc,aes(fill=approach,y=value_leaf_alloc,x=component_leaf_alloc))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=ggplot(leaf_alloc,aes(fill=approach,y=value_leaf_alloc,x=component_leaf_alloc))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=p+xlab('FD component')+ ylab('Change (%)')+scale_fill_manual(values=c('green1','darkgreen'))+theme_classic()+facet_wrap(~trait)
p+theme(legend.position = c(0.93, 0.8))+theme(axis.title = element_text(size = 18),axis.text = element_text(size=15),strip.text = element_blank(),strip.background = element_blank())   


###ABGW ALLOCATION
library(ggplot2)
abgw_alloc=read.csv('/home/bianca/backup/paper_mestrado/table_FD_barplot_abgw_allocation.csv')

value_abgw_alloc=abgw_alloc$Change....
component_abgw_alloc=abgw_alloc$FD.component
approach=abgw_alloc$approach

p=ggplot(abgw_alloc,aes(fill=approach,y=value_abgw_alloc,x=component_abgw_alloc))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=ggplot(abgw_alloc,aes(fill=approach,y=value_abgw_alloc,x=component_abgw_alloc))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=p+xlab('FD component')+ylab('')+scale_fill_manual(values=c('sienna1','sienna4'))+theme_classic()+facet_wrap(~trait)
p+theme(legend.position = c(0.93, 0.8))+theme(axis.text.y=element_blank(),axis.ticks.y=element_blank(),axis.title = element_text(size = 18),axis.text = element_text(size=15),strip.text = element_blank(),strip.background = element_blank())   



###ROOT ALLOCATION
library(ggplot2)
root_alloc=read.csv('/home/bianca/backup/paper_mestrado/table_FD_barplot_root_allocation.csv')

value_root_alloc=root_alloc$Change....
component_root_alloc=root_alloc$FD.component
approach=root_alloc$approach

p=ggplot(root_alloc,aes(fill=approach,y=value_root_alloc,x=component_root_alloc))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=ggplot(root_alloc,aes(fill=approach,y=value_root_alloc,x=component_root_alloc))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=p+xlab('FD component')+ylab('')+scale_fill_manual(values=c('gold','goldenrod4'))+theme_classic()+facet_wrap(~trait)
p+theme(legend.position = c(0.93, 0.8))+theme(axis.text.y=element_blank(),axis.ticks.y=element_blank(),axis.title = element_text(size = 18),axis.text = element_text(size=15),strip.text = element_blank(),strip.background = element_blank())   

#########

###LEAF residence_time
library(ggplot2)
leaf_rt=read.csv('/home/bianca/backup/paper_mestrado/table_FD_barplot_leaf_rt.csv')

value_leaf_rt=leaf_rt$Change....
component_leaf_rt=leaf_rt$FD.component
approach=leaf_rt$approach

p=ggplot(leaf_rt,aes(fill=approach,y=value_leaf_rt,x=component_leaf_rt))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=ggplot(leaf_rt,aes(fill=approach,y=value_leaf_rt,x=component_leaf_rt))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=p+xlab('FD component')+ ylab('Change (%)')+scale_fill_manual(values=c('green1','darkgreen'))+theme_classic()+facet_wrap(~trait)
p+theme(legend.position = c(0.93, 0.8))+theme(axis.title = element_text(size = 18),axis.text = element_text(size=15),strip.text = element_blank(),strip.background = element_blank())   


###ABGW residence time
library(ggplot2)
abgw_rt=read.csv('/home/bianca/backup/paper_mestrado/table_FD_barplot_abgw_rt.csv')

value_abgw_rt=abgw_rt$Change....
component_abgw_rt=abgw_rt$FD.component
approach=abgw_rt$approach

p=ggplot(abgw_rt,aes(fill=approach,y=value_abgw_rt,x=component_abgw_rt))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=ggplot(abgw_rt,aes(fill=approach,y=value_abgw_rt,x=component_abgw_rt))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=p+xlab('FD component')+ylab('')+scale_fill_manual(values=c('sienna1','sienna4'))+theme_classic()+facet_wrap(~trait)
p+theme(legend.position = c(0.93, 0.8))+theme(axis.text.y=element_blank(),axis.ticks.y=element_blank(),axis.title = element_text(size = 18),axis.text = element_text(size=15),strip.text = element_blank(),strip.background = element_blank())   

###Fineroots residence time
library(ggplot2)
root_rt=read.csv('/home/bianca/backup/paper_mestrado/table_FD_barplot_root_rt.csv')

value_root_rt=root_rt$Change....
component_root_rt=root_rt$FD.component
approach=root_rt$approach

p=ggplot(root_rt,aes(fill=approach,y=value_root_rt,x=component_root_rt))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=ggplot(root_rt,aes(fill=approach,y=value_root_rt,x=component_root_rt))+geom_bar(position = 'dodge',stat='identity',width = 0.5)+theme_minimal()
p=p+xlab('FD component')+ylab('')+scale_fill_manual(values=c('gold','goldenrod4'))+theme_classic()+facet_wrap(~trait)
p+theme(legend.position = c(0.93, 0.8))+theme(axis.text.y=element_blank(),axis.ticks.y=element_blank(),axis.title = element_text(size = 18),axis.text = element_text(size=15),strip.text = element_blank(),strip.background = element_blank())   
