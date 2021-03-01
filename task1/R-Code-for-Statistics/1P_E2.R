getwd()
setwd('~')
setwd("Downloads/evoman_framework-master/deap_specialist_cxOnePoint/")
setwd("Enemy2/")

#par(mfrow=c(6,2)) 
#par(mfcol = c(2, 2))

OneEnemy2_1 = read.csv("1/results.csv")
OneEnemy2_2 = read.csv("2/results.csv")
OneEnemy2_3 = read.csv("3/results.csv")
OneEnemy2_4 = read.csv("4/results.csv")
OneEnemy2_5 = read.csv("5/results.csv")
OneEnemy2_6 = read.csv("6/results.csv")
OneEnemy2_7 = read.csv("7/results.csv")
OneEnemy2_8 = read.csv("8/results.csv")
OneEnemy2_9 = read.csv("9/results.csv")
OneEnemy2_10 = read.csv("10/results.csv")

OneEnemy2_MeanStd = matrix(nrow = 11, ncol =  4)
colnames(OneEnemy2_MeanStd) = c("mean", "stdMean", "best", "stdBest")


for (i in 1:11) {
  OneEnemy2_MeanStd[i, "mean"] = 
    mean (c(
      OneEnemy2_1[i, "mean"],
      OneEnemy2_2[i, "mean"],
      OneEnemy2_3[i, "mean"],
      OneEnemy2_4[i, "mean"],
      OneEnemy2_5[i, "mean"],
      OneEnemy2_6[i, "mean"],
      OneEnemy2_7[i, "mean"],
      OneEnemy2_8[i, "mean"],
      OneEnemy2_9[i, "mean"],
      OneEnemy2_10[i, "mean"] 
    )) 
  
  OneEnemy2_MeanStd[i, "stdMean"] = 
    sd ( c(
      OneEnemy2_1[i, "mean"],
      OneEnemy2_2[i, "mean"],
      OneEnemy2_3[i, "mean"],
      OneEnemy2_4[i, "mean"],
      OneEnemy2_5[i, "mean"],
      OneEnemy2_6[i, "mean"],
      OneEnemy2_7[i, "mean"],
      OneEnemy2_8[i, "mean"],
      OneEnemy2_9[i, "mean"],
      OneEnemy2_10[i, "mean"]
    ))
  
  
}


for (i in 1:11) {
  OneEnemy2_MeanStd[i, "best"] = 
    mean (c(
      OneEnemy2_1[i, "best"],
      OneEnemy2_2[i, "best"],
      OneEnemy2_3[i, "best"],
      OneEnemy2_4[i, "best"],
      OneEnemy2_5[i, "best"],
      OneEnemy2_6[i, "best"],
      OneEnemy2_7[i, "best"],
      OneEnemy2_8[i, "best"],
      OneEnemy2_9[i, "best"],
      OneEnemy2_10[i, "best"] 
    )) 
  
  OneEnemy2_MeanStd[i, "stdBest"] = 
    sd ( c(
      OneEnemy2_1[i, "best"],
      OneEnemy2_2[i, "best"],
      OneEnemy2_3[i, "best"],
      OneEnemy2_4[i, "best"],
      OneEnemy2_5[i, "best"],
      OneEnemy2_6[i, "best"],
      OneEnemy2_7[i, "best"],
      OneEnemy2_8[i, "best"],
      OneEnemy2_9[i, "best"],
      OneEnemy2_10[i, "best"] 
    )) }

OneEnemy2_MeanStd

#install.packages("ggplot2")
#library("ggplot2")

#OneEnemy2_MeanStd = as.data.frame(OneEnemy2_MeanStd)
#typeof(OneEnemy2_MeanStd)

x = 0:10
y1_1PE2 = OneEnemy2_MeanStd[,"mean"]
y2_1PE2 = OneEnemy2_MeanStd[,"best"]
sd1_1PE2 = OneEnemy2_MeanStd[,"stdMean"]
sd2_1PE2 = OneEnemy2_MeanStd[,"stdBest"]

#plot(x = x, y = OneEnemy2_MeanStd[,"mean"], type = "l", main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness")

#qplot(x = x, y = y1_1PE2, main = "One point crossover Enemy 2", xlab = "generations", ylab = "fitness") +
#  geom_errorbar(aes(x=x, ymin=y1_1PE2-sd1_1PE2, ymax=y1_1PE2+sd1_1PE2), width=0.25, colour = "red") + geom_line(colour = "red") + 
#  geom_line(aes(x = x, y = OneEnemy2_MeanStd[,"best"]), colour = "green") + scale_x_continuous(breaks = seq(0, 10, 1)) +
#  geom_errorbar(aes(x=x, ymin=y2_1PE2-sd2_1PE2, ymax=y2_1PE2+sd2_1PE2), width=0.25, colour = "green") +
#  ylim(-5,100)


OneEnemy2_MeanStd = as.data.frame(OneEnemy2_MeanStd)

ggplot() + 
  geom_line(data=OneEnemy2_MeanStd,aes(y=y1_1PE2, x= x,colour="green")) +
  geom_line(data=OneEnemy2_MeanStd,aes(y=y2_1PE2,x= x,colour= "red")) +
  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
  geom_errorbar(aes(x=x, ymin=y1_1PE2-sd1_1PE2, ymax=y1_1PE2+sd1_1PE2), width=0.25, colour = "red") +
  geom_errorbar(aes(x=x, ymin=y2_1PE2-sd2_1PE2, ymax=y2_1PE2+sd2_1PE2), width=0.25, colour = "turquoise3") +
  scale_x_continuous(breaks = seq(0, 10, 1)) + ylim(-5,100) + 
  xlab(label = "generations") + ylab("fitness") + ggtitle("One point crossover Enemy 2")








