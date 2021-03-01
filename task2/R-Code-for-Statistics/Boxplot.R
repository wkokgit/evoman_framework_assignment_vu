setwd('~/Downloads/evoman_framework-master/deap_generalist_run/')
getwd()

BestValues = matrix(nrow = 10, ncol =  4)
colnames(BestValues) = c("X1E13","X2E13", "X1E78", "X2E78")

OneE13_E1_1 = read.table( "OnePoint/group13/1/1/individual_gain_mean.txt")
OneE13_E2_1 = read.table( "OnePoint/group13/1/2/individual_gain_mean.txt")
OneE13_E3_1 = read.table( "OnePoint/group13/1/3/individual_gain_mean.txt")
OneE13_E3_1 = read.table( "OnePoint/group13/1/4/individual_gain_mean.txt")
OneE13_E5_1 = read.table( "OnePoint/group13/1/5/individual_gain_mean.txt")
OneE13_E6_1 = read.table( "OnePoint/group13/1/6/individual_gain_mean.txt")
OneE13_E7_1 = read.table( "OnePoint/group13/1/7/individual_gain_mean.txt")
OneE13_E8_1 = read.table( "OnePoint/group13/1/8/individual_gain_mean.txt")

OneE13_1 = mean(c (OneE13_E1_1$V1, OneE13_E2_1$V1, OneE13_E3_1$V1, OneE13_E3_1$V1, OneE13_E5_1$V1, OneE13_E6_1$V1, OneE13_E7_1$V1, OneE13_E8_1$V1))

OneE13_E1_2 = read.table( "OnePoint/group13/2/1/individual_gain_mean.txt")
OneE13_E2_2 = read.table( "OnePoint/group13/2/2/individual_gain_mean.txt")
OneE13_E3_2 = read.table( "OnePoint/group13/2/3/individual_gain_mean.txt")
OneE13_E3_2 = read.table( "OnePoint/group13/2/4/individual_gain_mean.txt")
OneE13_E5_2 = read.table( "OnePoint/group13/2/5/individual_gain_mean.txt")
OneE13_E6_2 = read.table( "OnePoint/group13/2/6/individual_gain_mean.txt")
OneE13_E7_2 = read.table( "OnePoint/group13/2/7/individual_gain_mean.txt")
OneE13_E8_2 = read.table( "OnePoint/group13/2/8/individual_gain_mean.txt")

OneE13_2 = mean(c (OneE13_E1_2$V1, OneE13_E2_2$V1, OneE13_E3_2$V1, OneE13_E3_2$V1, OneE13_E5_2$V1, OneE13_E6_2$V1, OneE13_E7_2$V1, OneE13_E8_2$V1))

OneE13_E1_3 = read.table( "OnePoint/group13/3/1/individual_gain_mean.txt")
OneE13_E2_3 = read.table( "OnePoint/group13/3/2/individual_gain_mean.txt")
OneE13_E3_3 = read.table( "OnePoint/group13/3/3/individual_gain_mean.txt")
OneE13_E3_3 = read.table( "OnePoint/group13/3/4/individual_gain_mean.txt")
OneE13_E5_3 = read.table( "OnePoint/group13/3/5/individual_gain_mean.txt")
OneE13_E6_3 = read.table( "OnePoint/group13/3/6/individual_gain_mean.txt")
OneE13_E7_3 = read.table( "OnePoint/group13/3/7/individual_gain_mean.txt")
OneE13_E8_3 = read.table( "OnePoint/group13/3/8/individual_gain_mean.txt")

OneE13_3 = mean(c (OneE13_E1_3$V1, OneE13_E2_3$V1, OneE13_E3_3$V1, OneE13_E3_3$V1, OneE13_E5_3$V1, OneE13_E6_3$V1, OneE13_E7_3$V1, OneE13_E8_3$V1))

OneE13_E1_4 = read.table( "OnePoint/group13/4/1/individual_gain_mean.txt")
OneE13_E2_4 = read.table( "OnePoint/group13/4/2/individual_gain_mean.txt")
OneE13_E3_4 = read.table( "OnePoint/group13/4/3/individual_gain_mean.txt")
OneE13_E3_4 = read.table( "OnePoint/group13/4/4/individual_gain_mean.txt")
OneE13_E5_4 = read.table( "OnePoint/group13/4/5/individual_gain_mean.txt")
OneE13_E6_4 = read.table( "OnePoint/group13/4/6/individual_gain_mean.txt")
OneE13_E7_4 = read.table( "OnePoint/group13/4/7/individual_gain_mean.txt")
OneE13_E8_4 = read.table( "OnePoint/group13/4/8/individual_gain_mean.txt")

OneE13_4 = mean(c (OneE13_E1_4$V1, OneE13_E2_4$V1, OneE13_E3_4$V1, OneE13_E3_4$V1, OneE13_E5_4$V1, OneE13_E6_4$V1, OneE13_E7_4$V1, OneE13_E8_4$V1))

OneE13_E1_5 = read.table( "OnePoint/group13/5/1/individual_gain_mean.txt")
OneE13_E2_5 = read.table( "OnePoint/group13/5/2/individual_gain_mean.txt")
OneE13_E3_5 = read.table( "OnePoint/group13/5/3/individual_gain_mean.txt")
OneE13_E3_5 = read.table( "OnePoint/group13/5/4/individual_gain_mean.txt")
OneE13_E5_5 = read.table( "OnePoint/group13/5/5/individual_gain_mean.txt")
OneE13_E6_5 = read.table( "OnePoint/group13/5/6/individual_gain_mean.txt")
OneE13_E7_5 = read.table( "OnePoint/group13/5/7/individual_gain_mean.txt")
OneE13_E8_5 = read.table( "OnePoint/group13/5/8/individual_gain_mean.txt")

OneE13_5 = mean(c (OneE13_E1_5$V1, OneE13_E2_5$V1, OneE13_E3_5$V1, OneE13_E3_5$V1, OneE13_E5_5$V1, OneE13_E6_5$V1, OneE13_E7_5$V1, OneE13_E8_5$V1))

OneE13_E1_6 = read.table( "OnePoint/group13/6/1/individual_gain_mean.txt")
OneE13_E2_6 = read.table( "OnePoint/group13/6/2/individual_gain_mean.txt")
OneE13_E3_6 = read.table( "OnePoint/group13/6/3/individual_gain_mean.txt")
OneE13_E3_6 = read.table( "OnePoint/group13/6/4/individual_gain_mean.txt")
OneE13_E5_6 = read.table( "OnePoint/group13/6/5/individual_gain_mean.txt")
OneE13_E6_6 = read.table( "OnePoint/group13/6/6/individual_gain_mean.txt")
OneE13_E7_6 = read.table( "OnePoint/group13/6/7/individual_gain_mean.txt")
OneE13_E8_6 = read.table( "OnePoint/group13/6/8/individual_gain_mean.txt")

