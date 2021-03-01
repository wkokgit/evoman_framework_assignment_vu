getwd()
setwd('~')
setwd("Downloads/evoman_framework-master/deap_generalist_cxOnePoint/")
setwd("group13/")

OneEnemy13_1 = read.csv("1/results.csv")
OneEnemy13_2 = read.csv("2/results.csv")
OneEnemy13_3 = read.csv("3/results.csv")
OneEnemy13_4 = read.csv("4/results.csv")
OneEnemy13_5 = read.csv("5/results.csv")
OneEnemy13_6 = read.csv("6/results.csv")
OneEnemy13_7 = read.csv("7/results.csv")
OneEnemy13_8 = read.csv("8/results.csv")
OneEnemy13_9 = read.csv("9/results.csv")
OneEnemy13_10 = read.csv("10/results.csv")

colnames(OneEnemy13_1) <- c("best", "mean", "STD")
colnames(OneEnemy13_2) <- c("best", "mean", "STD") 
colnames(OneEnemy13_3) <- c("best", "mean", "STD")
colnames(OneEnemy13_4) <- c("best", "mean", "STD")
colnames(OneEnemy13_5) <- c("best", "mean", "STD")
colnames(OneEnemy13_6) <- c("best", "mean", "STD")
colnames(OneEnemy13_7) <- c("best", "mean", "STD")
colnames(OneEnemy13_8) <- c("best", "mean", "STD")
colnames(OneEnemy13_9) <- c("best", "mean", "STD")
colnames(OneEnemy13_10) <- c("best", "mean", "STD")


OneEnemy13_MeanStd = matrix(nrow = 16, ncol =  4)
colnames(OneEnemy13_MeanStd) = c("mean", "stdMean", "best", "stdBest")

for (i in 1:16) {
  OneEnemy13_MeanStd[i, "mean"] = 
    mean (c(
      OneEnemy13_1[i, "mean"],
      OneEnemy13_2[i, "mean"],
      OneEnemy13_3[i, "mean"],
      OneEnemy13_4[i, "mean"],
      OneEnemy13_5[i, "mean"],
      OneEnemy13_6[i, "mean"],
      OneEnemy13_7[i, "mean"],
      OneEnemy13_8[i, "mean"],
      OneEnemy13_9[i, "mean"],
      OneEnemy13_10[i, "mean"]

    )) 
  
  OneEnemy13_MeanStd[i, "stdMean"] = 
    sd ( c(
      OneEnemy13_1[i, "mean"],
      OneEnemy13_2[i, "mean"],
      OneEnemy13_3[i, "mean"],
      OneEnemy13_4[i, "mean"],
      OneEnemy13_5[i, "mean"],
      OneEnemy13_6[i, "mean"],
      OneEnemy13_7[i, "mean"],
      OneEnemy13_8[i, "mean"],
      OneEnemy13_9[i, "mean"],
      OneEnemy13_10[i, "mean"]
    ))
  
  
}

for (i in 1:16) {
  OneEnemy13_MeanStd[i, "best"] = 
    mean (c(
      OneEnemy13_1[i, "best"],
      OneEnemy13_2[i, "best"],
      OneEnemy13_3[i, "best"],
      OneEnemy13_4[i, "best"],
      OneEnemy13_5[i, "best"],
      OneEnemy13_6[i, "best"],
      OneEnemy13_7[i, "best"],
      OneEnemy13_8[i, "best"],
      OneEnemy13_9[i, "best"],
      OneEnemy13_10[i, "best"]
    )) 
  
  OneEnemy13_MeanStd[i, "stdBest"] = 
    sd ( c(
      OneEnemy13_1[i, "best"],
      OneEnemy13_2[i, "best"],
      OneEnemy13_3[i, "best"],
      OneEnemy13_4[i, "best"],
      OneEnemy13_5[i, "best"],
      OneEnemy13_6[i, "best"],
      OneEnemy13_7[i, "best"],
      OneEnemy13_8[i, "best"],
      OneEnemy13_9[i, "best"],
      OneEnemy13_10[i, "best"]
    )) }

OneEnemy13_MeanStd

######################



#install.packages("ggplot2")
#library("ggplot2")

#OneEnemy13_MeanStd = as.data.frame(OneEnemy13_MeanStd)
#typeof(OneEnemy13_MeanStd)

x = 0:15
y1_1PE1 = OneEnemy13_MeanStd[,"mean"]
y2_1PE1 = OneEnemy13_MeanStd[,"best"]
sd1_1PE1 = OneEnemy13_MeanStd[,"stdMean"]
sd2_1PE1 = OneEnemy13_MeanStd[,"stdBest"]

#plot(x = x, y1 = OneEnemy13_MeanStd[,"mean"], type = "l", main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness")

#qplot(x = x, y = y1_1PE1, main = "One point crossover Enemy 1", xlab = "generations", ylab = "fitness") +
#  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") + geom_line(colour = "red") + 
#  geom_line(aes(x = x, y = OneEnemy13_MeanStd[,"best"]), colour = "green") + scale_x_continuous(breaks = seq(0, 10, 1)) + 
#  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "green") +
#  ylim(-5,100)
  
                     
OneEnemy13_MeanStd = as.data.frame(OneEnemy13_MeanStd)

#ggplot() + 
#  geom_line(data=OneEnemy13_MeanStd,aes(y=y1_1PE1, x= x,colour="green")) +
#  geom_line(data=OneEnemy13_MeanStd,aes(y=y2_1PE1,x= x,colour= "red")) +
#  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
#  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") +
#  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "turquoise3") +
#  scale_x_continuous(breaks = seq(0, 10, 1)) + ylim(-5,100) + 
#  xlab(label = "generations") + ylab("fitness") + ggtitle("One point crossover Enemy 1")
  

ggplot() + 
  geom_line(data=OneEnemy13_MeanStd,aes(y=y1_1PE1, x= x,colour="green")) +
  geom_line(data=OneEnemy13_MeanStd,aes(y=y2_1PE1,x= x,colour= "red")) +
  scale_color_discrete(name = "Legend", labels = c("Mean", "Max")) + 
  geom_errorbar(aes(x=x, ymin=y1_1PE1-sd1_1PE1, ymax=y1_1PE1+sd1_1PE1), width=0.25, colour = "red") +
  geom_errorbar(aes(x=x, ymin=y2_1PE1-sd2_1PE1, ymax=y2_1PE1+sd2_1PE1), width=0.25, colour = "turquoise3") +
  scale_x_continuous(breaks = seq(0, 15, 1)) + ylim(-95,20) +
  xlab(label = "generations") + ylab("fitness") + ggtitle("One point crossover Enemy 1&3") +
  theme(text = element_text(size=24.5))



