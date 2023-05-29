library(vegan)

files <- list.files(pattern = "0.csv$", recursive = T)
filez <- list.files(pattern = ".dist$", recursive = T)

mantelrr <- data.frame(matrix(ncol = 3, nrow = length(files)))
colnames(mantelrr) <- c("t", "r", "p")
mantelrr[,1] <- c(0,10,100,105,109,15,20,25,30,35,40,45,5,50,55,60,65,70,75,80,85,90,95) 

for (i in 1:length(files)){
  
###Spatial distance matrix
eudist <- read.csv(files[i])
eudistx <- dist(eudist[,c(6,7)])

###Genetic distance matrix
gedist <- scan(filez[i])
dims <- floor(sqrt(length(gedist) * 2))+1
m <- matrix(NA, dims, dims)
m[upper.tri(m, diag = FALSE)] <- gedist
m <- t(m)
gedistx<-as.dist(m)

rrr <- mantel(gedistx, eudistx)
mantelrr[i,2] <- rrr$statistic
mantelrr[i,3] <- rrr$signif
}

write.csv(mantelrr, "mantelrr.csv", row.names = FALSE)