OneE13_6 = mean(c (OneE13_E1_6$V1, OneE13_E2_6$V1, OneE13_E3_6$V1, OneE13_E3_6$V1, OneE13_E5_6$V1, OneE13_E6_6$V1, OneE13_E7_6$V1, OneE13_E8_6$V1))

OneE13_E1_7 = read.table( "OnePoint/group13/7/1/individual_gain_mean.txt")
OneE13_E2_7 = read.table( "OnePoint/group13/7/2/individual_gain_mean.txt")
OneE13_E3_7 = read.table( "OnePoint/group13/7/3/individual_gain_mean.txt")
OneE13_E3_7 = read.table( "OnePoint/group13/7/4/individual_gain_mean.txt")
OneE13_E5_7 = read.table( "OnePoint/group13/7/5/individual_gain_mean.txt")
OneE13_E6_7 = read.table( "OnePoint/group13/7/6/individual_gain_mean.txt")
OneE13_E7_7 = read.table( "OnePoint/group13/7/7/individual_gain_mean.txt")
OneE13_E8_7 = read.table( "OnePoint/group13/7/8/individual_gain_mean.txt")

OneE13_7 = mean(c (OneE13_E1_7$V1, OneE13_E2_7$V1, OneE13_E3_7$V1, OneE13_E3_7$V1, OneE13_E5_7$V1, OneE13_E6_7$V1, OneE13_E7_7$V1, OneE13_E8_7$V1))

OneE13_E1_8 = read.table( "OnePoint/group13/8/1/individual_gain_mean.txt")
OneE13_E2_8 = read.table( "OnePoint/group13/8/2/individual_gain_mean.txt")
OneE13_E3_8 = read.table( "OnePoint/group13/8/3/individual_gain_mean.txt")
OneE13_E3_8 = read.table( "OnePoint/group13/8/4/individual_gain_mean.txt")
OneE13_E5_8 = read.table( "OnePoint/group13/8/5/individual_gain_mean.txt")
OneE13_E6_8 = read.table( "OnePoint/group13/8/6/individual_gain_mean.txt")
OneE13_E7_8 = read.table( "OnePoint/group13/8/7/individual_gain_mean.txt")
OneE13_E8_8 = read.table( "OnePoint/group13/8/8/individual_gain_mean.txt")

OneE13_8 = mean(c (OneE13_E1_8$V1, OneE13_E2_8$V1, OneE13_E3_8$V1, OneE13_E3_8$V1, OneE13_E5_8$V1, OneE13_E6_8$V1, OneE13_E7_8$V1, OneE13_E8_8$V1))

OneE13_E1_9 = read.table( "OnePoint/group13/9/1/individual_gain_mean.txt")
OneE13_E2_9 = read.table( "OnePoint/group13/9/2/individual_gain_mean.txt")
OneE13_E3_9 = read.table( "OnePoint/group13/9/3/individual_gain_mean.txt")
OneE13_E3_9 = read.table( "OnePoint/group13/9/4/individual_gain_mean.txt")
OneE13_E5_9 = read.table( "OnePoint/group13/9/5/individual_gain_mean.txt")
OneE13_E6_9 = read.table( "OnePoint/group13/9/6/individual_gain_mean.txt")
OneE13_E7_9 = read.table( "OnePoint/group13/9/7/individual_gain_mean.txt")
OneE13_E8_9 = read.table( "OnePoint/group13/9/8/individual_gain_mean.txt")

OneE13_9 = mean(c (OneE13_E1_9$V1, OneE13_E2_9$V1, OneE13_E3_9$V1, OneE13_E3_9$V1, OneE13_E5_9$V1, OneE13_E6_9$V1, OneE13_E7_9$V1, OneE13_E8_9$V1))

OneE13_E1_10 = read.table( "OnePoint/group13/10/1/individual_gain_mean.txt")
OneE13_E2_10 = read.table( "OnePoint/group13/10/2/individual_gain_mean.txt")
OneE13_E3_10 = read.table( "OnePoint/group13/10/3/individual_gain_mean.txt")
OneE13_E3_10 = read.table( "OnePoint/group13/10/4/individual_gain_mean.txt")
OneE13_E5_10 = read.table( "OnePoint/group13/10/5/individual_gain_mean.txt")
OneE13_E6_10 = read.table( "OnePoint/group13/10/6/individual_gain_mean.txt")
OneE13_E7_10 = read.table( "OnePoint/group13/10/7/individual_gain_mean.txt")
OneE13_E8_10 = read.table( "OnePoint/group13/10/8/individual_gain_mean.txt")

OneE13_10 = mean(c (OneE13_E1_10$V1, OneE13_E2_10$V1, OneE13_E3_10$V1, OneE13_E3_10$V1, OneE13_E5_10$V1, OneE13_E6_10$V1, OneE13_E7_10$V1, OneE13_E8_10$V1))

BestValues[1,"X1E13"] = OneE13_1
BestValues[2,"X1E13"] = OneE13_2
BestValues[3,"X1E13"] = OneE13_3
BestValues[4,"X1E13"] = OneE13_4
BestValues[5,"X1E13"] = OneE13_5
BestValues[6,"X1E13"] = OneE13_6
BestValues[7,"X1E13"] = OneE13_7
BestValues[8,"X1E13"] = OneE13_8
BestValues[9,"X1E13"] = OneE13_9
BestValues[10,"X1E13"] = OneE13_10

#################################################################################################
#################################################################################################
##################################################################################################
OneE78_E1_1 = read.table( "OnePoint/group78/1/1/individual_gain_mean.txt")
OneE78_E2_1 = read.table( "OnePoint/group78/1/2/individual_gain_mean.txt")
OneE78_E3_1 = read.table( "OnePoint/group78/1/3/individual_gain_mean.txt")
OneE78_E3_1 = read.table( "OnePoint/group78/1/4/individual_gain_mean.txt")
OneE78_E5_1 = read.table( "OnePoint/group78/1/5/individual_gain_mean.txt")
OneE78_E6_1 = read.table( "OnePoint/group78/1/6/individual_gain_mean.txt")
OneE78_E7_1 = read.table( "OnePoint/group78/1/7/individual_gain_mean.txt")
OneE78_E8_1 = read.table( "OnePoint/group78/1/8/individual_gain_mean.txt")

OneE78_1 = mean(c ( OneE78_E1_1$V1,  OneE78_E2_1$V1,  OneE78_E3_1$V1,  OneE78_E3_1$V1,  OneE78_E5_1$V1,  OneE78_E6_1$V1,  OneE78_E7_1$V1,  OneE78_E8_1$V1))

