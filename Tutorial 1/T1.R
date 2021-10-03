age <- c(15, 22, 45, 52, 73, 81)
age[5]
age
age[c(3,5,6)]
#age <- (age > 20)
#age
ff <- c(age > 50 | age < 18)
ff
age[age > 50 | age < 18]
which(age > 50 | age < 18)
metadata <- read.csv(file="E:/REp/BMEG-310/Tutorial 1/data/mouse_exp_design.csv")
metadata
head(metadata)
metadata[1,2]
str(metadata)
class(metadata[,1])
metadata[1:3 , "celltype"]
metadata[c("sample1","sample3") , "celltype"]
metadata[c("sample1","sample3") , "replicate"]
metadata$genotype[1:2]
idx <- metadata$genotype == "Wt"
idx
metadata[idx,]
sub_meta <- metadata[idx, ]
sub_meta
write.csv(sub_meta, file="E:/REp/BMEG-310/Tutorial 1/data/subset_meta.csv")
mydf <- iris
mydf
mydf
myve <- numeric(length(mydf[,1]))
myve
f <- seq(3, 10, 1)
f
for(i in seq(myve)) {
  myve[i] <- mean(as.numeric(mydf[i,1:3]))
}
myve[1:8]


high_avg <- function(address){
  GSE <- read.csv(file=address)
  GSE
  head(GSE)
  L = length(GSE[2,])
  max_index <- which.max(rowMeans(GSE[,2:L], na.rm=TRUE))
  print(max_index)
  max_val <- max(rowMeans(GSE[,2:L], na.rm=TRUE))
  print(max_val)
}

high_avg("E:/REp/BMEG-310/Tutorial 1/data/GSE71562.csv")
