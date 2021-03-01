setwd('~/Downloads/evoman_framework-master/deap_specialist_run/')

BestValues = matrix(nrow = 10, ncol =  6)
colnames(BestValues) = c("X1E1","X2E1", "X1E2", "X2E2", "X1E3","X2E3")

OneE1_1 = read.table( "OnePoint/Enemy1/1/individual_gain_mean.txt",  sep = ";")
OneE1_2 = read.table( "OnePoint/Enemy1/2/individual_gain_mean.txt",  sep = ";")
OneE1_3 = read.table( "OnePoint/Enemy1/3/individual_gain_mean.txt",  sep = ";")
OneE1_4 = read.table( "OnePoint/Enemy1/4/individual_gain_mean.txt",  sep = ";")
OneE1_5 = read.table( "OnePoint/Enemy1/5/individual_gain_mean.txt",  sep = ";")
OneE1_6 = read.table( "OnePoint/Enemy1/6/individual_gain_mean.txt",  sep = ";")
OneE1_7 = read.table( "OnePoint/Enemy1/7/individual_gain_mean.txt",  sep = ";")
OneE1_8 = read.table( "OnePoint/Enemy1/8/individual_gain_mean.txt",  sep = ";")
OneE1_9 = read.table( "OnePoint/Enemy1/9/individual_gain_mean.txt",  sep = ";")
OneE1_10 = read.table( "OnePoint/Enemy1/10/individual_gain_mean.txt",  sep = ";")

BestValues[1,"X1E1"] = OneE1_1[,2]
BestValues[2,"X1E1"] = OneE1_2[,2]
BestValues[3,"X1E1"] = OneE1_3[,2]
BestValues[4,"X1E1"] = OneE1_4[,2]
BestValues[5,"X1E1"] = OneE1_5[,2]
BestValues[6,"X1E1"] = OneE1_6[,2]
BestValues[7,"X1E1"] = OneE1_7[,2]
BestValues[8,"X1E1"] = OneE1_8[,2]
BestValues[9,"X1E1"] = OneE1_9[,2]
BestValues[10,"X1E1"] = OneE1_10[,2]
################################################

OneE2_1 = read.table( "OnePoint/Enemy2/1/individual_gain_mean.txt",  sep = ";")
OneE2_2 = read.table( "OnePoint/Enemy2/2/individual_gain_mean.txt",  sep = ";")
OneE2_3 = read.table( "OnePoint/Enemy2/3/individual_gain_mean.txt",  sep = ";")
OneE2_4 = read.table( "OnePoint/Enemy2/4/individual_gain_mean.txt",  sep = ";")
OneE2_5 = read.table( "OnePoint/Enemy2/5/individual_gain_mean.txt",  sep = ";")
OneE2_6 = read.table( "OnePoint/Enemy2/6/individual_gain_mean.txt",  sep = ";")
OneE2_7 = read.table( "OnePoint/Enemy2/7/individual_gain_mean.txt",  sep = ";")
OneE2_8 = read.table( "OnePoint/Enemy2/8/individual_gain_mean.txt",  sep = ";")
OneE2_9 = read.table( "OnePoint/Enemy2/9/individual_gain_mean.txt",  sep = ";")
OneE2_10 = read.table( "OnePoint/Enemy2/10/individual_gain_mean.txt",  sep = ";")

BestValues[1,"X1E2"] = OneE2_1[,2]
BestValues[2,"X1E2"] = OneE2_2[,2]
BestValues[3,"X1E2"] = OneE2_3[,2]
BestValues[4,"X1E2"] = OneE2_4[,2]
BestValues[5,"X1E2"] = OneE2_5[,2]
BestValues[6,"X1E2"] = OneE2_6[,2]
BestValues[7,"X1E2"] = OneE2_7[,2]
BestValues[8,"X1E2"] = OneE2_8[,2]
BestValues[9,"X1E2"] = OneE2_9[,2]
BestValues[10,"X1E2"] = OneE2_10[,2]
################################################