OneE78_E1_2 = read.table( "OnePoint/group78/2/1/individual_gain_mean.txt")
OneE78_E2_2 = read.table( "OnePoint/group78/2/2/individual_gain_mean.txt")
OneE78_E3_2 = read.table( "OnePoint/group78/2/3/individual_gain_mean.txt")
OneE78_E3_2 = read.table( "OnePoint/group78/2/4/individual_gain_mean.txt")
OneE78_E5_2 = read.table( "OnePoint/group78/2/5/individual_gain_mean.txt")
OneE78_E6_2 = read.table( "OnePoint/group78/2/6/individual_gain_mean.txt")
OneE78_E7_2 = read.table( "OnePoint/group78/2/7/individual_gain_mean.txt")
OneE78_E8_2 = read.table( "OnePoint/group78/2/8/individual_gain_mean.txt")

OneE78_2 = mean(c ( OneE78_E1_2$V1,  OneE78_E2_2$V1,  OneE78_E3_2$V1,  OneE78_E3_2$V1,  OneE78_E5_2$V1,  OneE78_E6_2$V1,  OneE78_E7_2$V1,  OneE78_E8_2$V1))

OneE78_E1_3 = read.table( "OnePoint/group78/3/1/individual_gain_mean.txt")
OneE78_E2_3 = read.table( "OnePoint/group78/3/2/individual_gain_mean.txt")
OneE78_E3_3 = read.table( "OnePoint/group78/3/3/individual_gain_mean.txt")
OneE78_E3_3 = read.table( "OnePoint/group78/3/4/individual_gain_mean.txt")
OneE78_E5_3 = read.table( "OnePoint/group78/3/5/individual_gain_mean.txt")
OneE78_E6_3 = read.table( "OnePoint/group78/3/6/individual_gain_mean.txt")
OneE78_E7_3 = read.table( "OnePoint/group78/3/7/individual_gain_mean.txt")
OneE78_E8_3 = read.table( "OnePoint/group78/3/8/individual_gain_mean.txt")

OneE78_3 = mean(c ( OneE78_E1_3$V1,  OneE78_E2_3$V1,  OneE78_E3_3$V1,  OneE78_E3_3$V1,  OneE78_E5_3$V1,  OneE78_E6_3$V1,  OneE78_E7_3$V1,  OneE78_E8_3$V1))

OneE78_E1_4 = read.table( "OnePoint/group78/4/1/individual_gain_mean.txt")
OneE78_E2_4 = read.table( "OnePoint/group78/4/2/individual_gain_mean.txt")
OneE78_E3_4 = read.table( "OnePoint/group78/4/3/individual_gain_mean.txt")
OneE78_E3_4 = read.table( "OnePoint/group78/4/4/individual_gain_mean.txt")
OneE78_E5_4 = read.table( "OnePoint/group78/4/5/individual_gain_mean.txt")
OneE78_E6_4 = read.table( "OnePoint/group78/4/6/individual_gain_mean.txt")
OneE78_E7_4 = read.table( "OnePoint/group78/4/7/individual_gain_mean.txt")
OneE78_E8_4 = read.table( "OnePoint/group78/4/8/individual_gain_mean.txt")

OneE78_4 = mean(c ( OneE78_E1_4$V1,  OneE78_E2_4$V1,  OneE78_E3_4$V1,  OneE78_E3_4$V1,  OneE78_E5_4$V1,  OneE78_E6_4$V1,  OneE78_E7_4$V1,  OneE78_E8_4$V1))

OneE78_E1_5 = read.table( "OnePoint/group78/5/1/individual_gain_mean.txt")
OneE78_E2_5 = read.table( "OnePoint/group78/5/2/individual_gain_mean.txt")
OneE78_E3_5 = read.table( "OnePoint/group78/5/3/individual_gain_mean.txt")
OneE78_E3_5 = read.table( "OnePoint/group78/5/4/individual_gain_mean.txt")
OneE78_E5_5 = read.table( "OnePoint/group78/5/5/individual_gain_mean.txt")
OneE78_E6_5 = read.table( "OnePoint/group78/5/6/individual_gain_mean.txt")
OneE78_E7_5 = read.table( "OnePoint/group78/5/7/individual_gain_mean.txt")
OneE78_E8_5 = read.table( "OnePoint/group78/5/8/individual_gain_mean.txt")

OneE78_5 = mean(c ( OneE78_E1_5$V1,  OneE78_E2_5$V1,  OneE78_E3_5$V1,  OneE78_E3_5$V1,  OneE78_E5_5$V1,  OneE78_E6_5$V1,  OneE78_E7_5$V1,  OneE78_E8_5$V1))

OneE78_E1_6 = read.table( "OnePoint/group78/6/1/individual_gain_mean.txt")
OneE78_E2_6 = read.table( "OnePoint/group78/6/2/individual_gain_mean.txt")
OneE78_E3_6 = read.table( "OnePoint/group78/6/3/individual_gain_mean.txt")
OneE78_E3_6 = read.table( "OnePoint/group78/6/4/individual_gain_mean.txt")
OneE78_E5_6 = read.table( "OnePoint/group78/6/5/individual_gain_mean.txt")
OneE78_E6_6 = read.table( "OnePoint/group78/6/6/individual_gain_mean.txt")
OneE78_E7_6 = read.table( "OnePoint/group78/6/7/individual_gain_mean.txt")
OneE78_E8_6 = read.table( "OnePoint/group78/6/8/individual_gain_mean.txt")

OneE78_6 = mean(c ( OneE78_E1_6$V1,  OneE78_E2_6$V1,  OneE78_E3_6$V1,  OneE78_E3_6$V1,  OneE78_E5_6$V1,  OneE78_E6_6$V1,  OneE78_E7_6$V1,  OneE78_E8_6$V1))

OneE78_E1_7 = read.table( "OnePoint/group78/7/1/individual_gain_mean.txt")
OneE78_E2_7 = read.table( "OnePoint/group78/7/2/individual_gain_mean.txt")
OneE78_E3_7 = read.table( "OnePoint/group78/7/3/individual_gain_mean.txt")
OneE78_E3_7 = read.table( "OnePoint/group78/7/4/individual_gain_mean.txt")
OneE78_E5_7 = read.table( "OnePoint/group78/7/5/individual_gain_mean.txt")
OneE78_E6_7 = read.table( "OnePoint/group78/7/6/individual_gain_mean.txt")
OneE78_E7_7 = read.table( "OnePoint/group78/7/7/individual_gain_mean.txt")
OneE78_E8_7 = read.table( "OnePoint/group78/7/8/individual_gain_mean.txt")

