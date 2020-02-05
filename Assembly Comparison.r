library(ggplot2)
library(readxl)

#Assemblies
SPAdes_Assemblies <- read.table("~/Stajich_Lab/SPAdes_Assemblies.txt", quote="\"", comment.char="")
names(SPAdes_Assemblies)<- c("Read ID", "Node", "Length", "Assembler")
MetaSPAdes_Assemblies <- read.table("~/Staijich_Lab/MetaSPAdes_Assemblies.txt", quote="\"", comment.char="")
names(MetaSPAdes_Assemblies)<- c("Read ID", "Node", "Length", "Assembler")

#Apophysomyces_sp.BC1034
#MetaSPAdes
ap1034ms<-subset(MetaSPAdes_Assemblies, MetaSPAdes_Assemblies$`Read ID`== "Apophysomyces_sp._BC1034")

ap1034ms.plot<-ggplot()+ 
geom_point(data=ap1034ms, aes(x=ap1034ms$Node, y=ap1034ms$Length, color=))+
xlab("Node") +
ylab("Length") +
ggtitle("Apophysomyces_sp.BC1034 MetaSPAdes Assembly")

ap1034ms.plot

pdf("ap1034ms.pdf", width = 15)
ap1034ms.plot
dev.off()

#SPAdes
ap1034s<-subset(SPAdes_Assemblies, SPAdes_Assemblies$`Read ID`=="Apophysomyces_sp._BC1034")

ap1034s.plot<-ggplot()+
geom_point(data = ap1034s, aes(x = ap1034s$Node, y = ap1034s$Length))+
xlab("Node") +
ylab("Length") +
ggtitle("Apophysomyces_sp.BC1034 SPAdes Assembly")

ap1034s.plot

pdf("ap1034s.pdf", width = 15)
ap1034s.plot
dev.off()


