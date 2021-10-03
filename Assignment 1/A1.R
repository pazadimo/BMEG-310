Data <-  read.csv(file="E:/REp/BMEG-310/Assignment 1/data/VCFdata.csv")
summary(Data)
head(Data)


####################################
##Q1
number_INDEL <- length(which(Data[,"INDEL"]==TRUE))
number_INDEL
print("There are INDELs:")
print(number_INDEL)

####################################
##Q2

INDEL_index <-  which(Data[,"INDEL"]==TRUE)
DP_higher_15 <- which(Data[INDEL_index,"DP"] > 15 )
DP_higher_15
print("Varients with DP higher than 15 and INDEL== TRUE:")
DP_higher_15


####################################
##Q3

add_prob <- function(address){
  Data <- read.csv(file=address)
  number_INDEL <- length(which(Data[,"INDEL"]==TRUE))
  number_INDEL
  INDEL_index <-  which(Data[,"INDEL"]==TRUE)
  prob <- 1 - 10^(-(Data[,"QUAL"]/10.0))
  print(prob)
  print(length(prob))
  tmp <- cbind(Data, prob)
  write.csv(tmp, "E:/REp/BMEG-310/Assignment 1/data/modified_file.csv")
}

add_prob("E:/REp/BMEG-310/Assignment 1/data/VCFdata.csv")

####################################
##Q4


iiii <- as.data.frame(table(Data$ALT))


####################################
##Q5