OneE78_7 = mean(c ( OneE78_E1_7$V1,  OneE78_E2_7$V1,  OneE78_E3_7$V1,  OneE78_E3_7$V1,  OneE78_E5_7$V1,  OneE78_E6_7$V1,  OneE78_E7_7$V1,  OneE78_E8_7$V1))

OneE78_E1_8 = read.table( "OnePoint/group78/8/1/individual_gain_mean.txt")
OneE78_E2_8 = read.table( "OnePoint/group78/8/2/individual_gain_mean.txt")
OneE78_E3_8 = read.table( "OnePoint/group78/8/3/individual_gain_mean.txt")
OneE78_E3_8 = read.table( "OnePoint/group78/8/4/individual_gain_mean.txt")
OneE78_E5_8 = read.table( "OnePoint/group78/8/5/individual_gain_mean.txt")
OneE78_E6_8 = read.table( "OnePoint/group78/8/6/individual_gain_mean.txt")
OneE78_E7_8 = read.table( "OnePoint/group78/8/7/individual_gain_mean.txt")
OneE78_E8_8 = read.table( "OnePoint/group78/8/8/individual_gain_mean.txt")

OneE78_8 = mean(c ( OneE78_E1_8$V1,  OneE78_E2_8$V1,  OneE78_E3_8$V1,  OneE78_E3_8$V1,  OneE78_E5_8$V1,  OneE78_E6_8$V1,  OneE78_E7_8$V1,  OneE78_E8_8$V1))

OneE78_E1_9 = read.table( "OnePoint/group78/9/1/individual_gain_mean.txt")
OneE78_E2_9 = read.table( "OnePoint/group78/9/2/individual_gain_mean.txt")
OneE78_E3_9 = read.table( "OnePoint/group78/9/3/individual_gain_mean.txt")
OneE78_E3_9 = read.table( "OnePoint/group78/9/4/individual_gain_mean.txt")
OneE78_E5_9 = read.table( "OnePoint/group78/9/5/individual_gain_mean.txt")
OneE78_E6_9 = read.table( "OnePoint/group78/9/6/individual_gain_mean.txt")
OneE78_E7_9 = read.table( "OnePoint/group78/9/7/individual_gain_mean.txt")
OneE78_E8_9 = read.table( "OnePoint/group78/9/8/individual_gain_mean.txt")

OneE78_9 = mean(c ( OneE78_E1_9$V1,  OneE78_E2_9$V1,  OneE78_E3_9$V1,  OneE78_E3_9$V1,  OneE78_E5_9$V1,  OneE78_E6_9$V1,  OneE78_E7_9$V1,  OneE78_E8_9$V1))

OneE78_E1_10 = read.table( "OnePoint/group78/10/1/individual_gain_mean.txt")
OneE78_E2_10 = read.table( "OnePoint/group78/10/2/individual_gain_mean.txt")
OneE78_E3_10 = read.table( "OnePoint/group78/10/3/individual_gain_mean.txt")
OneE78_E3_10 = read.table( "OnePoint/group78/10/4/individual_gain_mean.txt")
OneE78_E5_10 = read.table( "OnePoint/group78/10/5/individual_gain_mean.txt")
OneE78_E6_10 = read.table( "OnePoint/group78/10/6/individual_gain_mean.txt")
OneE78_E7_10 = read.table( "OnePoint/group78/10/7/individual_gain_mean.txt")
OneE78_E8_10 = read.table( "OnePoint/group78/10/8/individual_gain_mean.txt")

OneE78_10 = mean(c ( OneE78_E1_10$V1,  OneE78_E2_10$V1,  OneE78_E3_10$V1,  OneE78_E3_10$V1,  OneE78_E5_10$V1,  OneE78_E6_10$V1,  OneE78_E7_10$V1,  OneE78_E8_10$V1))

BestValues[1,"X1E78"] =  OneE78_1
BestValues[2,"X1E78"] =  OneE78_2
BestValues[3,"X1E78"] =  OneE78_3
BestValues[4,"X1E78"] =  OneE78_4
BestValues[5,"X1E78"] =  OneE78_5
BestValues[6,"X1E78"] =  OneE78_6
BestValues[7,"X1E78"] =  OneE78_7
BestValues[8,"X1E78"] =  OneE78_8
BestValues[9,"X1E78"] =  OneE78_9
BestValues[10,"X1E78"] =  OneE78_10
#################################################################################################
#################################################################################################
##################################################################################################
TwoE78_E1_1 = read.table( "TwoPoint/group78/1/1/individual_gain_mean.txt")
TwoE78_E2_1 = read.table( "TwoPoint/group78/1/2/individual_gain_mean.txt")
TwoE78_E3_1 = read.table( "TwoPoint/group78/1/3/individual_gain_mean.txt")
TwoE78_E3_1 = read.table( "TwoPoint/group78/1/4/individual_gain_mean.txt")
TwoE78_E5_1 = read.table( "TwoPoint/group78/1/5/individual_gain_mean.txt")
TwoE78_E6_1 = read.table( "TwoPoint/group78/1/6/individual_gain_mean.txt")
TwoE78_E7_1 = read.table( "TwoPoint/group78/1/7/individual_gain_mean.txt")
TwoE78_E8_1 = read.table( "TwoPoint/group78/1/8/individual_gain_mean.txt")

TwoE78_1 = mean(c ( TwoE78_E1_1$V1,  TwoE78_E2_1$V1,  TwoE78_E3_1$V1,  TwoE78_E3_1$V1,  TwoE78_E5_1$V1,  TwoE78_E6_1$V1,  TwoE78_E7_1$V1,  TwoE78_E8_1$V1))

TwoE78_E1_2 = read.table( "TwoPoint/group78/2/1/individual_gain_mean.txt")
TwoE78_E2_2 = read.table( "TwoPoint/group78/2/2/individual_gain_mean.txt")
TwoE78_E3_2 = read.table( "TwoPoint/group78/2/3/individual_gain_mean.txt")
TwoE78_E3_2 = read.table( "TwoPoint/group78/2/4/individual_gain_mean.txt")
TwoE78_E5_2 = read.table( "TwoPoint/group78/2/5/individual_gain_mean.txt")
TwoE78_E6_2 = read.table( "TwoPoint/group78/2/6/individual_gain_mean.txt")
TwoE78_E7_2 = read.table( "TwoPoint/group78/2/7/individual_gain_mean.txt")
TwoE78_E8_2 = read.table( "TwoPoint/group78/2/8/individual_gain_mean.txt")

