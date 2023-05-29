files <- list.files(pattern = "count.csv$", recursive = T)
counts <- do.call("cbind", lapply(files, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))
write.csv(counts, "Raw_counts.csv")
ConfI <- data.frame(matrix(ncol = 3, nrow = 110), row.names = counts[,"t"])
colnames(ConfI) <- c("Mean", "Lower", "Upper") 

######If use quantile###############################################
for (i in 1:110){
  ConfI[i,1] <- mean(as.numeric(counts[,c(1:100)*3][i,]))
  ConfI[i,2] <- quantile(as.numeric(counts[,c(1:100)*3][i,]), 0.025)
  ConfI[i,3] <- quantile(as.numeric(counts[,c(1:100)*3][i,]), 0.975)
}

######If use SD#####################################################
#for (i in 1:110){
#  ConfI[i,1] <- mean(as.numeric(counts[,c(1:100)*3][i,]))
#  ConfI[i,2] <- ConfI[i,1]-sd(as.numeric(counts[,c(1:100)*3][i,]))
#  ConfI[i,3] <- ConfI[i,1]+sd(as.numeric(counts[,c(1:100)*3][i,]))
#}
####################################################################

ConfI[,"t"] <- counts[,"t"] 
write.csv(ConfI, "q025_counts.csv")


###Calculate nucleotide diversity
filez <- list.files(pattern = "sites.pi$", recursive = T)
pis <- do.call("cbind", lapply(filez, function(fn){data.frame(Filename=fn, read.table(fn, header = T))}))
write.csv(pis, "Raw_pis.csv")
Pis <- data.frame(matrix(ncol = 100, nrow = 23), row.names = sort(append(as.character(1:22*5-5), "109")))
for (j in 1:100){
  for (i in 1:23){
    Pis[i,j] <- mean(2*pis[,i*4+(j)*92]*(1-pis[,i*4+(j)*92]))
  }
}
ConfIP <- data.frame(matrix(ncol = 3, nrow = 23), row.names = sort(append(as.character(1:22*5-5), "109")))
colnames(ConfIP) <- c("Mean", "Lower", "Upper") 

for (i in 1:23){
  ConfIP[i,1] <- mean(as.numeric(Pis[i,]))
  ConfIP[i,2] <- quantile(as.numeric(Pis[i,]), 0.025)
  ConfIP[i,3] <- quantile(as.numeric(Pis[i,]), 0.975)
}
######If use SD#####################################################
#for (i in 1:23){
#  ConfIP[i,1] <- mean(unlist((c(pis[,(1:100)*92+i*4]))))
#  ConfIP[i,2] <- ConfIP[i,1]-sd(unlist((c(pis[,(1:100)*92+i*4]))))
#  ConfIP[i,3] <- ConfIP[i,1]+sd(unlist((c(pis[,(1:100)*92+i*4]))))
#}
####################################################################

ConfIP[,"t"] <- as.numeric(rownames(ConfIP)) 
ConfIP <- ConfIP[order(ConfIP$t),]
write.csv(ConfIP, "q025_pis.csv")

###Calculate number of fixed loci
Fixed <- data.frame(matrix(ncol = 100, nrow = 23), row.names = sort(append(as.character(1:22*5-5), "109")))

for (j in 1:100){
  for (i in 1:23){
  Fixed[i,j] <- sum(pis[,i*4+(j)*92]==0)
  }
}  

ConfIF <- data.frame(matrix(ncol = 3, nrow = 23), row.names = sort(append(as.character(1:22*5-5), "109")))
colnames(ConfIF) <- c("Mean", "Lower", "Upper") 
for (i in 1:23){
  ConfIF[i,1] <- mean(as.numeric(Fixed[i,]))
  ConfIF[i,2] <- quantile(as.numeric(Fixed[i,]), 0.025)
  ConfIF[i,3] <- quantile(as.numeric(Fixed[i,]), 0.975)
}

######If use SD#####################################################
#for (i in 1:23){
#  ConfIF[i,1] <- mean(as.numeric(Fixed[i,]))
#  ConfIF[i,2] <- ConfIF[i,1]-sd(as.numeric(Fixed[i,]))
#  ConfIF[i,3] <- ConfIF[i,1]+sd(as.numeric(Fixed[i,]))
#}
####################################################################

ConfIF[,"t"] <- as.numeric(rownames(ConfIF)) 
ConfIF <- ConfIF[order(ConfIF$t),]
write.csv(ConfIF, "q025_fixed.csv")

###Calculate genetic structure
filex <- list.files(pattern = "mantelrr.csv$", recursive = T)
mrs <- do.call("cbind", lapply(filex[-1], function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))
write.csv(mrs, "Raw_mrs.csv")
ConfIFr <- data.frame(matrix(ncol = 3, nrow = 23), row.names = mrs[,"t"])
colnames(ConfIFr) <- c("Mean", "Lower", "Upper") 

######If use quantile###############################################
for (i in 1:23){
  ConfIFr[i,1] <- mean(as.numeric(mrs[,c(1:100)*4-1][i,]))
  ConfIFr[i,2] <- quantile(as.numeric(mrs[,c(1:100)*4-1][i,]), 0.025)
  ConfIFr[i,3] <- quantile(as.numeric(mrs[,c(1:100)*4-1][i,]), 0.975)
}

######If use SD#####################################################
#for (i in 1:23){
#  ConfIFr[i,1] <- mean(as.numeric(mrs[,c(1:100)*4-1][i,]))
#  ConfIFr[i,2] <- ConfI[i,1]-sd(as.numeric(mrs[,c(1:100)*4-1][i,]))
#  ConfIFr[i,3] <- ConfI[i,1]+sd(as.numeric(mrs[,c(1:100)*4-1][i,]))
#}
####################################################################

ConfIFr[,"t"] <- mrs[,"t"] 
write.csv(ConfIFr, "q025_mrs.csv")


