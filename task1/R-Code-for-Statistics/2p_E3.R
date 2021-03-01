getwd()
setwd('~')
setwd("Downloads/evoman_framework-master/deap_specialist_cxTwoPoint/")
setwd("Enemy3/")

TwoEnemy3_1 = read.csv("1/results.csv")
TwoEnemy3_2 = read.csv("2/results.csv")
TwoEnemy3_3 = read.csv("3/results.csv")
TwoEnemy3_4 = read.csv("4/results.csv")
TwoEnemy3_5 = read.csv("5/results.csv")
TwoEnemy3_6 = read.csv("6/results.csv")
TwoEnemy3_7 = read.csv("7/results.csv")
TwoEnemy3_8 = read.csv("8/results.csv")
TwoEnemy3_9 = read.csv("9/results.csv")
TwoEnemy3_10 = read.csv("10/results.csv")

TwoEnemy3_MeanStd = matrix(nrow = 11, ncol =  4)
colnames(TwoEnemy3_MeanStd) = c("mean", "stdMean", "best", "stdBest")


for (i in 1:11) {
  TwoEnemy3_MeanStd[i, "mean"] = 
    mean (c(
      TwoEnemy3_1[i, "mean"],
      TwoEnemy3_2[i, "mean"],
      TwoEnemy3_3[i, "mean"],
      TwoEnemy3_4[i, "mean"],
      TwoEnemy3_5[i, "mean"],
      TwoEnemy3_6[i, "mean"],
      TwoEnemy3_7[i, "mean"],
      TwoEnemy3_8[i, "mean"],
      TwoEnemy3_9[i, "mean"],
      TwoEnemy3_10[i, "mean"] 
    )) 
  
  TwoEnemy3_MeanStd[i, "stdMean"] = 
    sd ( c(
      TwoEnemy3_1[i, "mean"],
      TwoEnemy3_2[i, "mean"],
      TwoEnemy3_3[i, "mean"],
      TwoEnemy3_4[i, "mean"],
      TwoEnemy3_5[i, "mean"],
      TwoEnemy3_6[i, "mean"],
      TwoEnemy3_7[i, "mean"],
      TwoEnemy3_8[i, "mean"],
      TwoEnemy3_9[i, "mean"],
      TwoEnemy3_10[i, "mean"]
    ))
  
  
}


for (i in 1:11) {
  TwoEnemy3_MeanStd[i, "best"] = 
    mean (c(
      TwoEnemy3_1[i, "best"],
      TwoEnemy3_2[i, "best"],
      TwoEnemy3_3[i, "best"],
      TwoEnemy3_4[i, "best"],
      TwoEnemy3_5[i, "best"],
      TwoEnemy3_6[i, "best"],
      TwoEnemy3_7[i, "best"],
      TwoEnemy3_8[i, "best"],
      TwoEnemy3_9[i, "best"],
      TwoEnemy3_10[i, "best"] 
    )) 
  
  TwoEnemy3_MeanStd[i, "stdBest"] = 
    sd ( c(
      TwoEnemy3_1[i, "best"],
      TwoEnemy3_2[i, "best"],
      TwoEnemy3_3[i, "best"],
      TwoEnemy3_4[i, "best"],
      TwoEnemy3_5[i, "best"],
      TwoEnemy3_6[i, "best"],
      TwoEnemy3_7[i, "best"],
      TwoEnemy3_8[i, "best"],
      TwoEnemy3_9[i, "best"],
      TwoEnemy3_10[i, "best"] 
    )) }

TwoEnemy3_MeanStd

#install.packages("ggplot2")
#library("ggplot2")

#TwoEnemy3_MeanStd = as.data.frame(TwoEnemy3_MeanStd)
#typeof(TwoEnemy3_MeanStd)

x = 0:10
y1_2PE3 = TwoEnemy3_MeanStd[,"mean"]
y2_2PE3 = TwoEnemy3_MeanStd[,"best"]
sd1_2PE3 = TwoEnemy3_MeanStd[,"stdMean"]
sd2_2PE3 = TwoEnemy3_MeanStd[,"stdBest"]

#plot(x = x, y1 = TwoEnemy3_MeanStd[,"mean"], type = "l", main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness")

#qplot(x = x, y = y1_2PE3, main = "Two point crossover Enemy 3", xlab = "generations", ylab = "fitness") +
#  geom_errorbar(aes(x=x, ymin=y1_2PE3-sd1_2PE3, ymax=y1_2PE3+sd1_2PE3), width=0.25, colour = "red") + geom_line(colour = "red") + 
#  geom_line(aes(x = x, y = TwoEnemy3_MeanStd[,"best"]), colour = "green") + scale_x_continuous(breaks = seq(0, 10, 1)) +
#  geom_errorbar(aes(x=x, ymin=y2_2PE3-sd2_2PE3 , ymax=y2_2PE3+sd2_2PE3 ), width=0.25, colour = "green") +
#  ylim(-5,100)

TwoEnemy3_MeanStd = as.data.frame(TwoEnemy3_MeanStd)

ggplot() + 
  geom_line(data=TwoEnemy3_MeanStd,aes(y=y1_2PE3, x= x,colour="green")) +
  geom_line(data=TwoEnemy3_MeanStd,aes(y=y2_2PE3,x= x,colour= "red")) +
  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
  geom_errorbar(aes(x=x, ymin=y1_2PE3-sd1_2PE3, ymax=y1_2PE3+sd1_2PE3), width=0.25, colour = "red") +
  geom_errorbar(aes(x=x, ymin=y2_2PE3-sd2_2PE3, ymax=y2_2PE3+sd2_2PE3), width=0.25, colour = "turquoise3") +
  scale_x_continuous(breaks = seq(0, 10, 1)) + ylim(-5,100) + 
  xlab(label = "generations") + ylab("fitness") + ggtitle("Two point crossover Enemy 3")