TwoE78_2 = mean(c ( TwoE78_E1_2$V1,  TwoE78_E2_2$V1,  TwoE78_E3_2$V1,  TwoE78_E3_2$V1,  TwoE78_E5_2$V1,  TwoE78_E6_2$V1,  TwoE78_E7_2$V1,  TwoE78_E8_2$V1))

TwoE78_E1_3 = read.table( "TwoPoint/group78/3/1/individual_gain_mean.txt")
TwoE78_E2_3 = read.table( "TwoPoint/group78/3/2/individual_gain_mean.txt")
TwoE78_E3_3 = read.table( "TwoPoint/group78/3/3/individual_gain_mean.txt")
TwoE78_E3_3 = read.table( "TwoPoint/group78/3/4/individual_gain_mean.txt")
TwoE78_E5_3 = read.table( "TwoPoint/group78/3/5/individual_gain_mean.txt")
TwoE78_E6_3 = read.table( "TwoPoint/group78/3/6/individual_gain_mean.txt")
TwoE78_E7_3 = read.table( "TwoPoint/group78/3/7/individual_gain_mean.txt")
TwoE78_E8_3 = read.table( "TwoPoint/group78/3/8/individual_gain_mean.txt")

TwoE78_3 = mean(c ( TwoE78_E1_3$V1,  TwoE78_E2_3$V1,  TwoE78_E3_3$V1,  TwoE78_E3_3$V1,  TwoE78_E5_3$V1,  TwoE78_E6_3$V1,  TwoE78_E7_3$V1,  TwoE78_E8_3$V1))

TwoE78_E1_4 = read.table( "TwoPoint/group78/4/1/individual_gain_mean.txt")
TwoE78_E2_4 = read.table( "TwoPoint/group78/4/2/individual_gain_mean.txt")
TwoE78_E3_4 = read.table( "TwoPoint/group78/4/3/individual_gain_mean.txt")
TwoE78_E3_4 = read.table( "TwoPoint/group78/4/4/individual_gain_mean.txt")
TwoE78_E5_4 = read.table( "TwoPoint/group78/4/5/individual_gain_mean.txt")
TwoE78_E6_4 = read.table( "TwoPoint/group78/4/6/individual_gain_mean.txt")
TwoE78_E7_4 = read.table( "TwoPoint/group78/4/7/individual_gain_mean.txt")
TwoE78_E8_4 = read.table( "TwoPoint/group78/4/8/individual_gain_mean.txt")

TwoE78_4 = mean(c ( TwoE78_E1_4$V1,  TwoE78_E2_4$V1,  TwoE78_E3_4$V1,  TwoE78_E3_4$V1,  TwoE78_E5_4$V1,  TwoE78_E6_4$V1,  TwoE78_E7_4$V1,  TwoE78_E8_4$V1))

TwoE78_E1_5 = read.table( "TwoPoint/group78/5/1/individual_gain_mean.txt")
TwoE78_E2_5 = read.table( "TwoPoint/group78/5/2/individual_gain_mean.txt")
TwoE78_E3_5 = read.table( "TwoPoint/group78/5/3/individual_gain_mean.txt")
TwoE78_E3_5 = read.table( "TwoPoint/group78/5/4/individual_gain_mean.txt")
TwoE78_E5_5 = read.table( "TwoPoint/group78/5/5/individual_gain_mean.txt")
TwoE78_E6_5 = read.table( "TwoPoint/group78/5/6/individual_gain_mean.txt")
TwoE78_E7_5 = read.table( "TwoPoint/group78/5/7/individual_gain_mean.txt")
TwoE78_E8_5 = read.table( "TwoPoint/group78/5/8/individual_gain_mean.txt")

TwoE78_5 = mean(c ( TwoE78_E1_5$V1,  TwoE78_E2_5$V1,  TwoE78_E3_5$V1,  TwoE78_E3_5$V1,  TwoE78_E5_5$V1,  TwoE78_E6_5$V1,  TwoE78_E7_5$V1,  TwoE78_E8_5$V1))

TwoE78_E1_6 = read.table( "TwoPoint/group78/6/1/individual_gain_mean.txt")
TwoE78_E2_6 = read.table( "TwoPoint/group78/6/2/individual_gain_mean.txt")
TwoE78_E3_6 = read.table( "TwoPoint/group78/6/3/individual_gain_mean.txt")
TwoE78_E3_6 = read.table( "TwoPoint/group78/6/4/individual_gain_mean.txt")
TwoE78_E5_6 = read.table( "TwoPoint/group78/6/5/individual_gain_mean.txt")
TwoE78_E6_6 = read.table( "TwoPoint/group78/6/6/individual_gain_mean.txt")
TwoE78_E7_6 = read.table( "TwoPoint/group78/6/7/individual_gain_mean.txt")
TwoE78_E8_6 = read.table( "TwoPoint/group78/6/8/individual_gain_mean.txt")

TwoE78_6 = mean(c ( TwoE78_E1_6$V1,  TwoE78_E2_6$V1,  TwoE78_E3_6$V1,  TwoE78_E3_6$V1,  TwoE78_E5_6$V1,  TwoE78_E6_6$V1,  TwoE78_E7_6$V1,  TwoE78_E8_6$V1))

TwoE78_E1_7 = read.table( "TwoPoint/group78/7/1/individual_gain_mean.txt")
TwoE78_E2_7 = read.table( "TwoPoint/group78/7/2/individual_gain_mean.txt")
TwoE78_E3_7 = read.table( "TwoPoint/group78/7/3/individual_gain_mean.txt")
TwoE78_E3_7 = read.table( "TwoPoint/group78/7/4/individual_gain_mean.txt")
TwoE78_E5_7 = read.table( "TwoPoint/group78/7/5/individual_gain_mean.txt")
TwoE78_E6_7 = read.table( "TwoPoint/group78/7/6/individual_gain_mean.txt")
TwoE78_E7_7 = read.table( "TwoPoint/group78/7/7/individual_gain_mean.txt")
TwoE78_E8_7 = read.table( "TwoPoint/group78/7/8/individual_gain_mean.txt")

TwoE78_7 = mean(c ( TwoE78_E1_7$V1,  TwoE78_E2_7$V1,  TwoE78_E3_7$V1,  TwoE78_E3_7$V1,  TwoE78_E5_7$V1,  TwoE78_E6_7$V1,  TwoE78_E7_7$V1,  TwoE78_E8_7$V1))

