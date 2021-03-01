getwd()
setwd('~')
setwd("Downloads/evoman_framework-master/deap_specialist_cxTwoPoint/")
setwd("Enemy1/")


TwoEnemy1_1 = read.csv("1/results.csv")
TwoEnemy1_2 = read.csv("2/results.csv")
TwoEnemy1_3 = read.csv("3/results.csv")
TwoEnemy1_4 = read.csv("4/results.csv")
TwoEnemy1_5 = read.csv("5/results.csv")
TwoEnemy1_6 = read.csv("6/results.csv")
TwoEnemy1_7 = read.csv("7/results.csv")
TwoEnemy1_8 = read.csv("8/results.csv")
TwoEnemy1_9 = read.csv("9/results.csv")
TwoEnemy1_10 = read.csv("10/results.csv")

TwoEnemy1_MeanStd = matrix(nrow = 11, ncol =  4)
colnames(TwoEnemy1_MeanStd) = c("mean", "stdMean", "best", "stdBest")


for (i in 1:11) {
  TwoEnemy1_MeanStd[i, "mean"] = 
    mean (c(
      TwoEnemy1_1[i, "mean"],
      TwoEnemy1_2[i, "mean"],
      TwoEnemy1_3[i, "mean"],
      TwoEnemy1_4[i, "mean"],
      TwoEnemy1_5[i, "mean"],
      TwoEnemy1_6[i, "mean"],
      TwoEnemy1_7[i, "mean"],
      TwoEnemy1_8[i, "mean"],
      TwoEnemy1_9[i, "mean"],
      TwoEnemy1_10[i, "mean"] 
    )) 
  
  TwoEnemy1_MeanStd[i, "stdMean"] = 
    sd ( c(
      TwoEnemy1_1[i, "mean"],
      TwoEnemy1_2[i, "mean"],
      TwoEnemy1_3[i, "mean"],
      TwoEnemy1_4[i, "mean"],
      TwoEnemy1_5[i, "mean"],
      TwoEnemy1_6[i, "mean"],
      TwoEnemy1_7[i, "mean"],
      TwoEnemy1_8[i, "mean"],
      TwoEnemy1_9[i, "mean"],
      TwoEnemy1_10[i, "mean"]
    ))
  
  
}


for (i in 1:11) {
  TwoEnemy1_MeanStd[i, "best"] = 
    mean (c(
      TwoEnemy1_1[i, "best"],
      TwoEnemy1_2[i, "best"],
      TwoEnemy1_3[i, "best"],
      TwoEnemy1_4[i, "best"],
      TwoEnemy1_5[i, "best"],
      TwoEnemy1_6[i, "best"],
      TwoEnemy1_7[i, "best"],
      TwoEnemy1_8[i, "best"],
      TwoEnemy1_9[i, "best"],
      TwoEnemy1_10[i, "best"] 
    )) 
  
  TwoEnemy1_MeanStd[i, "stdBest"] = 
    sd ( c(
      TwoEnemy1_1[i, "best"],
      TwoEnemy1_2[i, "best"],
      TwoEnemy1_3[i, "best"],
      TwoEnemy1_4[i, "best"],
      TwoEnemy1_5[i, "best"],
      TwoEnemy1_6[i, "best"],
      TwoEnemy1_7[i, "best"],
      TwoEnemy1_8[i, "best"],
      TwoEnemy1_9[i, "best"],
      TwoEnemy1_10[i, "best"] 
    )) }

TwoEnemy1_MeanStd

#install.packages("ggplot2")
#library("ggplot2")

#TwoEnemy1_MeanStd = as.data.frame(TwoEnemy1_MeanStd)
#typeof(TwoEnemy1_MeanStd)

x = 0:10
y1_2PE1 = TwoEnemy1_MeanStd[,"mean"]
y2_2PE1 = TwoEnemy1_MeanStd[,"best"]
sd1_2PE1 = TwoEnemy1_MeanStd[,"stdMean"]
sd2_2PE1 = TwoEnemy1_MeanStd[,"stdBest"]

#plot(x = x, y1 = TwoEnemy1_MeanStd[,"mean"], type = "l", main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness")

#qplot(x = x, y = y1_2PE1, main = "Two point crossover Enemy 1", xlab = "generations", ylab = "fitness") +
#  geom_errorbar(aes(x=x, ymin=y1_2PE1-sd1_2PE1, ymax=y1_2PE1+sd1_2PE1), width=0.25, colour = "red") + geom_line(colour = "red") + 
#  geom_line(aes(x = x, y = TwoEnemy1_MeanStd[,"best"]), colour = "green") + scale_x_continuous(breaks = seq(0, 10, 1)) +
#  geom_errorbar(aes(x=x, ymin=y2_2PE1-sd2_2PE1 , ymax=y2_2PE1+sd2_2PE1 ), width=0.25, colour = "green") +
#  ylim(-5,100)

TwoEnemy1_MeanStd = as.data.frame(TwoEnemy1_MeanStd)

ggplot() + 
  geom_line(data=TwoEnemy1_MeanStd,aes(y=y1_2PE1, x= x,colour="green")) +
  geom_line(data=TwoEnemy1_MeanStd,aes(y=y2_2PE1,x= x,colour= "red")) +
  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
  geom_errorbar(aes(x=x, ymin=y1_2PE1-sd1_2PE1, ymax=y1_2PE1+sd1_2PE1), width=0.25, colour = "red") +
  geom_errorbar(aes(x=x, ymin=y2_2PE1-sd2_2PE1, ymax=y2_2PE1+sd2_2PE1), width=0.25, colour = "turquoise3") +
  scale_x_continuous(breaks = seq(0, 10, 1)) + ylim(-5,100) + 
  xlab(label = "generations") + ylab("fitness") + ggtitle("Two point crossover Enemy 1")









