getwd()
setwd('~')
setwd("Downloads/evoman_framework-master/deap_specialist_cxOnePoint/")
setwd("Enemy3/")

OneEnemy3_1 = read.csv("1/results.csv")
OneEnemy3_2 = read.csv("2/results.csv")
OneEnemy3_3 = read.csv("3/results.csv")
OneEnemy3_4 = read.csv("4/results.csv")
OneEnemy3_5 = read.csv("5/results.csv")
OneEnemy3_6 = read.csv("6/results.csv")
OneEnemy3_7 = read.csv("7/results.csv")
OneEnemy3_8 = read.csv("8/results.csv")
OneEnemy3_9 = read.csv("9/results.csv")
OneEnemy3_10 = read.csv("10/results.csv")

OneEnemy3_MeanStd = matrix(nrow = 11, ncol =  4)
colnames(OneEnemy3_MeanStd) = c("mean", "stdMean", "best", "stdBest")


for (i in 1:11) {
  OneEnemy3_MeanStd[i, "mean"] = 
    mean (c(
      OneEnemy3_1[i, "mean"],
      OneEnemy3_2[i, "mean"],
      OneEnemy3_3[i, "mean"],
      OneEnemy3_4[i, "mean"],
      OneEnemy3_5[i, "mean"],
      OneEnemy3_6[i, "mean"],
      OneEnemy3_7[i, "mean"],
      OneEnemy3_8[i, "mean"],
      OneEnemy3_9[i, "mean"],
      OneEnemy3_10[i, "mean"] 
    )) 
  
  OneEnemy3_MeanStd[i, "stdMean"] = 
    sd ( c(
      OneEnemy3_1[i, "mean"],
      OneEnemy3_2[i, "mean"],
      OneEnemy3_3[i, "mean"],
      OneEnemy3_4[i, "mean"],
      OneEnemy3_5[i, "mean"],
      OneEnemy3_6[i, "mean"],
      OneEnemy3_7[i, "mean"],
      OneEnemy3_8[i, "mean"],
      OneEnemy3_9[i, "mean"],
      OneEnemy3_10[i, "mean"]
    ))
  
  
}


for (i in 1:11) {
  OneEnemy3_MeanStd[i, "best"] = 
    mean (c(
      OneEnemy3_1[i, "best"],
      OneEnemy3_2[i, "best"],
      OneEnemy3_3[i, "best"],
      OneEnemy3_4[i, "best"],
      OneEnemy3_5[i, "best"],
      OneEnemy3_6[i, "best"],
      OneEnemy3_7[i, "best"],
      OneEnemy3_8[i, "best"],
      OneEnemy3_9[i, "best"],
      OneEnemy3_10[i, "best"] 
    )) 
  
  OneEnemy3_MeanStd[i, "stdBest"] = 
    sd ( c(
      OneEnemy3_1[i, "best"],
      OneEnemy3_2[i, "best"],
      OneEnemy3_3[i, "best"],
      OneEnemy3_4[i, "best"],
      OneEnemy3_5[i, "best"],
      OneEnemy3_6[i, "best"],
      OneEnemy3_7[i, "best"],
      OneEnemy3_8[i, "best"],
      OneEnemy3_9[i, "best"],
      OneEnemy3_10[i, "best"] 
    )) }

OneEnemy3_MeanStd

#install.packages("ggplot2")
#library("ggplot2")

#OneEnemy3_MeanStd = as.data.frame(OneEnemy3_MeanStd)
#typeof(OneEnemy3_MeanStd)

x = 0:10
y1_1PE3 = OneEnemy3_MeanStd[,"mean"]
y2_1PE3 = OneEnemy3_MeanStd[,"best"]
sd1_1PE3 = OneEnemy3_MeanStd[,"stdMean"]
sd2_1PE3 = OneEnemy3_MeanStd[,"stdBest"]

#plot(x = x, y = OneEnemy3_MeanStd[,"mean"], type = "l", main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness")

#qplot(x = x, y = y1_1PE3, main = "One point crossover Enemy 3", xlab = "generations", ylab = "fitness") +
#  geom_errorbar(aes(x=x, ymin=y1_1PE3-sd1_1PE3, ymax=y1_1PE3+sd1_1PE3), width=0.25, colour = "red") + geom_line(colour = "red") + 
#  geom_line(aes(x = x, y = OneEnemy3_MeanStd[,"best"]), colour = "green") + scale_x_continuous(breaks = seq(0, 10, 1)) +
#  geom_errorbar(aes(x=x, ymin=y2_1PE3-sd2_1PE3, ymax=y2_1PE3+sd2_1PE3), width=0.25, colour = "green") +
#  ylim(-5,100)

OneEnemy3_MeanStd = as.data.frame(OneEnemy3_MeanStd)

ggplot() + 
  geom_line(data=OneEnemy3_MeanStd,aes(y=y1_1PE3, x= x,colour="green")) +
  geom_line(data=OneEnemy3_MeanStd,aes(y=y2_1PE3,x= x,colour= "red")) +
  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
  geom_errorbar(aes(x=x, ymin=y1_1PE3-sd1_1PE3, ymax=y1_1PE3+sd1_1PE3), width=0.25, colour = "red") +
  geom_errorbar(aes(x=x, ymin=y2_1PE3-sd2_1PE3, ymax=y2_1PE3+sd2_1PE3), width=0.25, colour = "turquoise3") +
  scale_x_continuous(breaks = seq(0, 10, 1)) + ylim(-5,100) + 
  xlab(label = "generations") + ylab("fitness") + ggtitle("One point crossover Enemy 3")