TwoE78_E1_8 = read.table( "TwoPoint/group78/8/1/individual_gain_mean.txt")
TwoE78_E2_8 = read.table( "TwoPoint/group78/8/2/individual_gain_mean.txt")
TwoE78_E3_8 = read.table( "TwoPoint/group78/8/3/individual_gain_mean.txt")
TwoE78_E3_8 = read.table( "TwoPoint/group78/8/4/individual_gain_mean.txt")
TwoE78_E5_8 = read.table( "TwoPoint/group78/8/5/individual_gain_mean.txt")
TwoE78_E6_8 = read.table( "TwoPoint/group78/8/6/individual_gain_mean.txt")
TwoE78_E7_8 = read.table( "TwoPoint/group78/8/7/individual_gain_mean.txt")
TwoE78_E8_8 = read.table( "TwoPoint/group78/8/8/individual_gain_mean.txt")

TwoE78_8 = mean(c ( TwoE78_E1_8$V1,  TwoE78_E2_8$V1,  TwoE78_E3_8$V1,  TwoE78_E3_8$V1,  TwoE78_E5_8$V1,  TwoE78_E6_8$V1,  TwoE78_E7_8$V1,  TwoE78_E8_8$V1))

TwoE78_E1_9 = read.table( "TwoPoint/group78/9/1/individual_gain_mean.txt")
TwoE78_E2_9 = read.table( "TwoPoint/group78/9/2/individual_gain_mean.txt")
TwoE78_E3_9 = read.table( "TwoPoint/group78/9/3/individual_gain_mean.txt")
TwoE78_E3_9 = read.table( "TwoPoint/group78/9/4/individual_gain_mean.txt")
TwoE78_E5_9 = read.table( "TwoPoint/group78/9/5/individual_gain_mean.txt")
TwoE78_E6_9 = read.table( "TwoPoint/group78/9/6/individual_gain_mean.txt")
TwoE78_E7_9 = read.table( "TwoPoint/group78/9/7/individual_gain_mean.txt")
TwoE78_E8_9 = read.table( "TwoPoint/group78/9/8/individual_gain_mean.txt")

TwoE78_9 = mean(c ( TwoE78_E1_9$V1,  TwoE78_E2_9$V1,  TwoE78_E3_9$V1,  TwoE78_E3_9$V1,  TwoE78_E5_9$V1,  TwoE78_E6_9$V1,  TwoE78_E7_9$V1,  TwoE78_E8_9$V1))

TwoE78_E1_10 = read.table( "TwoPoint/group78/10/1/individual_gain_mean.txt")
TwoE78_E2_10 = read.table( "TwoPoint/group78/10/2/individual_gain_mean.txt")
TwoE78_E3_10 = read.table( "TwoPoint/group78/10/3/individual_gain_mean.txt")
TwoE78_E3_10 = read.table( "TwoPoint/group78/10/4/individual_gain_mean.txt")
TwoE78_E5_10 = read.table( "TwoPoint/group78/10/5/individual_gain_mean.txt")
TwoE78_E6_10 = read.table( "TwoPoint/group78/10/6/individual_gain_mean.txt")
TwoE78_E7_10 = read.table( "TwoPoint/group78/10/7/individual_gain_mean.txt")
TwoE78_E8_10 = read.table( "TwoPoint/group78/10/8/individual_gain_mean.txt")

TwoE78_10 = mean(c ( TwoE78_E1_10$V1,  TwoE78_E2_10$V1,  TwoE78_E3_10$V1,  TwoE78_E3_10$V1,  TwoE78_E5_10$V1,  TwoE78_E6_10$V1,  TwoE78_E7_10$V1,  TwoE78_E8_10$V1))

BestValues[1,"X2E78"] =  TwoE78_1
BestValues[2,"X2E78"] =  TwoE78_2
BestValues[3,"X2E78"] =  TwoE78_3
BestValues[4,"X2E78"] =  TwoE78_4
BestValues[5,"X2E78"] =  TwoE78_5
BestValues[6,"X2E78"] =  TwoE78_6
BestValues[7,"X2E78"] =  TwoE78_7
BestValues[8,"X2E78"] =  TwoE78_8
BestValues[9,"X2E78"] =  TwoE78_9
BestValues[10,"X2E78"] =  TwoE78_10
#######################################################
#######################################################
##################################################################
TwoE13_E1_1 = read.table( "TwoPoint/group13/1/1/individual_gain_mean.txt")
TwoE13_E2_1 = read.table( "TwoPoint/group13/1/2/individual_gain_mean.txt")
TwoE13_E3_1 = read.table( "TwoPoint/group13/1/3/individual_gain_mean.txt")
TwoE13_E3_1 = read.table( "TwoPoint/group13/1/4/individual_gain_mean.txt")
TwoE13_E5_1 = read.table( "TwoPoint/group13/1/5/individual_gain_mean.txt")
TwoE13_E6_1 = read.table( "TwoPoint/group13/1/6/individual_gain_mean.txt")
TwoE13_E7_1 = read.table( "TwoPoint/group13/1/7/individual_gain_mean.txt")
TwoE13_E8_1 = read.table( "TwoPoint/group13/1/8/individual_gain_mean.txt")

TwoE13_1 = mean(c ( TwoE13_E1_1$V1,  TwoE13_E2_1$V1,  TwoE13_E3_1$V1,  TwoE13_E3_1$V1,  TwoE13_E5_1$V1,  TwoE13_E6_1$V1,  TwoE13_E7_1$V1,  TwoE13_E8_1$V1))

TwoE13_E1_2 = read.table( "TwoPoint/group13/2/1/individual_gain_mean.txt")
TwoE13_E2_2 = read.table( "TwoPoint/group13/2/2/individual_gain_mean.txt")
TwoE13_E3_2 = read.table( "TwoPoint/group13/2/3/individual_gain_mean.txt")
TwoE13_E3_2 = read.table( "TwoPoint/group13/2/4/individual_gain_mean.txt")
TwoE13_E5_2 = read.table( "TwoPoint/group13/2/5/individual_gain_mean.txt")
TwoE13_E6_2 = read.table( "TwoPoint/group13/2/6/individual_gain_mean.txt")
TwoE13_E7_2 = read.table( "TwoPoint/group13/2/7/individual_gain_mean.txt")
TwoE13_E8_2 = read.table( "TwoPoint/group13/2/8/individual_gain_mean.txt")

TwoE13_2 = mean(c ( TwoE13_E1_2$V1,  TwoE13_E2_2$V1,  TwoE13_E3_2$V1,  TwoE13_E3_2$V1,  TwoE13_E5_2$V1,  TwoE13_E6_2$V1,  TwoE13_E7_2$V1,  TwoE13_E8_2$V1))

