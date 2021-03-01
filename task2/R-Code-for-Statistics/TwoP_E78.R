getwd()
setwd('~')
setwd("Downloads/evoman_framework-master/deap_generalist_cxTwoPoint/")
setwd("group78/")

TwoEnemy78_1 = read.csv("1/results.csv")
TwoEnemy78_2 = read.csv("2/results.csv")
TwoEnemy78_3 = read.csv("3/results.csv")
TwoEnemy78_4 = read.csv("4/results.csv")
TwoEnemy78_5 = read.csv("5/results.csv")
TwoEnemy78_6 = read.csv("6/results.csv")
TwoEnemy78_7 = read.csv("7/results.csv")
TwoEnemy78_8 = read.csv("8/results.csv")
TwoEnemy78_9 = read.csv("9/results.csv")
TwoEnemy78_10 = read.csv("10/results.csv")

colnames(TwoEnemy78_1) <- c("best", "mean", "STD")
colnames(TwoEnemy78_2) <- c("best", "mean", "STD") 
colnames(TwoEnemy78_3) <- c("best", "mean", "STD")
colnames(TwoEnemy78_4) <- c("best", "mean", "STD")
colnames(TwoEnemy78_5) <- c("best", "mean", "STD")
colnames(TwoEnemy78_6) <- c("best", "mean", "STD")
colnames(TwoEnemy78_7) <- c("best", "mean", "STD")
colnames(TwoEnemy78_8) <- c("best", "mean", "STD")
colnames(TwoEnemy78_9) <- c("best", "mean", "STD")
colnames(TwoEnemy78_10) <- c("best", "mean", "STD")

TwoEnemy78_MeanStd = matrix(nrow = 16, ncol =  4)
colnames(TwoEnemy78_MeanStd) = c("mean", "stdMean", "best", "stdBest")

for (i in 1:16) {
  TwoEnemy78_MeanStd[i, "mean"] = 
    mean (c(
      TwoEnemy78_1[i, "mean"],
      TwoEnemy78_2[i, "mean"],
      TwoEnemy78_3[i, "mean"],
      TwoEnemy78_4[i, "mean"],
      TwoEnemy78_5[i, "mean"],
      TwoEnemy78_6[i, "mean"],
      TwoEnemy78_7[i, "mean"],
      TwoEnemy78_8[i, "mean"],
      TwoEnemy78_9[i, "mean"],
      TwoEnemy78_10[i, "mean"]

    )) 
  
  TwoEnemy78_MeanStd[i, "stdMean"] = 
    sd ( c(
      TwoEnemy78_1[i, "mean"],
      TwoEnemy78_2[i, "mean"],
      TwoEnemy78_3[i, "mean"],
      TwoEnemy78_4[i, "mean"],
      TwoEnemy78_5[i, "mean"],
      TwoEnemy78_6[i, "mean"],
      TwoEnemy78_7[i, "mean"],
      TwoEnemy78_8[i, "mean"],
      TwoEnemy78_9[i, "mean"],
      TwoEnemy78_10[i, "mean"]
    ))
  
  
}

for (i in 1:16) {
  TwoEnemy78_MeanStd[i, "best"] = 
    mean (c(
      TwoEnemy78_1[i, "best"],
      TwoEnemy78_2[i, "best"],
      TwoEnemy78_3[i, "best"],
      TwoEnemy78_4[i, "best"],
      TwoEnemy78_5[i, "best"],
      TwoEnemy78_6[i, "best"],
      TwoEnemy78_7[i, "best"],
      TwoEnemy78_8[i, "best"],
      TwoEnemy78_9[i, "best"],
      TwoEnemy78_10[i, "best"]
    )) 
  
  TwoEnemy78_MeanStd[i, "stdBest"] = 
    sd ( c(
      TwoEnemy78_1[i, "best"],
      TwoEnemy78_2[i, "best"],
      TwoEnemy78_3[i, "best"],
      TwoEnemy78_4[i, "best"],
      TwoEnemy78_5[i, "best"],
      TwoEnemy78_6[i, "best"],
      TwoEnemy78_7[i, "best"],
      TwoEnemy78_8[i, "best"],
      TwoEnemy78_9[i, "best"],
      TwoEnemy78_10[i, "best"]
    )) }

TwoEnemy78_MeanStd

######################



#install.packages("ggplot2")
#library("ggplot2")

#TwoEnemy78_MeanStd = as.data.frame(TwoEnemy78_MeanStd)
#typeof(TwoEnemy78_MeanStd)

x = 0:15
y1_1PE1 = TwoEnemy78_MeanStd[,"mean"]
y2_1PE1 = TwoEnemy78_MeanStd[,"best"]
sd1_1PE1 = TwoEnemy78_MeanStd[,"stdMean"]
sd2_1PE1 = TwoEnemy78_MeanStd[,"stdBest"]

#plot(x = x, y1 = TwoEnemy78_MeanStd[,"mean"], type = "l", main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness")

#qplot(x = x, y = y1_1PE1, main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness") +
#  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") + geom_line(colour = "red") + 
#  geom_line(aes(x = x, y = TwoEnemy78_MeanStd[,"best"]), colour = "green") + scale_x_continuous(breaks = seq(0, 10, 1)) + 
#  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "green") +
#  ylim(-5,100)
  
                     
TwoEnemy78_MeanStd = as.data.frame(TwoEnemy78_MeanStd)

#ggplot() + 
#  geom_line(data=TwoEnemy78_MeanStd,aes(y=y1_1PE1, x= x,colour="green")) +
#  geom_line(data=TwoEnemy78_MeanStd,aes(y=y2_1PE1,x= x,colour= "red")) +
#  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
#  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") +
#  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "turquoise3") +
#  scale_x_continuous(breaks = seq(0, 10, 1)) + ylim(-5,100) + 
#  xlab(label = "generations") + ylab("fitness") + ggtitle("One point crossover Enemy 1")
  

ggplot() + 
  geom_line(data=TwoEnemy78_MeanStd,aes(y=y1_1PE1, x= x,colour="green")) +
  geom_line(data=TwoEnemy78_MeanStd,aes(y=y2_1PE1,x= x,colour= "red")) +
  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") +
  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "turquoise3") +
  scale_x_continuous(breaks = seq(0, 15, 1)) + ylim(-95,20) +
  xlab(label = "generations") + ylab("fitness") + ggtitle("Two point crossover Enemy 7&8") +
  theme(text = element_text(size=24.5))



