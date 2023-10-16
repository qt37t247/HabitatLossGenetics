###Individual counts
files <- list.files(pattern = "count.csv$", recursive = F)
counts <- do.call("cbind", lapply(files, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))
write.csv(counts, "Raw_counts.csv")
ConfI <- data.frame(matrix(ncol = 3, nrow = 210), row.names = counts[,"t"])
colnames(ConfI) <- c("Mean", "Lower", "Upper") 

######If use quantile###############################################
for (i in 1:210){
  ConfI[i,1] <- mean(as.numeric(counts[,c(1:length(files))*3][i,]))
  ConfI[i,2] <- quantile(as.numeric(counts[,c(1:length(files))*3][i,]), 0.025)
  ConfI[i,3] <- quantile(as.numeric(counts[,c(1:length(files))*3][i,]), 0.975)
}

######If use SD#####################################################
#for (i in 1:210){
#  ConfI[i,1] <- mean(as.numeric(counts[,c(1:length(files))*3][i,]))
#  ConfI[i,2] <- ConfI[i,1]-sd(as.numeric(counts[,c(1:length(files))*3][i,]))
#  ConfI[i,3] <- ConfI[i,1]+sd(as.numeric(counts[,c(1:length(files))*3][i,]))
#}
####################################################################

ConfI[,"t"] <- counts[,"t"] 
write.csv(ConfI, "q025_counts.csv")


###Nucleotide diversity & Fixed loci
filez <- list.files(pattern = "pis.csv$", recursive = F)
pis <- do.call("cbind", lapply(filez, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))
write.csv(pis, "Raw_pis.csv")

##Nucleotide diversity
ConfIpi <- data.frame(matrix(ncol = 3, nrow = 43), row.names = pis[,"t"])
colnames(ConfIpi) <- c("Mean", "Lower", "Upper") 

######If use quantile###############################################
for (i in 1:43){
  ConfIpi[i,1] <- mean(as.numeric(pis[,c(1:length(files))*4-1][i,]))
  ConfIpi[i,2] <- quantile(as.numeric(pis[,c(1:length(files))*4-1][i,]), 0.025)
  ConfIpi[i,3] <- quantile(as.numeric(pis[,c(1:length(files))*4-1][i,]), 0.975)
}

######If use SD#####################################################
#for (i in 1:43){
#  ConfIpi[i,1] <- mean(as.numeric(pis[,c(1:length(files))*4-1][i,]))
#  ConfIpi[i,2] <- ConfIpi[i,1]-sd(as.numeric(pis[,c(1:length(files))*4-1][i,]))
#  ConfIpi[i,3] <- ConfIpi[i,1]+sd(as.numeric(pis[,c(1:length(files))*4-1][i,]))
#}
####################################################################

ConfIpi[,"t"] <- as.numeric(rownames(ConfIpi)) 
ConfIpi <- ConfIpi[order(ConfIpi$t),]
write.csv(ConfIpi, "q025_pis.csv")


##Fixed loci
ConfIfix <- data.frame(matrix(ncol = 3, nrow = 43), row.names = pis[,"t"])
colnames(ConfIfix) <- c("Mean", "Lower", "Upper") 

######If use quantile###############################################
for (i in 1:43){
  ConfIfix[i,1] <- mean(as.numeric(pis[,c(1:length(files))*4][i,]))
  ConfIfix[i,2] <- quantile(as.numeric(pis[,c(1:length(files))*4][i,]), 0.025)
  ConfIfix[i,3] <- quantile(as.numeric(pis[,c(1:length(files))*4][i,]), 0.975)
}

######If use SD#####################################################
#for (i in 1:43){
#  ConfIfix[i,1] <- mean(as.numeric(pis[,c(1:length(files))*4][i,]))
#  ConfIfix[i,2] <- ConfIfix[i,1]-sd(as.numeric(pis[,c(1:length(files))*4][i,]))
#  ConfIfix[i,3] <- ConfIfix[i,1]+sd(as.numeric(pis[,c(1:length(files))*4][i,]))
#}
####################################################################

ConfIfix[,"t"] <- as.numeric(rownames(ConfIfix)) 
ConfIfix <- ConfIfix[order(ConfIfix$t),]
write.csv(ConfIfix, "q025_fixed.csv")


###Calculate genetic structure
filex <- list.files(pattern = "mantelrr.csv$", recursive = F)
mrs <- do.call("cbind", lapply(filex, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))
write.csv(mrs, "Raw_mrs.csv")
ConfIFr <- data.frame(matrix(ncol = 3, nrow = 43), row.names = mrs[,"t"])
colnames(ConfIFr) <- c("Mean", "Lower", "Upper") 

######If use quantile###############################################
for (i in 1:43){
  ConfIFr[i,1] <- mean(as.numeric(mrs[,c(1:length(files))*4-1][i,]))
  ConfIFr[i,2] <- quantile(as.numeric(mrs[,c(1:length(files))*4-1][i,]), 0.025)
  ConfIFr[i,3] <- quantile(as.numeric(mrs[,c(1:length(files))*4-1][i,]), 0.975)
}

######If use SD#####################################################
#for (i in 1:43){
#  ConfIFr[i,1] <- mean(as.numeric(mrs[,c(1:length(files))*4-1][i,]))
#  ConfIFr[i,2] <- ConfIFr[i,1]-sd(as.numeric(mrs[,c(1:length(files))*4-1][i,]))
#  ConfIFr[i,3] <- ConfIFr[i,1]+sd(as.numeric(mrs[,c(1:length(files))*4-1][i,]))
#}
####################################################################

ConfIFr[,"t"] <- as.numeric(rownames(ConfIFr)) 
ConfIFr <- ConfIFr[order(ConfIFr$t),] 
write.csv(ConfIFr, "q025_mrs.csv")


###Calculate inbreeding coefficient
filey <- list.files(pattern = "fisf.csv$", recursive = T)
fis <- do.call("cbind", lapply(filey, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))
write.csv(fis, "Raw_fis.csv")
ConfIFi <- data.frame(matrix(ncol = 3, nrow = 43), row.names = fis[,"t"])
colnames(ConfIFi) <- c("Mean", "Lower", "Upper") 

######If use quantile###############################################
for (i in 1:43){
  ConfIFi[i,1] <- mean(as.numeric(fis[,c(1:length(files))*3][i,]))
  ConfIFi[i,2] <- quantile(as.numeric(fis[,c(1:length(files))*3][i,]), 0.025)
  ConfIFi[i,3] <- quantile(as.numeric(fis[,c(1:length(files))*3][i,]), 0.975)
}

######If use SD#####################################################
#for (i in 1:43){
#  ConfIFi[i,1] <- mean(as.numeric(fis[,c(1:length(files))*3][i,]))
#  ConfIFi[i,2] <- ConfI[i,1]-sd(as.numeric(fis[,c(1:length(files))*3][i,]))
#  ConfIFi[i,3] <- ConfI[i,1]+sd(as.numeric(fis[,c(1:length(files))*3][i,]))
#}
####################################################################

ConfIFi[,"t"] <- as.numeric(rownames(ConfIFi)) 
ConfIFi <- ConfIFi[order(ConfIFi$t),]
write.csv(ConfIFi, "q025_fis.csv")