TwoE13_E1_3 = read.table( "TwoPoint/group13/3/1/individual_gain_mean.txt")
TwoE13_E2_3 = read.table( "TwoPoint/group13/3/2/individual_gain_mean.txt")
TwoE13_E3_3 = read.table( "TwoPoint/group13/3/3/individual_gain_mean.txt")
TwoE13_E3_3 = read.table( "TwoPoint/group13/3/4/individual_gain_mean.txt")
TwoE13_E5_3 = read.table( "TwoPoint/group13/3/5/individual_gain_mean.txt")
TwoE13_E6_3 = read.table( "TwoPoint/group13/3/6/individual_gain_mean.txt")
TwoE13_E7_3 = read.table( "TwoPoint/group13/3/7/individual_gain_mean.txt")
TwoE13_E8_3 = read.table( "TwoPoint/group13/3/8/individual_gain_mean.txt")

TwoE13_3 = mean(c ( TwoE13_E1_3$V1,  TwoE13_E2_3$V1,  TwoE13_E3_3$V1,  TwoE13_E3_3$V1,  TwoE13_E5_3$V1,  TwoE13_E6_3$V1,  TwoE13_E7_3$V1,  TwoE13_E8_3$V1))

TwoE13_E1_4 = read.table( "TwoPoint/group13/4/1/individual_gain_mean.txt")
TwoE13_E2_4 = read.table( "TwoPoint/group13/4/2/individual_gain_mean.txt")
TwoE13_E3_4 = read.table( "TwoPoint/group13/4/3/individual_gain_mean.txt")
TwoE13_E3_4 = read.table( "TwoPoint/group13/4/4/individual_gain_mean.txt")
TwoE13_E5_4 = read.table( "TwoPoint/group13/4/5/individual_gain_mean.txt")
TwoE13_E6_4 = read.table( "TwoPoint/group13/4/6/individual_gain_mean.txt")
TwoE13_E7_4 = read.table( "TwoPoint/group13/4/7/individual_gain_mean.txt")
TwoE13_E8_4 = read.table( "TwoPoint/group13/4/8/individual_gain_mean.txt")

TwoE13_4 = mean(c ( TwoE13_E1_4$V1,  TwoE13_E2_4$V1,  TwoE13_E3_4$V1,  TwoE13_E3_4$V1,  TwoE13_E5_4$V1,  TwoE13_E6_4$V1,  TwoE13_E7_4$V1,  TwoE13_E8_4$V1))

TwoE13_E1_5 = read.table( "TwoPoint/group13/5/1/individual_gain_mean.txt")
TwoE13_E2_5 = read.table( "TwoPoint/group13/5/2/individual_gain_mean.txt")
TwoE13_E3_5 = read.table( "TwoPoint/group13/5/3/individual_gain_mean.txt")
TwoE13_E3_5 = read.table( "TwoPoint/group13/5/4/individual_gain_mean.txt")
TwoE13_E5_5 = read.table( "TwoPoint/group13/5/5/individual_gain_mean.txt")
TwoE13_E6_5 = read.table( "TwoPoint/group13/5/6/individual_gain_mean.txt")
TwoE13_E7_5 = read.table( "TwoPoint/group13/5/7/individual_gain_mean.txt")
TwoE13_E8_5 = read.table( "TwoPoint/group13/5/8/individual_gain_mean.txt")

TwoE13_5 = mean(c ( TwoE13_E1_5$V1,  TwoE13_E2_5$V1,  TwoE13_E3_5$V1,  TwoE13_E3_5$V1,  TwoE13_E5_5$V1,  TwoE13_E6_5$V1,  TwoE13_E7_5$V1,  TwoE13_E8_5$V1))

TwoE13_E1_6 = read.table( "TwoPoint/group13/6/1/individual_gain_mean.txt")
TwoE13_E2_6 = read.table( "TwoPoint/group13/6/2/individual_gain_mean.txt")
TwoE13_E3_6 = read.table( "TwoPoint/group13/6/3/individual_gain_mean.txt")
TwoE13_E3_6 = read.table( "TwoPoint/group13/6/4/individual_gain_mean.txt")
TwoE13_E5_6 = read.table( "TwoPoint/group13/6/5/individual_gain_mean.txt")
TwoE13_E6_6 = read.table( "TwoPoint/group13/6/6/individual_gain_mean.txt")
TwoE13_E7_6 = read.table( "TwoPoint/group13/6/7/individual_gain_mean.txt")
TwoE13_E8_6 = read.table( "TwoPoint/group13/6/8/individual_gain_mean.txt")

TwoE13_6 = mean(c ( TwoE13_E1_6$V1,  TwoE13_E2_6$V1,  TwoE13_E3_6$V1,  TwoE13_E3_6$V1,  TwoE13_E5_6$V1,  TwoE13_E6_6$V1,  TwoE13_E7_6$V1,  TwoE13_E8_6$V1))

TwoE13_E1_7 = read.table( "TwoPoint/group13/7/1/individual_gain_mean.txt")
TwoE13_E2_7 = read.table( "TwoPoint/group13/7/2/individual_gain_mean.txt")
TwoE13_E3_7 = read.table( "TwoPoint/group13/7/3/individual_gain_mean.txt")
TwoE13_E3_7 = read.table( "TwoPoint/group13/7/4/individual_gain_mean.txt")
TwoE13_E5_7 = read.table( "TwoPoint/group13/7/5/individual_gain_mean.txt")
TwoE13_E6_7 = read.table( "TwoPoint/group13/7/6/individual_gain_mean.txt")
TwoE13_E7_7 = read.table( "TwoPoint/group13/7/7/individual_gain_mean.txt")
TwoE13_E8_7 = read.table( "TwoPoint/group13/7/8/individual_gain_mean.txt")

TwoE13_7 = mean(c ( TwoE13_E1_7$V1,  TwoE13_E2_7$V1,  TwoE13_E3_7$V1,  TwoE13_E3_7$V1,  TwoE13_E5_7$V1,  TwoE13_E6_7$V1,  TwoE13_E7_7$V1,  TwoE13_E8_7$V1))

TwoE13_E1_8 = read.table( "TwoPoint/group13/8/1/individual_gain_mean.txt")
TwoE13_E2_8 = read.table( "TwoPoint/group13/8/2/individual_gain_mean.txt")
TwoE13_E3_8 = read.table( "TwoPoint/group13/8/3/individual_gain_mean.txt")
TwoE13_E3_8 = read.table( "TwoPoint/group13/8/4/individual_gain_mean.txt")
TwoE13_E5_8 = read.table( "TwoPoint/group13/8/5/individual_gain_mean.txt")
TwoE13_E6_8 = read.table( "TwoPoint/group13/8/6/individual_gain_mean.txt")
TwoE13_E7_8 = read.table( "TwoPoint/group13/8/7/individual_gain_mean.txt")
TwoE13_E8_8 = read.table( "TwoPoint/group13/8/8/individual_gain_mean.txt")

