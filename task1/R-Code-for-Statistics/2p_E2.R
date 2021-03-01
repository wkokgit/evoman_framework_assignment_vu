getwd()
setwd('~')
setwd("Downloads/evoman_framework-master/deap_specialist_cxTwoPoint/")
setwd("Enemy2/")

TwoEnemy2_1 = read.csv("1/results.csv")
TwoEnemy2_2 = read.csv("2/results.csv")
TwoEnemy2_3 = read.csv("3/results.csv")
TwoEnemy2_4 = read.csv("4/results.csv")
TwoEnemy2_5 = read.csv("5/results.csv")
TwoEnemy2_6 = read.csv("6/results.csv")
TwoEnemy2_7 = read.csv("7/results.csv")
TwoEnemy2_8 = read.csv("8/results.csv")
TwoEnemy2_9 = read.csv("9/results.csv")
TwoEnemy2_10 = read.csv("10/results.csv")

TwoEnemy2_MeanStd = matrix(nrow = 11, ncol =  4)
colnames(TwoEnemy2_MeanStd) = c("mean", "stdMean", "best", "stdBest")


for (i in 1:11) {
  TwoEnemy2_MeanStd[i, "mean"] = 
    mean (c(
      TwoEnemy2_1[i, "mean"],
      TwoEnemy2_2[i, "mean"],
      TwoEnemy2_3[i, "mean"],
      TwoEnemy2_4[i, "mean"],
      TwoEnemy2_5[i, "mean"],
      TwoEnemy2_6[i, "mean"],
      TwoEnemy2_7[i, "mean"],
      TwoEnemy2_8[i, "mean"],
      TwoEnemy2_9[i, "mean"],
      TwoEnemy2_10[i, "mean"] 
    )) 
  
  TwoEnemy2_MeanStd[i, "stdMean"] = 
    sd ( c(
      TwoEnemy2_1[i, "mean"],
      TwoEnemy2_2[i, "mean"],
      TwoEnemy2_3[i, "mean"],
      TwoEnemy2_4[i, "mean"],
      TwoEnemy2_5[i, "mean"],
      TwoEnemy2_6[i, "mean"],
      TwoEnemy2_7[i, "mean"],
      TwoEnemy2_8[i, "mean"],
      TwoEnemy2_9[i, "mean"],
      TwoEnemy2_10[i, "mean"]
    ))
  
  
}


for (i in 1:11) {
  TwoEnemy2_MeanStd[i, "best"] = 
    mean (c(
      TwoEnemy2_1[i, "best"],
      TwoEnemy2_2[i, "best"],
      TwoEnemy2_3[i, "best"],
      TwoEnemy2_4[i, "best"],
      TwoEnemy2_5[i, "best"],
      TwoEnemy2_6[i, "best"],
      TwoEnemy2_7[i, "best"],
      TwoEnemy2_8[i, "best"],
      TwoEnemy2_9[i, "best"],
      TwoEnemy2_10[i, "best"] 
    )) 
  
  TwoEnemy2_MeanStd[i, "stdBest"] = 
    sd ( c(
      TwoEnemy2_1[i, "best"],
      TwoEnemy2_2[i, "best"],
      TwoEnemy2_3[i, "best"],
      TwoEnemy2_4[i, "best"],
      TwoEnemy2_5[i, "best"],
      TwoEnemy2_6[i, "best"],
      TwoEnemy2_7[i, "best"],
      TwoEnemy2_8[i, "best"],
      TwoEnemy2_9[i, "best"],
      TwoEnemy2_10[i, "best"] 
    )) }

TwoEnemy2_MeanStd

#install.packages("ggplot2")
#library("ggplot2")

#TwoEnemy2_MeanStd = as.data.frame(TwoEnemy2_MeanStd)
#typeof(TwoEnemy2_MeanStd)

x = 0:10
y1_2PE2 = TwoEnemy2_MeanStd[,"mean"]
y2_2PE2 = TwoEnemy2_MeanStd[,"best"]
sd1_2PE2 = TwoEnemy2_MeanStd[,"stdMean"]
sd2_2PE2 = TwoEnemy2_MeanStd[,"stdBest"]

#plot(x = x, y1 = TwoEnemy2_MeanStd[,"mean"], type = "l", main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness")

#qplot(x = x, y = y1_2PE2, main = "Two point crossover Enemy 2", xlab = "generations", ylab = "fitness") +
#  geom_errorbar(aes(x=x, ymin=y1_2PE2-sd1_2PE2, ymax=y1_2PE2+sd1_2PE2), width=0.25, colour = "red") + geom_line(colour = "red") + 
#  geom_line(aes(x = x, y = TwoEnemy2_MeanStd[,"best"]), colour = "green") + scale_x_continuous(breaks = seq(0, 10, 1)) +
#  geom_errorbar(aes(x=x, ymin=y2_2PE2-sd2_2PE2 , ymax=y2_2PE2+sd2_2PE2 ), width=0.25, colour = "green") +
#  ylim(-5,100)

TwoEnemy2_MeanStd = as.data.frame(TwoEnemy2_MeanStd)

ggplot() + 
  geom_line(data=TwoEnemy2_MeanStd,aes(y=y1_2PE2, x= x,colour="green")) +
  geom_line(data=TwoEnemy2_MeanStd,aes(y=y2_2PE2,x= x,colour= "red")) +
  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
  geom_errorbar(aes(x=x, ymin=y1_2PE2-sd1_2PE2, ymax=y1_2PE2+sd1_2PE2), width=0.25, colour = "red") +
  geom_errorbar(aes(x=x, ymin=y2_2PE2-sd2_2PE2, ymax=y2_2PE2+sd2_2PE2), width=0.25, colour = "turquoise3") +
  scale_x_continuous(breaks = seq(0, 10, 1)) + ylim(-5,100) + 
  xlab(label = "generations") + ylab("fitness") + ggtitle("Two point crossover Enemy 2")










