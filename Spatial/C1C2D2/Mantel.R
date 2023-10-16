library(vegan)

files <- list.files(pattern = "0.csv$", recursive = F)
filez <- list.files(pattern = ".dist$", recursive = F)
filex <- list.files(pattern = ".het$", recursive = F)
filey <- list.files(pattern = ".sites.pi$", recursive = F)

###Nucleotide diversity & fixed loci
ppp <- data.frame(matrix(ncol = 3, nrow = length(filey)))
colnames(ppp) <- c("t", "pi", "fixed")
ppp[,1] <- c(0,10,100,105,110,115,120,125,130,135,140,145,15,150,155,160,165,170,175,180,185,190,195,20,200,205,209,25,30,35,40,45,5,50,55,60,65,70,75,80,85,90,95) 

for (i in 1:length(filey)){
  
ppp[i,2] <- mean(read.table(filey[i], sep="\t", header=TRUE)[,3])
ppp[i,3] <- sum((read.table(filey[i], sep="\t", header=TRUE)[,3]==0))

}

write.csv(ppp, "pis.csv", row.names = FALSE)


###Inbreeding coefficient
fff <- data.frame(matrix(ncol = 2, nrow = length(filex)))
colnames(fff) <- c("t", "f")
fff[,1] <- c(0,10,100,105,110,115,120,125,130,135,140,145,15,150,155,160,165,170,175,180,185,190,195,20,200,205,209,25,30,35,40,45,5,50,55,60,65,70,75,80,85,90,95) 

for (i in 1:length(filex)){
  
fff[i,2] <- mean(read.table(filex[i], sep="\t", header=TRUE)[,5])

}

write.csv(fff, "fisf.csv", row.names = FALSE)


###Mantel analysis
mantelrr <- data.frame(matrix(ncol = 3, nrow = length(files)))
colnames(mantelrr) <- c("t", "r", "p")
mantelrr[,1] <- c(0,10,100,105,110,115,120,125,130,135,140,145,15,150,155,160,165,170,175,180,185,190,195,20,200,205,209,25,30,35,40,45,5,50,55,60,65,70,75,80,85,90,95) 

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