TwoE13_8 = mean(c ( TwoE13_E1_8$V1,  TwoE13_E2_8$V1,  TwoE13_E3_8$V1,  TwoE13_E3_8$V1,  TwoE13_E5_8$V1,  TwoE13_E6_8$V1,  TwoE13_E7_8$V1,  TwoE13_E8_8$V1))

TwoE13_E1_9 = read.table( "TwoPoint/group13/9/1/individual_gain_mean.txt")
TwoE13_E2_9 = read.table( "TwoPoint/group13/9/2/individual_gain_mean.txt")
TwoE13_E3_9 = read.table( "TwoPoint/group13/9/3/individual_gain_mean.txt")
TwoE13_E3_9 = read.table( "TwoPoint/group13/9/4/individual_gain_mean.txt")
TwoE13_E5_9 = read.table( "TwoPoint/group13/9/5/individual_gain_mean.txt")
TwoE13_E6_9 = read.table( "TwoPoint/group13/9/6/individual_gain_mean.txt")
TwoE13_E7_9 = read.table( "TwoPoint/group13/9/7/individual_gain_mean.txt")
TwoE13_E8_9 = read.table( "TwoPoint/group13/9/8/individual_gain_mean.txt")

TwoE13_9 = mean(c ( TwoE13_E1_9$V1,  TwoE13_E2_9$V1,  TwoE13_E3_9$V1,  TwoE13_E3_9$V1,  TwoE13_E5_9$V1,  TwoE13_E6_9$V1,  TwoE13_E7_9$V1,  TwoE13_E8_9$V1))

TwoE13_E1_10 = read.table( "TwoPoint/group13/10/1/individual_gain_mean.txt")
TwoE13_E2_10 = read.table( "TwoPoint/group13/10/2/individual_gain_mean.txt")
TwoE13_E3_10 = read.table( "TwoPoint/group13/10/3/individual_gain_mean.txt")
TwoE13_E3_10 = read.table( "TwoPoint/group13/10/4/individual_gain_mean.txt")
TwoE13_E5_10 = read.table( "TwoPoint/group13/10/5/individual_gain_mean.txt")
TwoE13_E6_10 = read.table( "TwoPoint/group13/10/6/individual_gain_mean.txt")
TwoE13_E7_10 = read.table( "TwoPoint/group13/10/7/individual_gain_mean.txt")
TwoE13_E8_10 = read.table( "TwoPoint/group13/10/8/individual_gain_mean.txt")

TwoE13_10 = mean(c ( TwoE13_E1_10$V1,  TwoE13_E2_10$V1,  TwoE13_E3_10$V1,  TwoE13_E3_10$V1,  TwoE13_E5_10$V1,  TwoE13_E6_10$V1,  TwoE13_E7_10$V1,  TwoE13_E8_10$V1))

BestValues[1,"X2E13"] =  TwoE13_1
BestValues[2,"X2E13"] =  TwoE13_2
BestValues[3,"X2E13"] =  TwoE13_3
BestValues[4,"X2E13"] =  TwoE13_4
BestValues[5,"X2E13"] =  TwoE13_5
BestValues[6,"X2E13"] =  TwoE13_6
BestValues[7,"X2E13"] =  TwoE13_7
BestValues[8,"X2E13"] =  TwoE13_8
BestValues[9,"X2E13"] =  TwoE13_9
BestValues[10,"X2E13"] =  TwoE13_10

#boxplot(x = BestValues, col = (c("slateblue2", "yellow2")), ylab = "Individual gain", names = c("1", "1", "2", "2", "3", "3"),
#        xlab = "Enemy") 
#legend("topright", inset=.02, title="EA",
#       c("One point", "Two point"), fill= unique(c("slateblue2", "yellow2")), horiz=TRUE, cex=0.8)

par(mfrow=c(1,2))

par(mar=c(5,7,3,2)) #bottom, left, top and right margins 

#boxplot(x = BestValues[,1:2], col = (c("slateblue2", "yellow2")), ylab = "Individual gain", names = c("1&3", "1&3"),
#        xlab = "Enemy group") 
#legend("topleft", inset=.02, title="EA",
#       c("One point", "Two point"), fill= unique(c("slateblue2", "yellow2")), horiz=TRUE, cex=0.8)


#boxplot(x = BestValues[,3:4], col = (c("slateblue2", "yellow2")), ylab = "Individual gain", names = c("7&8", "7&8"),
#        xlab = "Enemy group") 
#legend("topleft", inset=.02, title="EA",
#       c("One point", "Two point"), fill= unique(c("slateblue2", "yellow2")), horiz=TRUE, cex=0.8)



boxplot(x = BestValues[,1:2], col = (c("slateblue2", "yellow2")), names = c("1&3", "1&3"),
        xlab = "Enemy group", cex.lab = 2, las = 1, cex.axis = 1.5) 
legend("topleft", inset=.02, title="EA",
       c("One point", "Two point"), fill= unique(c("slateblue2", "yellow2")), horiz=FALSE, cex=1.2)
title("Best Individuals", "topleft", ylab="Individual gain", line=5, cex.lab=2)

title("Best Individuals")
par(ps = 12, cex.main = 1.7)


boxplot(x = BestValues[,3:4], col = (c("slateblue2", "yellow2")), names = c("7&8", "7&8"),
        xlab = "Enemy group", cex.lab = 2, las = 1, cex.axis = 1.5) 
legend("topleft", inset=.02, title="EA",
       c("One point", "Two point"), fill= unique(c("slateblue2", "yellow2")), horiz=FALSE, cex=1)
title(ylab="Individual gain", line=5, cex.lab=2)

#xaxt="n", yaxt="n"
#axis(2, cex.axis=1.3)
#axis(1,cex.axis=1.2)

#par(mfrow=c(2,2)) 
#hist(BestValues$X1E13, breaks = 3)
#hist(BestValues$X1E78, breaks = 3)
#hist(BestValues$X2E13, breaks = 3)
#hist(BestValues$X2E78, breaks = 3)

typeof(BestValues) #double 
BestValues = as.data.frame(BestValues)

x1 = BestValues$X1E13
x2 = BestValues$X1E78
y1 = BestValues$X2E13
y2 = BestValues$X2E78

#t.test(x1, y1)
#t.test(x2, y2)

#t.test(x1, x2)
#t.test(y1, y2)

############
#for the normality assumption
shapiro.test(x1)
shapiro.test(y1)

#for the variance assumption
var.test(x1, y1)

t.test(x1,y1, alternative="less", var.equal = TRUE)

#for the normality assumption
shapiro.test(x2)
shapiro.test(y2)

#for the variance assumption
var.test(x2,y2)

t.test(x2,y2, alternative="less", var.equal = TRUE)