OneE3_1 = read.table( "OnePoint/Enemy3/1/individual_gain_mean.txt",  sep = ";")
OneE3_2 = read.table( "OnePoint/Enemy3/2/individual_gain_mean.txt",  sep = ";")
OneE3_3 = read.table( "OnePoint/Enemy3/3/individual_gain_mean.txt",  sep = ";")
OneE3_4 = read.table( "OnePoint/Enemy3/4/individual_gain_mean.txt",  sep = ";")
OneE3_5 = read.table( "OnePoint/Enemy3/5/individual_gain_mean.txt",  sep = ";")
OneE3_6 = read.table( "OnePoint/Enemy3/6/individual_gain_mean.txt",  sep = ";")
OneE3_7 = read.table( "OnePoint/Enemy3/7/individual_gain_mean.txt",  sep = ";")
OneE3_8 = read.table( "OnePoint/Enemy3/8/individual_gain_mean.txt",  sep = ";")
OneE3_9 = read.table( "OnePoint/Enemy3/9/individual_gain_mean.txt",  sep = ";")
OneE3_10 = read.table( "OnePoint/Enemy3/10/individual_gain_mean.txt",  sep = ";")

BestValues[1,"X1E3"] = OneE3_1[,2]
BestValues[2,"X1E3"] = OneE3_2[,2]
BestValues[3,"X1E3"] = OneE3_3[,2]
BestValues[4,"X1E3"] = OneE3_4[,2]
BestValues[5,"X1E3"] = OneE3_5[,2]
BestValues[6,"X1E3"] = OneE3_6[,2]
BestValues[7,"X1E3"] = OneE3_7[,2]
BestValues[8,"X1E3"] = OneE3_8[,2]
BestValues[9,"X1E3"] = OneE3_9[,2]
BestValues[10,"X1E3"] = OneE3_10[,2]
################################################
TwoE1_1 = read.table( "TwoPoint/Enemy1/1/individual_gain_mean.txt",  sep = ";")
TwoE1_2 = read.table( "TwoPoint/Enemy1/2/individual_gain_mean.txt",  sep = ";")
TwoE1_3 = read.table( "TwoPoint/Enemy1/3/individual_gain_mean.txt",  sep = ";")
TwoE1_4 = read.table( "TwoPoint/Enemy1/4/individual_gain_mean.txt",  sep = ";")
TwoE1_5 = read.table( "TwoPoint/Enemy1/5/individual_gain_mean.txt",  sep = ";")
TwoE1_6 = read.table( "TwoPoint/Enemy1/6/individual_gain_mean.txt",  sep = ";")
TwoE1_7 = read.table( "TwoPoint/Enemy1/7/individual_gain_mean.txt",  sep = ";")
TwoE1_8 = read.table( "TwoPoint/Enemy1/8/individual_gain_mean.txt",  sep = ";")
TwoE1_9 = read.table( "TwoPoint/Enemy1/9/individual_gain_mean.txt",  sep = ";")
TwoE1_10 = read.table( "TwoPoint/Enemy1/10/individual_gain_mean.txt",  sep = ";")

BestValues[1,"X2E1"] = TwoE1_1[,2]
BestValues[2,"X2E1"] = TwoE1_2[,2]
BestValues[3,"X2E1"] = TwoE1_3[,2]
BestValues[4,"X2E1"] = TwoE1_4[,2]
BestValues[5,"X2E1"] = TwoE1_5[,2]
BestValues[6,"X2E1"] = TwoE1_6[,2]
BestValues[7,"X2E1"] = TwoE1_7[,2]
BestValues[8,"X2E1"] = TwoE1_8[,2]
BestValues[9,"X2E1"] = TwoE1_9[,2]
BestValues[10,"X2E1"] = TwoE1_10[,2]

################################################

TwoE2_1 = read.table( "TwoPoint/Enemy2/1/individual_gain_mean.txt",  sep = ";")
TwoE2_2 = read.table( "TwoPoint/Enemy2/2/individual_gain_mean.txt",  sep = ";")
TwoE2_3 = read.table( "TwoPoint/Enemy2/3/individual_gain_mean.txt",  sep = ";")
TwoE2_4 = read.table( "TwoPoint/Enemy2/4/individual_gain_mean.txt",  sep = ";")
TwoE2_5 = read.table( "TwoPoint/Enemy2/5/individual_gain_mean.txt",  sep = ";")
TwoE2_6 = read.table( "TwoPoint/Enemy2/6/individual_gain_mean.txt",  sep = ";")
TwoE2_7 = read.table( "TwoPoint/Enemy2/7/individual_gain_mean.txt",  sep = ";")
TwoE2_8 = read.table( "TwoPoint/Enemy2/8/individual_gain_mean.txt",  sep = ";")
TwoE2_9 = read.table( "TwoPoint/Enemy2/9/individual_gain_mean.txt",  sep = ";")
TwoE2_10 = read.table( "TwoPoint/Enemy2/10/individual_gain_mean.txt",  sep = ";")

