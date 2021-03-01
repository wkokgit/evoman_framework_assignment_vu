getwd()
setwd('~')
setwd("Downloads/evoman_framework-master/deap_generalist_cxTwoPoint/")
setwd("group13/")

TwoEnemy13_1 = read.csv("1/results.csv")
TwoEnemy13_2 = read.csv("2/results.csv")
TwoEnemy13_3 = read.csv("3/results.csv")
TwoEnemy13_4 = read.csv("4/results.csv")
TwoEnemy13_5 = read.csv("5/results.csv")
TwoEnemy13_6 = read.csv("6/results.csv")
TwoEnemy13_7 = read.csv("7/results.csv")
TwoEnemy13_8 = read.csv("8/results.csv")
TwoEnemy13_9 = read.csv("9/results.csv")
TwoEnemy13_10 = read.csv("10/results.csv")

colnames(TwoEnemy13_1) <- c("best", "mean", "STD")
colnames(TwoEnemy13_2) <- c("best", "mean", "STD") 
colnames(TwoEnemy13_3) <- c("best", "mean", "STD")
colnames(TwoEnemy13_4) <- c("best", "mean", "STD")
colnames(TwoEnemy13_5) <- c("best", "mean", "STD")
colnames(TwoEnemy13_6) <- c("best", "mean", "STD")
colnames(TwoEnemy13_7) <- c("best", "mean", "STD")
colnames(TwoEnemy13_8) <- c("best", "mean", "STD")
colnames(TwoEnemy13_9) <- c("best", "mean", "STD")
colnames(TwoEnemy13_10) <- c("best", "mean", "STD")

TwoEnemy13_MeanStd = matrix(nrow = 16, ncol =  4)
colnames(TwoEnemy13_MeanStd) = c("mean", "stdMean", "best", "stdBest")

for (i in 1:16) {
  TwoEnemy13_MeanStd[i, "mean"] = 
    mean (c(
      TwoEnemy13_1[i, "mean"],
      TwoEnemy13_2[i, "mean"],
      TwoEnemy13_3[i, "mean"],
      TwoEnemy13_4[i, "mean"],
      TwoEnemy13_5[i, "mean"],
      TwoEnemy13_6[i, "mean"],
      TwoEnemy13_7[i, "mean"],
      TwoEnemy13_8[i, "mean"],
      TwoEnemy13_9[i, "mean"],
      TwoEnemy13_10[i, "mean"]

    )) 
  
  TwoEnemy13_MeanStd[i, "stdMean"] = 
    sd ( c(
      TwoEnemy13_1[i, "mean"],
      TwoEnemy13_2[i, "mean"],
      TwoEnemy13_3[i, "mean"],
      TwoEnemy13_4[i, "mean"],
      TwoEnemy13_5[i, "mean"],
      TwoEnemy13_6[i, "mean"],
      TwoEnemy13_7[i, "mean"],
      TwoEnemy13_8[i, "mean"],
      TwoEnemy13_9[i, "mean"],
      TwoEnemy13_10[i, "mean"]
    ))
  
  
}

for (i in 1:16) {
  TwoEnemy13_MeanStd[i, "best"] = 
    mean (c(
      TwoEnemy13_1[i, "best"],
      TwoEnemy13_2[i, "best"],
      TwoEnemy13_3[i, "best"],
      TwoEnemy13_4[i, "best"],
      TwoEnemy13_5[i, "best"],
      TwoEnemy13_6[i, "best"],
      TwoEnemy13_7[i, "best"],
      TwoEnemy13_8[i, "best"],
      TwoEnemy13_9[i, "best"],
      TwoEnemy13_10[i, "best"]
    )) 
  
  TwoEnemy13_MeanStd[i, "stdBest"] = 
    sd ( c(
      TwoEnemy13_1[i, "best"],
      TwoEnemy13_2[i, "best"],
      TwoEnemy13_3[i, "best"],
      TwoEnemy13_4[i, "best"],
      TwoEnemy13_5[i, "best"],
      TwoEnemy13_6[i, "best"],
      TwoEnemy13_7[i, "best"],
      TwoEnemy13_8[i, "best"],
      TwoEnemy13_9[i, "best"],
      TwoEnemy13_10[i, "best"]
    )) }

TwoEnemy13_MeanStd

######################



#install.packages("ggplot2")
#library("ggplot2")

#TwoEnemy13_MeanStd = as.data.frame(TwoEnemy13_MeanStd)
#typeof(TwoEnemy13_MeanStd)

x = 0:15
y1_1PE1 = TwoEnemy13_MeanStd[,"mean"]
y2_1PE1 = TwoEnemy13_MeanStd[,"best"]
sd1_1PE1 = TwoEnemy13_MeanStd[,"stdMean"]
sd2_1PE1 = TwoEnemy13_MeanStd[,"stdBest"]

#plot(x = x, y1 = TwoEnemy13_MeanStd[,"mean"], type = "l", main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness")

#qplot(x = x, y = y1_1PE1, main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness") +
#  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") + geom_line(colour = "red") + 
#  geom_line(aes(x = x, y = TwoEnemy13_MeanStd[,"best"]), colour = "green") + scale_x_continuous(breaks = seq(0, 10, 1)) + 
#  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "green") +
#  ylim(-5,100)
  
                     
TwoEnemy13_MeanStd = as.data.frame(TwoEnemy13_MeanStd)

#ggplot() + 
#  geom_line(data=TwoEnemy13_MeanStd,aes(y=y1_1PE1, x= x,colour="green")) +
#  geom_line(data=TwoEnemy13_MeanStd,aes(y=y2_1PE1,x= x,colour= "red")) +
#  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
#  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") +
#  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "turquoise3") +
#  scale_x_continuous(breaks = seq(0, 10, 1)) + ylim(-5,100) + 
#  xlab(label = "generations") + ylab("fitness") + ggtitle("One point crossover Enemy 1")
  

ggplot() + 
  geom_line(data=TwoEnemy13_MeanStd,aes(y=y1_1PE1, x= x,colour="green")) +
  geom_line(data=TwoEnemy13_MeanStd,aes(y=y2_1PE1,x= x,colour= "red")) +
  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") +
  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "turquoise3") +
  scale_x_continuous(breaks = seq(0, 15, 1)) + ylim(-95,20) +
  xlab(label = "generations") + ylab("fitness") + ggtitle("Two point crossover Enemy 1&3") +
  theme(text = element_text(size=24.5))



