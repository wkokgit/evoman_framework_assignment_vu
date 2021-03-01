getwd()
setwd('~')
setwd("Downloads/evoman_framework-master/deap_specialist_cxOnePoint/")
setwd("Enemy1/")

OneEnemy1_1 = read.csv("1/results.csv")
OneEnemy1_2 = read.csv("2/results.csv")
OneEnemy1_3 = read.csv("3/results.csv")
OneEnemy1_4 = read.csv("4/results.csv")
OneEnemy1_5 = read.csv("5/results.csv")
OneEnemy1_6 = read.csv("6/results.csv")
OneEnemy1_7 = read.csv("7/results.csv")
OneEnemy1_8 = read.csv("8/results.csv")
OneEnemy1_9 = read.csv("9/results.csv")
OneEnemy1_10 = read.csv("10/results.csv")

OneEnemy1_MeanStd = matrix(nrow = 11, ncol =  4)
colnames(OneEnemy1_MeanStd) = c("mean", "stdMean", "best", "stdBest")

for (i in 1:11) {
  OneEnemy1_MeanStd[i, "mean"] = 
    mean (c(
      OneEnemy1_1[i, "mean"],
      OneEnemy1_2[i, "mean"],
      OneEnemy1_3[i, "mean"],
      OneEnemy1_4[i, "mean"],
      OneEnemy1_5[i, "mean"],
      OneEnemy1_6[i, "mean"],
      OneEnemy1_7[i, "mean"],
      OneEnemy1_8[i, "mean"],
      OneEnemy1_9[i, "mean"],
      OneEnemy1_10[i, "mean"]

    )) 
  
  OneEnemy1_MeanStd[i, "stdMean"] = 
    sd ( c(
      OneEnemy1_1[i, "mean"],
      OneEnemy1_2[i, "mean"],
      OneEnemy1_3[i, "mean"],
      OneEnemy1_4[i, "mean"],
      OneEnemy1_5[i, "mean"],
      OneEnemy1_6[i, "mean"],
      OneEnemy1_7[i, "mean"],
      OneEnemy1_8[i, "mean"],
      OneEnemy1_9[i, "mean"],
      OneEnemy1_10[i, "mean"]
    ))
  
  
}

for (i in 1:11) {
  OneEnemy1_MeanStd[i, "best"] = 
    mean (c(
      OneEnemy1_1[i, "best"],
      OneEnemy1_2[i, "best"],
      OneEnemy1_3[i, "best"],
      OneEnemy1_4[i, "best"],
      OneEnemy1_5[i, "best"],
      OneEnemy1_6[i, "best"],
      OneEnemy1_7[i, "best"],
      OneEnemy1_8[i, "best"],
      OneEnemy1_9[i, "best"],
      OneEnemy1_10[i, "best"]
    )) 
  
  OneEnemy1_MeanStd[i, "stdBest"] = 
    sd ( c(
      OneEnemy1_1[i, "best"],
      OneEnemy1_2[i, "best"],
      OneEnemy1_3[i, "best"],
      OneEnemy1_4[i, "best"],
      OneEnemy1_5[i, "best"],
      OneEnemy1_6[i, "best"],
      OneEnemy1_7[i, "best"],
      OneEnemy1_8[i, "best"],
      OneEnemy1_9[i, "best"],
      OneEnemy1_10[i, "best"]
    )) }

OneEnemy1_MeanStd

######################



#install.packages("ggplot2")
#library("ggplot2")

#OneEnemy1_MeanStd = as.data.frame(OneEnemy1_MeanStd)
#typeof(OneEnemy1_MeanStd)

x = 0:10
y1_1PE1 = OneEnemy1_MeanStd[,"mean"]
y2_1PE1 = OneEnemy1_MeanStd[,"best"]
sd1_1PE1 = OneEnemy1_MeanStd[,"stdMean"]
sd2_1PE1 = OneEnemy1_MeanStd[,"stdBest"]

#plot(x = x, y1 = OneEnemy1_MeanStd[,"mean"], type = "l", main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness")

#qplot(x = x, y = y1_1PE1, main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness") +
#  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") + geom_line(colour = "red") + 
#  geom_line(aes(x = x, y = OneEnemy1_MeanStd[,"best"]), colour = "green") + scale_x_continuous(breaks = seq(0, 10, 1)) + 
#  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "green") +
#  ylim(-5,100)
  
                     
OneEnemy1_MeanStd = as.data.frame(OneEnemy1_MeanStd)

ggplot() + 
  geom_line(data=OneEnemy1_MeanStd,aes(y=y1_1PE1, x= x,colour="green")) +
  geom_line(data=OneEnemy1_MeanStd,aes(y=y2_1PE1,x= x,colour= "red")) +
  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") +
  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "turquoise3") +
  scale_x_continuous(breaks = seq(0, 10, 1)) + ylim(-5,100) + 
  xlab(label = "generations") + ylab("fitness") + ggtitle("One point crossover Enemy 1")
  