BestValues[1,"X2E2"] = TwoE2_1[,2]
BestValues[2,"X2E2"] = TwoE2_2[,2]
BestValues[3,"X2E2"] = TwoE2_3[,2]
BestValues[4,"X2E2"] = TwoE2_4[,2]
BestValues[5,"X2E2"] = TwoE2_5[,2]
BestValues[6,"X2E2"] = TwoE2_6[,2]
BestValues[7,"X2E2"] = TwoE2_7[,2]
BestValues[8,"X2E2"] = TwoE2_8[,2]
BestValues[9,"X2E2"] = TwoE2_9[,2]
BestValues[10,"X2E2"] = TwoE2_10[,2]

################################################

TwoE3_1 = read.table( "TwoPoint/Enemy3/1/individual_gain_mean.txt",  sep = ";")
TwoE3_2 = read.table( "TwoPoint/Enemy3/2/individual_gain_mean.txt",  sep = ";")
TwoE3_3 = read.table( "TwoPoint/Enemy3/3/individual_gain_mean.txt",  sep = ";")
TwoE3_4 = read.table( "TwoPoint/Enemy3/4/individual_gain_mean.txt",  sep = ";")
TwoE3_5 = read.table( "TwoPoint/Enemy3/5/individual_gain_mean.txt",  sep = ";")
TwoE3_6 = read.table( "TwoPoint/Enemy3/6/individual_gain_mean.txt",  sep = ";")
TwoE3_7 = read.table( "TwoPoint/Enemy3/7/individual_gain_mean.txt",  sep = ";")
TwoE3_8 = read.table( "TwoPoint/Enemy3/8/individual_gain_mean.txt",  sep = ";")
TwoE3_9 = read.table( "TwoPoint/Enemy3/9/individual_gain_mean.txt",  sep = ";")
TwoE3_10 = read.table( "TwoPoint/Enemy3/10/individual_gain_mean.txt",  sep = ";")

BestValues[1,"X2E3"] = TwoE3_1[,2]
BestValues[2,"X2E3"] = TwoE3_2[,2]
BestValues[3,"X2E3"] = TwoE3_3[,2]
BestValues[4,"X2E3"] = TwoE3_4[,2]
BestValues[5,"X2E3"] = TwoE3_5[,2]
BestValues[6,"X2E3"] = TwoE3_6[,2]
BestValues[7,"X2E3"] = TwoE3_7[,2]
BestValues[8,"X2E3"] = TwoE3_8[,2]
BestValues[9,"X2E3"] = TwoE3_9[,2]
BestValues[10,"X2E3"] = TwoE3_10[,2]
###########################################

boxplot(x = BestValues, col = (c("slateblue2", "yellow2")), ylab = "Individual gain", names = c("1", "1", "2", "2", "3", "3"),
        xlab = "Enemy") 
legend("topright", inset=.02, title="EA",
       c("One point", "Two point"), fill= unique(c("slateblue2", "yellow2")), horiz=TRUE, cex=0.8)

typeof(BestValues) #double 
BestValues = as.data.frame(BestValues)

x1 = BestValues$X1E1
x2 = BestValues$X1E2
x3 = BestValues$X1E3
y1 = BestValues$X2E1
y2 = BestValues$X2E2
y3 = BestValues$X2E3

t.test(x1, y1)
t.test(x2, y2)
t.test(x3, y3)

#par(mfrow=c(3,2)) 
#hist(BestValues$X1E1, breaks = 3)
#hist(BestValues$X1E2, breaks = 3)
#hist(BestValues$X1E3, breaks = 3)
#hist(BestValues$X2E1, breaks = 3)
#hist(BestValues$X2E2, breaks = 3)
#hist(BestValues$X2E3, breaks = 3)


