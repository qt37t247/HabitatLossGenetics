##########################Number of individuals##################################
counts.files <- list.files(recursive=TRUE, full.names=TRUE, pattern="_counts.csv$")
counts <- do.call("cbind", lapply(counts.files, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))

##Species A
counts_a <- counts[,1:114]

#p_a = 0 
plot(counts_a[,114], counts_a[,111], ylim = c(0, 4500), type = "l")
lines(counts_a[,114], counts_a[,112], type = "l", lty="dashed")
lines(counts_a[,114], counts_a[,113], type = "l", lty="dashed")

lines(counts_a[,42], counts_a[,39], type = "l", col="red4")
lines(counts_a[,42], counts_a[,40], type = "l", col="red4", lty="dashed")
lines(counts_a[,42], counts_a[,41], type = "l", col="red4", lty="dashed")

lines(counts_a[,48], counts_a[,45], type = "l", col="red")
lines(counts_a[,48], counts_a[,46], type = "l", col="red", lty="dashed")
lines(counts_a[,48], counts_a[,47], type = "l", col="red", lty="dashed")

lines(counts_a[,54], counts_a[,51], type = "l", col="pink")
lines(counts_a[,54], counts_a[,52], type = "l", col="pink", lty="dashed")
lines(counts_a[,54], counts_a[,53], type = "l", col="pink", lty="dashed")


lines(counts_a[,24], counts_a[,21], type = "l", col="green4")
lines(counts_a[,24], counts_a[,22], type = "l", col="green4", lty="dashed")
lines(counts_a[,24], counts_a[,23], type = "l", col="green4", lty="dashed")

lines(counts_a[,30], counts_a[,27], type = "l", col="green")
lines(counts_a[,30], counts_a[,28], type = "l", col="green", lty="dashed")
lines(counts_a[,30], counts_a[,29], type = "l", col="green", lty="dashed")

lines(counts_a[,36], counts_a[,33], type = "l", col="darkolivegreen1")
lines(counts_a[,36], counts_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_a[,36], counts_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_a[,6], counts_a[,3], type = "l", col="blue4")
lines(counts_a[,6], counts_a[,4], type = "l", col="blue4", lty="dashed")
lines(counts_a[,6], counts_a[,5], type = "l", col="blue4", lty="dashed")

lines(counts_a[,12], counts_a[,9], type = "l", col="blue")
lines(counts_a[,12], counts_a[,10], type = "l", col="blue", lty="dashed")
lines(counts_a[,12], counts_a[,11], type = "l", col="blue", lty="dashed")

lines(counts_a[,18], counts_a[,15], type = "l", col="deepskyblue")
lines(counts_a[,18], counts_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(counts_a[,18], counts_a[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(counts_a[,114], counts_a[,111], ylim = c(0, 4500), type = "l")
lines(counts_a[,114], counts_a[,112], type = "l", lty="dashed")
lines(counts_a[,114], counts_a[,113], type = "l", lty="dashed")

lines(counts_a[,96], counts_a[,93], type = "l", col="red4")
lines(counts_a[,96], counts_a[,94], type = "l", col="red4", lty="dashed")
lines(counts_a[,96], counts_a[,95], type = "l", col="red4", lty="dashed")

lines(counts_a[,102], counts_a[,99], type = "l", col="red")
lines(counts_a[,102], counts_a[,100], type = "l", col="red", lty="dashed")
lines(counts_a[,102], counts_a[,101], type = "l", col="red", lty="dashed")

lines(counts_a[,108], counts_a[,105], type = "l", col="pink")
lines(counts_a[,108], counts_a[,106], type = "l", col="pink", lty="dashed")
lines(counts_a[,108], counts_a[,107], type = "l", col="pink", lty="dashed")

lines(counts_a[,78], counts_a[,75], type = "l", col="green4")
lines(counts_a[,78], counts_a[,76], type = "l", col="green4", lty="dashed")
lines(counts_a[,78], counts_a[,77], type = "l", col="green4", lty="dashed")

lines(counts_a[,84], counts_a[,81], type = "l", col="green")
lines(counts_a[,84], counts_a[,82], type = "l", col="green", lty="dashed")
lines(counts_a[,84], counts_a[,83], type = "l", col="green", lty="dashed")

lines(counts_a[,90], counts_a[,87], type = "l", col="darkolivegreen1")
lines(counts_a[,90], counts_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_a[,90], counts_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_a[,60], counts_a[,57], type = "l", col="blue4")
lines(counts_a[,60], counts_a[,58], type = "l", col="blue4", lty="dashed")
lines(counts_a[,60], counts_a[,59], type = "l", col="blue4", lty="dashed")

lines(counts_a[,66], counts_a[,63], type = "l", col="blue")
lines(counts_a[,66], counts_a[,64], type = "l", col="blue", lty="dashed")
lines(counts_a[,66], counts_a[,65], type = "l", col="blue", lty="dashed")

lines(counts_a[,72], counts_a[,69], type = "l", col="deepskyblue")
lines(counts_a[,72], counts_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(counts_a[,72], counts_a[,71], type = "l", col="deepskyblue", lty="dashed")

##Species B
counts_b <- counts[,115:228]

#p_a = 0 
plot(counts_b[,114], counts_b[,111], ylim = c(0, 4500), type = "l")
lines(counts_b[,114], counts_b[,112], type = "l", lty="dashed")
lines(counts_b[,114], counts_b[,113], type = "l", lty="dashed")

lines(counts_b[,42], counts_b[,39], type = "l", col="red4")
lines(counts_b[,42], counts_b[,40], type = "l", col="red4", lty="dashed")
lines(counts_b[,42], counts_b[,41], type = "l", col="red4", lty="dashed")

lines(counts_b[,48], counts_b[,45], type = "l", col="red")
lines(counts_b[,48], counts_b[,46], type = "l", col="red", lty="dashed")
lines(counts_b[,48], counts_b[,47], type = "l", col="red", lty="dashed")

lines(counts_b[,54], counts_b[,51], type = "l", col="pink")
lines(counts_b[,54], counts_b[,52], type = "l", col="pink", lty="dashed")
lines(counts_b[,54], counts_b[,53], type = "l", col="pink", lty="dashed")


lines(counts_b[,24], counts_b[,21], type = "l", col="green4")
lines(counts_b[,24], counts_b[,22], type = "l", col="green4", lty="dashed")
lines(counts_b[,24], counts_b[,23], type = "l", col="green4", lty="dashed")

lines(counts_b[,30], counts_b[,27], type = "l", col="green")
lines(counts_b[,30], counts_b[,28], type = "l", col="green", lty="dashed")
lines(counts_b[,30], counts_b[,29], type = "l", col="green", lty="dashed")

lines(counts_b[,36], counts_b[,33], type = "l", col="darkolivegreen1")
lines(counts_b[,36], counts_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_b[,36], counts_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_b[,6], counts_b[,3], type = "l", col="blue4")
lines(counts_b[,6], counts_b[,4], type = "l", col="blue4", lty="dashed")
lines(counts_b[,6], counts_b[,5], type = "l", col="blue4", lty="dashed")

lines(counts_b[,12], counts_b[,9], type = "l", col="blue")
lines(counts_b[,12], counts_b[,10], type = "l", col="blue", lty="dashed")
lines(counts_b[,12], counts_b[,11], type = "l", col="blue", lty="dashed")

lines(counts_b[,18], counts_b[,15], type = "l", col="deepskyblue")
lines(counts_b[,18], counts_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(counts_b[,18], counts_b[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(counts_b[,114], counts_b[,111], ylim = c(0, 4500), type = "l")
lines(counts_b[,114], counts_b[,112], type = "l", lty="dashed")
lines(counts_b[,114], counts_b[,113], type = "l", lty="dashed")

lines(counts_b[,96], counts_b[,93], type = "l", col="red4")
lines(counts_b[,96], counts_b[,94], type = "l", col="red4", lty="dashed")
lines(counts_b[,96], counts_b[,95], type = "l", col="red4", lty="dashed")

lines(counts_b[,102], counts_b[,99], type = "l", col="red")
lines(counts_b[,102], counts_b[,100], type = "l", col="red", lty="dashed")
lines(counts_b[,102], counts_b[,101], type = "l", col="red", lty="dashed")

lines(counts_b[,108], counts_b[,105], type = "l", col="pink")
lines(counts_b[,108], counts_b[,106], type = "l", col="pink", lty="dashed")
lines(counts_b[,108], counts_b[,107], type = "l", col="pink", lty="dashed")

lines(counts_b[,78], counts_b[,75], type = "l", col="green4")
lines(counts_b[,78], counts_b[,76], type = "l", col="green4", lty="dashed")
lines(counts_b[,78], counts_b[,77], type = "l", col="green4", lty="dashed")

lines(counts_b[,84], counts_b[,81], type = "l", col="green")
lines(counts_b[,84], counts_b[,82], type = "l", col="green", lty="dashed")
lines(counts_b[,84], counts_b[,83], type = "l", col="green", lty="dashed")

lines(counts_b[,90], counts_b[,87], type = "l", col="darkolivegreen1")
lines(counts_b[,90], counts_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_b[,90], counts_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_b[,60], counts_b[,57], type = "l", col="blue4")
lines(counts_b[,60], counts_b[,58], type = "l", col="blue4", lty="dashed")
lines(counts_b[,60], counts_b[,59], type = "l", col="blue4", lty="dashed")

lines(counts_b[,66], counts_b[,63], type = "l", col="blue")
lines(counts_b[,66], counts_b[,64], type = "l", col="blue", lty="dashed")
lines(counts_b[,66], counts_b[,65], type = "l", col="blue", lty="dashed")

lines(counts_b[,72], counts_b[,69], type = "l", col="deepskyblue")
lines(counts_b[,72], counts_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(counts_b[,72], counts_b[,71], type = "l", col="deepskyblue", lty="dashed")


##Species C
counts_c <- counts[,229:342]

#p_a = 0 
plot(counts_c[,114], counts_c[,111], ylim = c(0, 4500), type = "l")
lines(counts_c[,114], counts_c[,112], type = "l", lty="dashed")
lines(counts_c[,114], counts_c[,113], type = "l", lty="dashed")

lines(counts_c[,42], counts_c[,39], type = "l", col="red4")
lines(counts_c[,42], counts_c[,40], type = "l", col="red4", lty="dashed")
lines(counts_c[,42], counts_c[,41], type = "l", col="red4", lty="dashed")

lines(counts_c[,48], counts_c[,45], type = "l", col="red")
lines(counts_c[,48], counts_c[,46], type = "l", col="red", lty="dashed")
lines(counts_c[,48], counts_c[,47], type = "l", col="red", lty="dashed")

lines(counts_c[,54], counts_c[,51], type = "l", col="pink")
lines(counts_c[,54], counts_c[,52], type = "l", col="pink", lty="dashed")
lines(counts_c[,54], counts_c[,53], type = "l", col="pink", lty="dashed")


lines(counts_c[,24], counts_c[,21], type = "l", col="green4")
lines(counts_c[,24], counts_c[,22], type = "l", col="green4", lty="dashed")
lines(counts_c[,24], counts_c[,23], type = "l", col="green4", lty="dashed")

lines(counts_c[,30], counts_c[,27], type = "l", col="green")
lines(counts_c[,30], counts_c[,28], type = "l", col="green", lty="dashed")
lines(counts_c[,30], counts_c[,29], type = "l", col="green", lty="dashed")

lines(counts_c[,36], counts_c[,33], type = "l", col="darkolivegreen1")
lines(counts_c[,36], counts_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_c[,36], counts_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_c[,6], counts_c[,3], type = "l", col="blue4")
lines(counts_c[,6], counts_c[,4], type = "l", col="blue4", lty="dashed")
lines(counts_c[,6], counts_c[,5], type = "l", col="blue4", lty="dashed")

lines(counts_c[,12], counts_c[,9], type = "l", col="blue")
lines(counts_c[,12], counts_c[,10], type = "l", col="blue", lty="dashed")
lines(counts_c[,12], counts_c[,11], type = "l", col="blue", lty="dashed")

lines(counts_c[,18], counts_c[,15], type = "l", col="deepskyblue")
lines(counts_c[,18], counts_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(counts_c[,18], counts_c[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(counts_c[,114], counts_c[,111], ylim = c(0, 4500), type = "l")
lines(counts_c[,114], counts_c[,112], type = "l", lty="dashed")
lines(counts_c[,114], counts_c[,113], type = "l", lty="dashed")

lines(counts_c[,96], counts_c[,93], type = "l", col="red4")
lines(counts_c[,96], counts_c[,94], type = "l", col="red4", lty="dashed")
lines(counts_c[,96], counts_c[,95], type = "l", col="red4", lty="dashed")

lines(counts_c[,102], counts_c[,99], type = "l", col="red")
lines(counts_c[,102], counts_c[,100], type = "l", col="red", lty="dashed")
lines(counts_c[,102], counts_c[,101], type = "l", col="red", lty="dashed")

lines(counts_c[,108], counts_c[,105], type = "l", col="pink")
lines(counts_c[,108], counts_c[,106], type = "l", col="pink", lty="dashed")
lines(counts_c[,108], counts_c[,107], type = "l", col="pink", lty="dashed")

lines(counts_c[,78], counts_c[,75], type = "l", col="green4")
lines(counts_c[,78], counts_c[,76], type = "l", col="green4", lty="dashed")
lines(counts_c[,78], counts_c[,77], type = "l", col="green4", lty="dashed")

lines(counts_c[,84], counts_c[,81], type = "l", col="green")
lines(counts_c[,84], counts_c[,82], type = "l", col="green", lty="dashed")
lines(counts_c[,84], counts_c[,83], type = "l", col="green", lty="dashed")

lines(counts_c[,90], counts_c[,87], type = "l", col="darkolivegreen1")
lines(counts_c[,90], counts_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_c[,90], counts_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_c[,60], counts_c[,57], type = "l", col="blue4")
lines(counts_c[,60], counts_c[,58], type = "l", col="blue4", lty="dashed")
lines(counts_c[,60], counts_c[,59], type = "l", col="blue4", lty="dashed")

lines(counts_c[,66], counts_c[,63], type = "l", col="blue")
lines(counts_c[,66], counts_c[,64], type = "l", col="blue", lty="dashed")
lines(counts_c[,66], counts_c[,65], type = "l", col="blue", lty="dashed")

lines(counts_c[,72], counts_c[,69], type = "l", col="deepskyblue")
lines(counts_c[,72], counts_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(counts_c[,72], counts_c[,71], type = "l", col="deepskyblue", lty="dashed")

###############Nucleotide diversity#############################

pis.files <- list.files(recursive=TRUE, full.names=TRUE, pattern="_pis.csv$")
pis <- do.call("cbind", lapply(pis.files, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))

##Species A
pis_a <- pis[,1:114]

#p_a = 0
plot(pis_a[,114], pis_a[,111], ylim = c(0.36, 0.42), type = "l")
lines(pis_a[,114], pis_a[,112], type = "l", lty="dashed")
lines(pis_a[,114], pis_a[,113], type = "l", lty="dashed")

lines(pis_a[,42], pis_a[,39], type = "l", col="red4")
lines(pis_a[,42], pis_a[,40], type = "l", col="red4", lty="dashed")
lines(pis_a[,42], pis_a[,41], type = "l", col="red4", lty="dashed")

lines(pis_a[,48], pis_a[,45], type = "l", col="red")
lines(pis_a[,48], pis_a[,46], type = "l", col="red", lty="dashed")
lines(pis_a[,48], pis_a[,47], type = "l", col="red", lty="dashed")

lines(pis_a[,54], pis_a[,51], type = "l", col="pink")
lines(pis_a[,54], pis_a[,52], type = "l", col="pink", lty="dashed")
lines(pis_a[,54], pis_a[,53], type = "l", col="pink", lty="dashed")


lines(pis_a[,24], pis_a[,21], type = "l", col="green4")
lines(pis_a[,24], pis_a[,22], type = "l", col="green4", lty="dashed")
lines(pis_a[,24], pis_a[,23], type = "l", col="green4", lty="dashed")

lines(pis_a[,30], pis_a[,27], type = "l", col="green")
lines(pis_a[,30], pis_a[,28], type = "l", col="green", lty="dashed")
lines(pis_a[,30], pis_a[,29], type = "l", col="green", lty="dashed")

lines(pis_a[,36], pis_a[,33], type = "l", col="darkolivegreen1")
lines(pis_a[,36], pis_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_a[,36], pis_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_a[,6], pis_a[,3], type = "l", col="blue4")
lines(pis_a[,6], pis_a[,4], type = "l", col="blue4", lty="dashed")
lines(pis_a[,6], pis_a[,5], type = "l", col="blue4", lty="dashed")

lines(pis_a[,12], pis_a[,9], type = "l", col="blue")
lines(pis_a[,12], pis_a[,10], type = "l", col="blue", lty="dashed")
lines(pis_a[,12], pis_a[,11], type = "l", col="blue", lty="dashed")

lines(pis_a[,18], pis_a[,15], type = "l", col="deepskyblue")
lines(pis_a[,18], pis_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(pis_a[,18], pis_a[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(pis_a[,114], pis_a[,111], ylim = c(0.36, 0.42), type = "l")
lines(pis_a[,114], pis_a[,112], type = "l", lty="dashed")
lines(pis_a[,114], pis_a[,113], type = "l", lty="dashed")

lines(pis_a[,96], pis_a[,93], type = "l", col="red4")
lines(pis_a[,96], pis_a[,94], type = "l", col="red4", lty="dashed")
lines(pis_a[,96], pis_a[,95], type = "l", col="red4", lty="dashed")

lines(pis_a[,102], pis_a[,99], type = "l", col="red")
lines(pis_a[,102], pis_a[,100], type = "l", col="red", lty="dashed")
lines(pis_a[,102], pis_a[,101], type = "l", col="red", lty="dashed")

lines(pis_a[,108], pis_a[,105], type = "l", col="pink")
lines(pis_a[,108], pis_a[,106], type = "l", col="pink", lty="dashed")
lines(pis_a[,108], pis_a[,107], type = "l", col="pink", lty="dashed")

lines(pis_a[,78], pis_a[,75], type = "l", col="green4")
lines(pis_a[,78], pis_a[,76], type = "l", col="green4", lty="dashed")
lines(pis_a[,78], pis_a[,77], type = "l", col="green4", lty="dashed")

lines(pis_a[,84], pis_a[,81], type = "l", col="green")
lines(pis_a[,84], pis_a[,82], type = "l", col="green", lty="dashed")
lines(pis_a[,84], pis_a[,83], type = "l", col="green", lty="dashed")

lines(pis_a[,90], pis_a[,87], type = "l", col="darkolivegreen1")
lines(pis_a[,90], pis_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_a[,90], pis_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_a[,60], pis_a[,57], type = "l", col="blue4")
lines(pis_a[,60], pis_a[,58], type = "l", col="blue4", lty="dashed")
lines(pis_a[,60], pis_a[,59], type = "l", col="blue4", lty="dashed")

lines(pis_a[,66], pis_a[,63], type = "l", col="blue")
lines(pis_a[,66], pis_a[,64], type = "l", col="blue", lty="dashed")
lines(pis_a[,66], pis_a[,65], type = "l", col="blue", lty="dashed")

lines(pis_a[,72], pis_a[,69], type = "l", col="deepskyblue")
lines(pis_a[,72], pis_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(pis_a[,72], pis_a[,71], type = "l", col="deepskyblue", lty="dashed")

##Species B
pis_b <- pis[,115:228]

#p_a = 0
plot(pis_b[,114], pis_b[,111], ylim = c(0.36, 0.42), type = "l")
lines(pis_b[,114], pis_b[,112], type = "l", lty="dashed")
lines(pis_b[,114], pis_b[,113], type = "l", lty="dashed")

lines(pis_b[,42], pis_b[,39], type = "l", col="red4")
lines(pis_b[,42], pis_b[,40], type = "l", col="red4", lty="dashed")
lines(pis_b[,42], pis_b[,41], type = "l", col="red4", lty="dashed")

lines(pis_b[,48], pis_b[,45], type = "l", col="red")
lines(pis_b[,48], pis_b[,46], type = "l", col="red", lty="dashed")
lines(pis_b[,48], pis_b[,47], type = "l", col="red", lty="dashed")

lines(pis_b[,54], pis_b[,51], type = "l", col="pink")
lines(pis_b[,54], pis_b[,52], type = "l", col="pink", lty="dashed")
lines(pis_b[,54], pis_b[,53], type = "l", col="pink", lty="dashed")


lines(pis_b[,24], pis_b[,21], type = "l", col="green4")
lines(pis_b[,24], pis_b[,22], type = "l", col="green4", lty="dashed")
lines(pis_b[,24], pis_b[,23], type = "l", col="green4", lty="dashed")

lines(pis_b[,30], pis_b[,27], type = "l", col="green")
lines(pis_b[,30], pis_b[,28], type = "l", col="green", lty="dashed")
lines(pis_b[,30], pis_b[,29], type = "l", col="green", lty="dashed")

lines(pis_b[,36], pis_b[,33], type = "l", col="darkolivegreen1")
lines(pis_b[,36], pis_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_b[,36], pis_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_b[,6], pis_b[,3], type = "l", col="blue4")
lines(pis_b[,6], pis_b[,4], type = "l", col="blue4", lty="dashed")
lines(pis_b[,6], pis_b[,5], type = "l", col="blue4", lty="dashed")

lines(pis_b[,12], pis_b[,9], type = "l", col="blue")
lines(pis_b[,12], pis_b[,10], type = "l", col="blue", lty="dashed")
lines(pis_b[,12], pis_b[,11], type = "l", col="blue", lty="dashed")

lines(pis_b[,18], pis_b[,15], type = "l", col="deepskyblue")
lines(pis_b[,18], pis_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(pis_b[,18], pis_b[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(pis_b[,114], pis_b[,111], ylim = c(0.36, 0.42), type = "l")
lines(pis_b[,114], pis_b[,112], type = "l", lty="dashed")
lines(pis_b[,114], pis_b[,113], type = "l", lty="dashed")

lines(pis_b[,96], pis_b[,93], type = "l", col="red4")
lines(pis_b[,96], pis_b[,94], type = "l", col="red4", lty="dashed")
lines(pis_b[,96], pis_b[,95], type = "l", col="red4", lty="dashed")

lines(pis_b[,102], pis_b[,99], type = "l", col="red")
lines(pis_b[,102], pis_b[,100], type = "l", col="red", lty="dashed")
lines(pis_b[,102], pis_b[,101], type = "l", col="red", lty="dashed")

lines(pis_b[,108], pis_b[,105], type = "l", col="pink")
lines(pis_b[,108], pis_b[,106], type = "l", col="pink", lty="dashed")
lines(pis_b[,108], pis_b[,107], type = "l", col="pink", lty="dashed")

lines(pis_b[,78], pis_b[,75], type = "l", col="green4")
lines(pis_b[,78], pis_b[,76], type = "l", col="green4", lty="dashed")
lines(pis_b[,78], pis_b[,77], type = "l", col="green4", lty="dashed")

lines(pis_b[,84], pis_b[,81], type = "l", col="green")
lines(pis_b[,84], pis_b[,82], type = "l", col="green", lty="dashed")
lines(pis_b[,84], pis_b[,83], type = "l", col="green", lty="dashed")

lines(pis_b[,90], pis_b[,87], type = "l", col="darkolivegreen1")
lines(pis_b[,90], pis_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_b[,90], pis_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_b[,60], pis_b[,57], type = "l", col="blue4")
lines(pis_b[,60], pis_b[,58], type = "l", col="blue4", lty="dashed")
lines(pis_b[,60], pis_b[,59], type = "l", col="blue4", lty="dashed")

lines(pis_b[,66], pis_b[,63], type = "l", col="blue")
lines(pis_b[,66], pis_b[,64], type = "l", col="blue", lty="dashed")
lines(pis_b[,66], pis_b[,65], type = "l", col="blue", lty="dashed")

lines(pis_b[,72], pis_b[,69], type = "l", col="deepskyblue")
lines(pis_b[,72], pis_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(pis_b[,72], pis_b[,71], type = "l", col="deepskyblue", lty="dashed")

##Species C
pis_c <- pis[,229:342]

#p_a = 0
plot(pis_c[,114], pis_c[,111], ylim = c(0.36, 0.42), type = "l")
lines(pis_c[,114], pis_c[,112], type = "l", lty="dashed")
lines(pis_c[,114], pis_c[,113], type = "l", lty="dashed")

lines(pis_c[,42], pis_c[,39], type = "l", col="red4")
lines(pis_c[,42], pis_c[,40], type = "l", col="red4", lty="dashed")
lines(pis_c[,42], pis_c[,41], type = "l", col="red4", lty="dashed")

lines(pis_c[,48], pis_c[,45], type = "l", col="red")
lines(pis_c[,48], pis_c[,46], type = "l", col="red", lty="dashed")
lines(pis_c[,48], pis_c[,47], type = "l", col="red", lty="dashed")

lines(pis_c[,54], pis_c[,51], type = "l", col="pink")
lines(pis_c[,54], pis_c[,52], type = "l", col="pink", lty="dashed")
lines(pis_c[,54], pis_c[,53], type = "l", col="pink", lty="dashed")


lines(pis_c[,24], pis_c[,21], type = "l", col="green4")
lines(pis_c[,24], pis_c[,22], type = "l", col="green4", lty="dashed")
lines(pis_c[,24], pis_c[,23], type = "l", col="green4", lty="dashed")

lines(pis_c[,30], pis_c[,27], type = "l", col="green")
lines(pis_c[,30], pis_c[,28], type = "l", col="green", lty="dashed")
lines(pis_c[,30], pis_c[,29], type = "l", col="green", lty="dashed")

lines(pis_c[,36], pis_c[,33], type = "l", col="darkolivegreen1")
lines(pis_c[,36], pis_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_c[,36], pis_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_c[,6], pis_c[,3], type = "l", col="blue4")
lines(pis_c[,6], pis_c[,4], type = "l", col="blue4", lty="dashed")
lines(pis_c[,6], pis_c[,5], type = "l", col="blue4", lty="dashed")

lines(pis_c[,12], pis_c[,9], type = "l", col="blue")
lines(pis_c[,12], pis_c[,10], type = "l", col="blue", lty="dashed")
lines(pis_c[,12], pis_c[,11], type = "l", col="blue", lty="dashed")

lines(pis_c[,18], pis_c[,15], type = "l", col="deepskyblue")
lines(pis_c[,18], pis_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(pis_c[,18], pis_c[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(pis_c[,114], pis_c[,111], ylim = c(0.36, 0.42), type = "l")
lines(pis_c[,114], pis_c[,112], type = "l", lty="dashed")
lines(pis_c[,114], pis_c[,113], type = "l", lty="dashed")

lines(pis_c[,96], pis_c[,93], type = "l", col="red4")
lines(pis_c[,96], pis_c[,94], type = "l", col="red4", lty="dashed")
lines(pis_c[,96], pis_c[,95], type = "l", col="red4", lty="dashed")

lines(pis_c[,102], pis_c[,99], type = "l", col="red")
lines(pis_c[,102], pis_c[,100], type = "l", col="red", lty="dashed")
lines(pis_c[,102], pis_c[,101], type = "l", col="red", lty="dashed")

lines(pis_c[,108], pis_c[,105], type = "l", col="pink")
lines(pis_c[,108], pis_c[,106], type = "l", col="pink", lty="dashed")
lines(pis_c[,108], pis_c[,107], type = "l", col="pink", lty="dashed")

lines(pis_c[,78], pis_c[,75], type = "l", col="green4")
lines(pis_c[,78], pis_c[,76], type = "l", col="green4", lty="dashed")
lines(pis_c[,78], pis_c[,77], type = "l", col="green4", lty="dashed")

lines(pis_c[,84], pis_c[,81], type = "l", col="green")
lines(pis_c[,84], pis_c[,82], type = "l", col="green", lty="dashed")
lines(pis_c[,84], pis_c[,83], type = "l", col="green", lty="dashed")

lines(pis_c[,90], pis_c[,87], type = "l", col="darkolivegreen1")
lines(pis_c[,90], pis_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_c[,90], pis_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_c[,60], pis_c[,57], type = "l", col="blue4")
lines(pis_c[,60], pis_c[,58], type = "l", col="blue4", lty="dashed")
lines(pis_c[,60], pis_c[,59], type = "l", col="blue4", lty="dashed")

lines(pis_c[,66], pis_c[,63], type = "l", col="blue")
lines(pis_c[,66], pis_c[,64], type = "l", col="blue", lty="dashed")
lines(pis_c[,66], pis_c[,65], type = "l", col="blue", lty="dashed")

lines(pis_c[,72], pis_c[,69], type = "l", col="deepskyblue")
lines(pis_c[,72], pis_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(pis_c[,72], pis_c[,71], type = "l", col="deepskyblue", lty="dashed")

##########################Number of fixed loci##################################
fixed.files <- list.files(recursive=TRUE, full.names=TRUE, pattern="_fixed.csv$")
fixed <- do.call("cbind", lapply(fixed.files, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))

##Species A
fixed_a <- fixed[,1:114]

#p_a = 0
plot(fixed_a[,114], fixed_a[,111], ylim = c(0, 100), type = "l")
lines(fixed_a[,114], fixed_a[,112], type = "l", lty="dashed")
lines(fixed_a[,114], fixed_a[,113], type = "l", lty="dashed")

lines(fixed_a[,42], fixed_a[,39], type = "l", col="red4")
lines(fixed_a[,42], fixed_a[,40], type = "l", col="red4", lty="dashed")
lines(fixed_a[,42], fixed_a[,41], type = "l", col="red4", lty="dashed")

lines(fixed_a[,48], fixed_a[,45], type = "l", col="red")
lines(fixed_a[,48], fixed_a[,46], type = "l", col="red", lty="dashed")
lines(fixed_a[,48], fixed_a[,47], type = "l", col="red", lty="dashed")

lines(fixed_a[,54], fixed_a[,51], type = "l", col="pink")
lines(fixed_a[,54], fixed_a[,52], type = "l", col="pink", lty="dashed")
lines(fixed_a[,54], fixed_a[,53], type = "l", col="pink", lty="dashed")


lines(fixed_a[,24], fixed_a[,21], type = "l", col="green4")
lines(fixed_a[,24], fixed_a[,22], type = "l", col="green4", lty="dashed")
lines(fixed_a[,24], fixed_a[,23], type = "l", col="green4", lty="dashed")

lines(fixed_a[,30], fixed_a[,27], type = "l", col="green")
lines(fixed_a[,30], fixed_a[,28], type = "l", col="green", lty="dashed")
lines(fixed_a[,30], fixed_a[,29], type = "l", col="green", lty="dashed")

lines(fixed_a[,36], fixed_a[,33], type = "l", col="darkolivegreen1")
lines(fixed_a[,36], fixed_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_a[,36], fixed_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_a[,6], fixed_a[,3], type = "l", col="blue4")
lines(fixed_a[,6], fixed_a[,4], type = "l", col="blue4", lty="dashed")
lines(fixed_a[,6], fixed_a[,5], type = "l", col="blue4", lty="dashed")

lines(fixed_a[,12], fixed_a[,9], type = "l", col="blue")
lines(fixed_a[,12], fixed_a[,10], type = "l", col="blue", lty="dashed")
lines(fixed_a[,12], fixed_a[,11], type = "l", col="blue", lty="dashed")

lines(fixed_a[,18], fixed_a[,15], type = "l", col="deepskyblue")
lines(fixed_a[,18], fixed_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_a[,18], fixed_a[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(fixed_a[,114], fixed_a[,111], ylim = c(0, 100), type = "l")
lines(fixed_a[,114], fixed_a[,112], type = "l", lty="dashed")
lines(fixed_a[,114], fixed_a[,113], type = "l", lty="dashed")

lines(fixed_a[,96], fixed_a[,93], type = "l", col="red4")
lines(fixed_a[,96], fixed_a[,94], type = "l", col="red4", lty="dashed")
lines(fixed_a[,96], fixed_a[,95], type = "l", col="red4", lty="dashed")

lines(fixed_a[,102], fixed_a[,99], type = "l", col="red")
lines(fixed_a[,102], fixed_a[,100], type = "l", col="red", lty="dashed")
lines(fixed_a[,102], fixed_a[,101], type = "l", col="red", lty="dashed")

lines(fixed_a[,108], fixed_a[,105], type = "l", col="pink")
lines(fixed_a[,108], fixed_a[,106], type = "l", col="pink", lty="dashed")
lines(fixed_a[,108], fixed_a[,107], type = "l", col="pink", lty="dashed")

lines(fixed_a[,78], fixed_a[,75], type = "l", col="green4")
lines(fixed_a[,78], fixed_a[,76], type = "l", col="green4", lty="dashed")
lines(fixed_a[,78], fixed_a[,77], type = "l", col="green4", lty="dashed")

lines(fixed_a[,84], fixed_a[,81], type = "l", col="green")
lines(fixed_a[,84], fixed_a[,82], type = "l", col="green", lty="dashed")
lines(fixed_a[,84], fixed_a[,83], type = "l", col="green", lty="dashed")

lines(fixed_a[,90], fixed_a[,87], type = "l", col="darkolivegreen1")
lines(fixed_a[,90], fixed_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_a[,90], fixed_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_a[,60], fixed_a[,57], type = "l", col="blue4")
lines(fixed_a[,60], fixed_a[,58], type = "l", col="blue4", lty="dashed")
lines(fixed_a[,60], fixed_a[,59], type = "l", col="blue4", lty="dashed")

lines(fixed_a[,66], fixed_a[,63], type = "l", col="blue")
lines(fixed_a[,66], fixed_a[,64], type = "l", col="blue", lty="dashed")
lines(fixed_a[,66], fixed_a[,65], type = "l", col="blue", lty="dashed")

lines(fixed_a[,72], fixed_a[,69], type = "l", col="deepskyblue")
lines(fixed_a[,72], fixed_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_a[,72], fixed_a[,71], type = "l", col="deepskyblue", lty="dashed")

## Species B
fixed_b <- fixed[,115:228]

#p_a = 0
plot(fixed_b[,114], fixed_b[,111], ylim = c(0, 100), type = "l")
lines(fixed_b[,114], fixed_b[,112], type = "l", lty="dashed")
lines(fixed_b[,114], fixed_b[,113], type = "l", lty="dashed")

lines(fixed_b[,42], fixed_b[,39], type = "l", col="red4")
lines(fixed_b[,42], fixed_b[,40], type = "l", col="red4", lty="dashed")
lines(fixed_b[,42], fixed_b[,41], type = "l", col="red4", lty="dashed")

lines(fixed_b[,48], fixed_b[,45], type = "l", col="red")
lines(fixed_b[,48], fixed_b[,46], type = "l", col="red", lty="dashed")
lines(fixed_b[,48], fixed_b[,47], type = "l", col="red", lty="dashed")

lines(fixed_b[,54], fixed_b[,51], type = "l", col="pink")
lines(fixed_b[,54], fixed_b[,52], type = "l", col="pink", lty="dashed")
lines(fixed_b[,54], fixed_b[,53], type = "l", col="pink", lty="dashed")


lines(fixed_b[,24], fixed_b[,21], type = "l", col="green4")
lines(fixed_b[,24], fixed_b[,22], type = "l", col="green4", lty="dashed")
lines(fixed_b[,24], fixed_b[,23], type = "l", col="green4", lty="dashed")

lines(fixed_b[,30], fixed_b[,27], type = "l", col="green")
lines(fixed_b[,30], fixed_b[,28], type = "l", col="green", lty="dashed")
lines(fixed_b[,30], fixed_b[,29], type = "l", col="green", lty="dashed")

lines(fixed_b[,36], fixed_b[,33], type = "l", col="darkolivegreen1")
lines(fixed_b[,36], fixed_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_b[,36], fixed_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_b[,6], fixed_b[,3], type = "l", col="blue4")
lines(fixed_b[,6], fixed_b[,4], type = "l", col="blue4", lty="dashed")
lines(fixed_b[,6], fixed_b[,5], type = "l", col="blue4", lty="dashed")

lines(fixed_b[,12], fixed_b[,9], type = "l", col="blue")
lines(fixed_b[,12], fixed_b[,10], type = "l", col="blue", lty="dashed")
lines(fixed_b[,12], fixed_b[,11], type = "l", col="blue", lty="dashed")

lines(fixed_b[,18], fixed_b[,15], type = "l", col="deepskyblue")
lines(fixed_b[,18], fixed_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_b[,18], fixed_b[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(fixed_b[,114], fixed_b[,111], ylim = c(0, 100), type = "l")
lines(fixed_b[,114], fixed_b[,112], type = "l", lty="dashed")
lines(fixed_b[,114], fixed_b[,113], type = "l", lty="dashed")

lines(fixed_b[,96], fixed_b[,93], type = "l", col="red4")
lines(fixed_b[,96], fixed_b[,94], type = "l", col="red4", lty="dashed")
lines(fixed_b[,96], fixed_b[,95], type = "l", col="red4", lty="dashed")

lines(fixed_b[,102], fixed_b[,99], type = "l", col="red")
lines(fixed_b[,102], fixed_b[,100], type = "l", col="red", lty="dashed")
lines(fixed_b[,102], fixed_b[,101], type = "l", col="red", lty="dashed")

lines(fixed_b[,108], fixed_b[,105], type = "l", col="pink")
lines(fixed_b[,108], fixed_b[,106], type = "l", col="pink", lty="dashed")
lines(fixed_b[,108], fixed_b[,107], type = "l", col="pink", lty="dashed")

lines(fixed_b[,78], fixed_b[,75], type = "l", col="green4")
lines(fixed_b[,78], fixed_b[,76], type = "l", col="green4", lty="dashed")
lines(fixed_b[,78], fixed_b[,77], type = "l", col="green4", lty="dashed")

lines(fixed_b[,84], fixed_b[,81], type = "l", col="green")
lines(fixed_b[,84], fixed_b[,82], type = "l", col="green", lty="dashed")
lines(fixed_b[,84], fixed_b[,83], type = "l", col="green", lty="dashed")

lines(fixed_b[,90], fixed_b[,87], type = "l", col="darkolivegreen1")
lines(fixed_b[,90], fixed_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_b[,90], fixed_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_b[,60], fixed_b[,57], type = "l", col="blue4")
lines(fixed_b[,60], fixed_b[,58], type = "l", col="blue4", lty="dashed")
lines(fixed_b[,60], fixed_b[,59], type = "l", col="blue4", lty="dashed")

lines(fixed_b[,66], fixed_b[,63], type = "l", col="blue")
lines(fixed_b[,66], fixed_b[,64], type = "l", col="blue", lty="dashed")
lines(fixed_b[,66], fixed_b[,65], type = "l", col="blue", lty="dashed")

lines(fixed_b[,72], fixed_b[,69], type = "l", col="deepskyblue")
lines(fixed_b[,72], fixed_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_b[,72], fixed_b[,71], type = "l", col="deepskyblue", lty="dashed")

## Species C
fixed_c <- fixed[,229:342]

#p_a = 0
plot(fixed_c[,114], fixed_c[,111], ylim = c(0, 100), type = "l")
lines(fixed_c[,114], fixed_c[,112], type = "l", lty="dashed")
lines(fixed_c[,114], fixed_c[,113], type = "l", lty="dashed")

lines(fixed_c[,42], fixed_c[,39], type = "l", col="red4")
lines(fixed_c[,42], fixed_c[,40], type = "l", col="red4", lty="dashed")
lines(fixed_c[,42], fixed_c[,41], type = "l", col="red4", lty="dashed")

lines(fixed_c[,48], fixed_c[,45], type = "l", col="red")
lines(fixed_c[,48], fixed_c[,46], type = "l", col="red", lty="dashed")
lines(fixed_c[,48], fixed_c[,47], type = "l", col="red", lty="dashed")

lines(fixed_c[,54], fixed_c[,51], type = "l", col="pink")
lines(fixed_c[,54], fixed_c[,52], type = "l", col="pink", lty="dashed")
lines(fixed_c[,54], fixed_c[,53], type = "l", col="pink", lty="dashed")


lines(fixed_c[,24], fixed_c[,21], type = "l", col="green4")
lines(fixed_c[,24], fixed_c[,22], type = "l", col="green4", lty="dashed")
lines(fixed_c[,24], fixed_c[,23], type = "l", col="green4", lty="dashed")

lines(fixed_c[,30], fixed_c[,27], type = "l", col="green")
lines(fixed_c[,30], fixed_c[,28], type = "l", col="green", lty="dashed")
lines(fixed_c[,30], fixed_c[,29], type = "l", col="green", lty="dashed")

lines(fixed_c[,36], fixed_c[,33], type = "l", col="darkolivegreen1")
lines(fixed_c[,36], fixed_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_c[,36], fixed_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_c[,6], fixed_c[,3], type = "l", col="blue4")
lines(fixed_c[,6], fixed_c[,4], type = "l", col="blue4", lty="dashed")
lines(fixed_c[,6], fixed_c[,5], type = "l", col="blue4", lty="dashed")

lines(fixed_c[,12], fixed_c[,9], type = "l", col="blue")
lines(fixed_c[,12], fixed_c[,10], type = "l", col="blue", lty="dashed")
lines(fixed_c[,12], fixed_c[,11], type = "l", col="blue", lty="dashed")

lines(fixed_c[,18], fixed_c[,15], type = "l", col="deepskyblue")
lines(fixed_c[,18], fixed_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_c[,18], fixed_c[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(fixed_c[,114], fixed_c[,111], ylim = c(0, 100), type = "l")
lines(fixed_c[,114], fixed_c[,112], type = "l", lty="dashed")
lines(fixed_c[,114], fixed_c[,113], type = "l", lty="dashed")

lines(fixed_c[,96], fixed_c[,93], type = "l", col="red4")
lines(fixed_c[,96], fixed_c[,94], type = "l", col="red4", lty="dashed")
lines(fixed_c[,96], fixed_c[,95], type = "l", col="red4", lty="dashed")

lines(fixed_c[,102], fixed_c[,99], type = "l", col="red")
lines(fixed_c[,102], fixed_c[,100], type = "l", col="red", lty="dashed")
lines(fixed_c[,102], fixed_c[,101], type = "l", col="red", lty="dashed")

lines(fixed_c[,108], fixed_c[,105], type = "l", col="pink")
lines(fixed_c[,108], fixed_c[,106], type = "l", col="pink", lty="dashed")
lines(fixed_c[,108], fixed_c[,107], type = "l", col="pink", lty="dashed")

lines(fixed_c[,78], fixed_c[,75], type = "l", col="green4")
lines(fixed_c[,78], fixed_c[,76], type = "l", col="green4", lty="dashed")
lines(fixed_c[,78], fixed_c[,77], type = "l", col="green4", lty="dashed")

lines(fixed_c[,84], fixed_c[,81], type = "l", col="green")
lines(fixed_c[,84], fixed_c[,82], type = "l", col="green", lty="dashed")
lines(fixed_c[,84], fixed_c[,83], type = "l", col="green", lty="dashed")

lines(fixed_c[,90], fixed_c[,87], type = "l", col="darkolivegreen1")
lines(fixed_c[,90], fixed_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_c[,90], fixed_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_c[,60], fixed_c[,57], type = "l", col="blue4")
lines(fixed_c[,60], fixed_c[,58], type = "l", col="blue4", lty="dashed")
lines(fixed_c[,60], fixed_c[,59], type = "l", col="blue4", lty="dashed")

lines(fixed_c[,66], fixed_c[,63], type = "l", col="blue")
lines(fixed_c[,66], fixed_c[,64], type = "l", col="blue", lty="dashed")
lines(fixed_c[,66], fixed_c[,65], type = "l", col="blue", lty="dashed")

lines(fixed_c[,72], fixed_c[,69], type = "l", col="deepskyblue")
lines(fixed_c[,72], fixed_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_c[,72], fixed_c[,71], type = "l", col="deepskyblue", lty="dashed")

###############Inbreeding coefficient#############################

fis.files <- list.files(recursive=TRUE, full.names=TRUE, pattern="_fis.csv$")
fis <- do.call("cbind", lapply(fis.files, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))

##Species A
fis_a <- fis[,1:114]

#p_a = 0
plot(fis_a[,114], fis_a[,111], ylim = c(0, 1), type = "l")
lines(fis_a[,114], fis_a[,112], type = "l", lty="dashed")
lines(fis_a[,114], fis_a[,113], type = "l", lty="dashed")

lines(fis_a[,42], fis_a[,39], type = "l", col="red4")
lines(fis_a[,42], fis_a[,40], type = "l", col="red4", lty="dashed")
lines(fis_a[,42], fis_a[,41], type = "l", col="red4", lty="dashed")

lines(fis_a[,48], fis_a[,45], type = "l", col="red")
lines(fis_a[,48], fis_a[,46], type = "l", col="red", lty="dashed")
lines(fis_a[,48], fis_a[,47], type = "l", col="red", lty="dashed")

lines(fis_a[,54], fis_a[,51], type = "l", col="pink")
lines(fis_a[,54], fis_a[,52], type = "l", col="pink", lty="dashed")
lines(fis_a[,54], fis_a[,53], type = "l", col="pink", lty="dashed")


lines(fis_a[,24], fis_a[,21], type = "l", col="green4")
lines(fis_a[,24], fis_a[,22], type = "l", col="green4", lty="dashed")
lines(fis_a[,24], fis_a[,23], type = "l", col="green4", lty="dashed")

lines(fis_a[,30], fis_a[,27], type = "l", col="green")
lines(fis_a[,30], fis_a[,28], type = "l", col="green", lty="dashed")
lines(fis_a[,30], fis_a[,29], type = "l", col="green", lty="dashed")

lines(fis_a[,36], fis_a[,33], type = "l", col="darkolivegreen1")
lines(fis_a[,36], fis_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_a[,36], fis_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_a[,6], fis_a[,3], type = "l", col="blue4")
lines(fis_a[,6], fis_a[,4], type = "l", col="blue4", lty="dashed")
lines(fis_a[,6], fis_a[,5], type = "l", col="blue4", lty="dashed")

lines(fis_a[,12], fis_a[,9], type = "l", col="blue")
lines(fis_a[,12], fis_a[,10], type = "l", col="blue", lty="dashed")
lines(fis_a[,12], fis_a[,11], type = "l", col="blue", lty="dashed")

lines(fis_a[,18], fis_a[,15], type = "l", col="deepskyblue")
lines(fis_a[,18], fis_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fis_a[,18], fis_a[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(fis_a[,114], fis_a[,111], ylim = c(0, 1), type = "l")
lines(fis_a[,114], fis_a[,112], type = "l", lty="dashed")
lines(fis_a[,114], fis_a[,113], type = "l", lty="dashed")

lines(fis_a[,96], fis_a[,93], type = "l", col="red4")
lines(fis_a[,96], fis_a[,94], type = "l", col="red4", lty="dashed")
lines(fis_a[,96], fis_a[,95], type = "l", col="red4", lty="dashed")

lines(fis_a[,102], fis_a[,99], type = "l", col="red")
lines(fis_a[,102], fis_a[,100], type = "l", col="red", lty="dashed")
lines(fis_a[,102], fis_a[,101], type = "l", col="red", lty="dashed")

lines(fis_a[,108], fis_a[,105], type = "l", col="pink")
lines(fis_a[,108], fis_a[,106], type = "l", col="pink", lty="dashed")
lines(fis_a[,108], fis_a[,107], type = "l", col="pink", lty="dashed")

lines(fis_a[,78], fis_a[,75], type = "l", col="green4")
lines(fis_a[,78], fis_a[,76], type = "l", col="green4", lty="dashed")
lines(fis_a[,78], fis_a[,77], type = "l", col="green4", lty="dashed")

lines(fis_a[,84], fis_a[,81], type = "l", col="green")
lines(fis_a[,84], fis_a[,82], type = "l", col="green", lty="dashed")
lines(fis_a[,84], fis_a[,83], type = "l", col="green", lty="dashed")

lines(fis_a[,90], fis_a[,87], type = "l", col="darkolivegreen1")
lines(fis_a[,90], fis_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_a[,90], fis_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_a[,60], fis_a[,57], type = "l", col="blue4")
lines(fis_a[,60], fis_a[,58], type = "l", col="blue4", lty="dashed")
lines(fis_a[,60], fis_a[,59], type = "l", col="blue4", lty="dashed")

lines(fis_a[,66], fis_a[,63], type = "l", col="blue")
lines(fis_a[,66], fis_a[,64], type = "l", col="blue", lty="dashed")
lines(fis_a[,66], fis_a[,65], type = "l", col="blue", lty="dashed")

lines(fis_a[,72], fis_a[,69], type = "l", col="deepskyblue")
lines(fis_a[,72], fis_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fis_a[,72], fis_a[,71], type = "l", col="deepskyblue", lty="dashed")

##Species B
fis_b <- fis[,115:228]

#p_a = 0
plot(fis_b[,114], fis_b[,111], ylim = c(0, 1), type = "l")
lines(fis_b[,114], fis_b[,112], type = "l", lty="dashed")
lines(fis_b[,114], fis_b[,113], type = "l", lty="dashed")

lines(fis_b[,42], fis_b[,39], type = "l", col="red4")
lines(fis_b[,42], fis_b[,40], type = "l", col="red4", lty="dashed")
lines(fis_b[,42], fis_b[,41], type = "l", col="red4", lty="dashed")

lines(fis_b[,48], fis_b[,45], type = "l", col="red")
lines(fis_b[,48], fis_b[,46], type = "l", col="red", lty="dashed")
lines(fis_b[,48], fis_b[,47], type = "l", col="red", lty="dashed")

lines(fis_b[,54], fis_b[,51], type = "l", col="pink")
lines(fis_b[,54], fis_b[,52], type = "l", col="pink", lty="dashed")
lines(fis_b[,54], fis_b[,53], type = "l", col="pink", lty="dashed")


lines(fis_b[,24], fis_b[,21], type = "l", col="green4")
lines(fis_b[,24], fis_b[,22], type = "l", col="green4", lty="dashed")
lines(fis_b[,24], fis_b[,23], type = "l", col="green4", lty="dashed")

lines(fis_b[,30], fis_b[,27], type = "l", col="green")
lines(fis_b[,30], fis_b[,28], type = "l", col="green", lty="dashed")
lines(fis_b[,30], fis_b[,29], type = "l", col="green", lty="dashed")

lines(fis_b[,36], fis_b[,33], type = "l", col="darkolivegreen1")
lines(fis_b[,36], fis_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_b[,36], fis_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_b[,6], fis_b[,3], type = "l", col="blue4")
lines(fis_b[,6], fis_b[,4], type = "l", col="blue4", lty="dashed")
lines(fis_b[,6], fis_b[,5], type = "l", col="blue4", lty="dashed")

lines(fis_b[,12], fis_b[,9], type = "l", col="blue")
lines(fis_b[,12], fis_b[,10], type = "l", col="blue", lty="dashed")
lines(fis_b[,12], fis_b[,11], type = "l", col="blue", lty="dashed")

lines(fis_b[,18], fis_b[,15], type = "l", col="deepskyblue")
lines(fis_b[,18], fis_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fis_b[,18], fis_b[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(fis_b[,114], fis_b[,111], ylim = c(0, 1), type = "l")
lines(fis_b[,114], fis_b[,112], type = "l", lty="dashed")
lines(fis_b[,114], fis_b[,113], type = "l", lty="dashed")

lines(fis_b[,96], fis_b[,93], type = "l", col="red4")
lines(fis_b[,96], fis_b[,94], type = "l", col="red4", lty="dashed")
lines(fis_b[,96], fis_b[,95], type = "l", col="red4", lty="dashed")

lines(fis_b[,102], fis_b[,99], type = "l", col="red")
lines(fis_b[,102], fis_b[,100], type = "l", col="red", lty="dashed")
lines(fis_b[,102], fis_b[,101], type = "l", col="red", lty="dashed")

lines(fis_b[,108], fis_b[,105], type = "l", col="pink")
lines(fis_b[,108], fis_b[,106], type = "l", col="pink", lty="dashed")
lines(fis_b[,108], fis_b[,107], type = "l", col="pink", lty="dashed")

lines(fis_b[,78], fis_b[,75], type = "l", col="green4")
lines(fis_b[,78], fis_b[,76], type = "l", col="green4", lty="dashed")
lines(fis_b[,78], fis_b[,77], type = "l", col="green4", lty="dashed")

lines(fis_b[,84], fis_b[,81], type = "l", col="green")
lines(fis_b[,84], fis_b[,82], type = "l", col="green", lty="dashed")
lines(fis_b[,84], fis_b[,83], type = "l", col="green", lty="dashed")

lines(fis_b[,90], fis_b[,87], type = "l", col="darkolivegreen1")
lines(fis_b[,90], fis_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_b[,90], fis_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_b[,60], fis_b[,57], type = "l", col="blue4")
lines(fis_b[,60], fis_b[,58], type = "l", col="blue4", lty="dashed")
lines(fis_b[,60], fis_b[,59], type = "l", col="blue4", lty="dashed")

lines(fis_b[,66], fis_b[,63], type = "l", col="blue")
lines(fis_b[,66], fis_b[,64], type = "l", col="blue", lty="dashed")
lines(fis_b[,66], fis_b[,65], type = "l", col="blue", lty="dashed")

lines(fis_b[,72], fis_b[,69], type = "l", col="deepskyblue")
lines(fis_b[,72], fis_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fis_b[,72], fis_b[,71], type = "l", col="deepskyblue", lty="dashed")

##Species C
fis_c <- fis[,229:342]

#p_a = 0
plot(fis_c[,114], fis_c[,111], ylim = c(0, 1), type = "l")
lines(fis_c[,114], fis_c[,112], type = "l", lty="dashed")
lines(fis_c[,114], fis_c[,113], type = "l", lty="dashed")

lines(fis_c[,42], fis_c[,39], type = "l", col="red4")
lines(fis_c[,42], fis_c[,40], type = "l", col="red4", lty="dashed")
lines(fis_c[,42], fis_c[,41], type = "l", col="red4", lty="dashed")

lines(fis_c[,48], fis_c[,45], type = "l", col="red")
lines(fis_c[,48], fis_c[,46], type = "l", col="red", lty="dashed")
lines(fis_c[,48], fis_c[,47], type = "l", col="red", lty="dashed")

lines(fis_c[,54], fis_c[,51], type = "l", col="pink")
lines(fis_c[,54], fis_c[,52], type = "l", col="pink", lty="dashed")
lines(fis_c[,54], fis_c[,53], type = "l", col="pink", lty="dashed")


lines(fis_c[,24], fis_c[,21], type = "l", col="green4")
lines(fis_c[,24], fis_c[,22], type = "l", col="green4", lty="dashed")
lines(fis_c[,24], fis_c[,23], type = "l", col="green4", lty="dashed")

lines(fis_c[,30], fis_c[,27], type = "l", col="green")
lines(fis_c[,30], fis_c[,28], type = "l", col="green", lty="dashed")
lines(fis_c[,30], fis_c[,29], type = "l", col="green", lty="dashed")

lines(fis_c[,36], fis_c[,33], type = "l", col="darkolivegreen1")
lines(fis_c[,36], fis_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_c[,36], fis_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_c[,6], fis_c[,3], type = "l", col="blue4")
lines(fis_c[,6], fis_c[,4], type = "l", col="blue4", lty="dashed")
lines(fis_c[,6], fis_c[,5], type = "l", col="blue4", lty="dashed")

lines(fis_c[,12], fis_c[,9], type = "l", col="blue")
lines(fis_c[,12], fis_c[,10], type = "l", col="blue", lty="dashed")
lines(fis_c[,12], fis_c[,11], type = "l", col="blue", lty="dashed")

lines(fis_c[,18], fis_c[,15], type = "l", col="deepskyblue")
lines(fis_c[,18], fis_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fis_c[,18], fis_c[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(fis_c[,114], fis_c[,111], ylim = c(0, 1), type = "l")
lines(fis_c[,114], fis_c[,112], type = "l", lty="dashed")
lines(fis_c[,114], fis_c[,113], type = "l", lty="dashed")

lines(fis_c[,96], fis_c[,93], type = "l", col="red4")
lines(fis_c[,96], fis_c[,94], type = "l", col="red4", lty="dashed")
lines(fis_c[,96], fis_c[,95], type = "l", col="red4", lty="dashed")

lines(fis_c[,102], fis_c[,99], type = "l", col="red")
lines(fis_c[,102], fis_c[,100], type = "l", col="red", lty="dashed")
lines(fis_c[,102], fis_c[,101], type = "l", col="red", lty="dashed")

lines(fis_c[,108], fis_c[,105], type = "l", col="pink")
lines(fis_c[,108], fis_c[,106], type = "l", col="pink", lty="dashed")
lines(fis_c[,108], fis_c[,107], type = "l", col="pink", lty="dashed")

lines(fis_c[,78], fis_c[,75], type = "l", col="green4")
lines(fis_c[,78], fis_c[,76], type = "l", col="green4", lty="dashed")
lines(fis_c[,78], fis_c[,77], type = "l", col="green4", lty="dashed")

lines(fis_c[,84], fis_c[,81], type = "l", col="green")
lines(fis_c[,84], fis_c[,82], type = "l", col="green", lty="dashed")
lines(fis_c[,84], fis_c[,83], type = "l", col="green", lty="dashed")

lines(fis_c[,90], fis_c[,87], type = "l", col="darkolivegreen1")
lines(fis_c[,90], fis_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_c[,90], fis_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_c[,60], fis_c[,57], type = "l", col="blue4")
lines(fis_c[,60], fis_c[,58], type = "l", col="blue4", lty="dashed")
lines(fis_c[,60], fis_c[,59], type = "l", col="blue4", lty="dashed")

lines(fis_c[,66], fis_c[,63], type = "l", col="blue")
lines(fis_c[,66], fis_c[,64], type = "l", col="blue", lty="dashed")
lines(fis_c[,66], fis_c[,65], type = "l", col="blue", lty="dashed")

lines(fis_c[,72], fis_c[,69], type = "l", col="deepskyblue")
lines(fis_c[,72], fis_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fis_c[,72], fis_c[,71], type = "l", col="deepskyblue", lty="dashed")

##########################Mantel R test##################################
mrs.files <- list.files(recursive=TRUE, full.names=TRUE, pattern="_mrs.csv$")
mrs <- do.call("cbind", lapply(mrs.files, function(fn){data.frame(Filename=fn, read.csv(fn, header = T))}))

##Species A
mrs_a <- mrs[,1:114]

#p_a = 0
plot(mrs_a[,114], mrs_a[,111], ylim = c(0, 1), type = "l")
lines(mrs_a[,114], mrs_a[,112], type = "l", lty="dashed")
lines(mrs_a[,114], mrs_a[,113], type = "l", lty="dashed")

lines(mrs_a[,42], mrs_a[,39], type = "l", col="red4")
lines(mrs_a[,42], mrs_a[,40], type = "l", col="red4", lty="dashed")
lines(mrs_a[,42], mrs_a[,41], type = "l", col="red4", lty="dashed")

lines(mrs_a[,48], mrs_a[,45], type = "l", col="red")
lines(mrs_a[,48], mrs_a[,46], type = "l", col="red", lty="dashed")
lines(mrs_a[,48], mrs_a[,47], type = "l", col="red", lty="dashed")

lines(mrs_a[,54], mrs_a[,51], type = "l", col="pink")
lines(mrs_a[,54], mrs_a[,52], type = "l", col="pink", lty="dashed")
lines(mrs_a[,54], mrs_a[,53], type = "l", col="pink", lty="dashed")


lines(mrs_a[,24], mrs_a[,21], type = "l", col="green4")
lines(mrs_a[,24], mrs_a[,22], type = "l", col="green4", lty="dashed")
lines(mrs_a[,24], mrs_a[,23], type = "l", col="green4", lty="dashed")

lines(mrs_a[,30], mrs_a[,27], type = "l", col="green")
lines(mrs_a[,30], mrs_a[,28], type = "l", col="green", lty="dashed")
lines(mrs_a[,30], mrs_a[,29], type = "l", col="green", lty="dashed")

lines(mrs_a[,36], mrs_a[,33], type = "l", col="darkolivegreen1")
lines(mrs_a[,36], mrs_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_a[,36], mrs_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_a[,6], mrs_a[,3], type = "l", col="blue4")
lines(mrs_a[,6], mrs_a[,4], type = "l", col="blue4", lty="dashed")
lines(mrs_a[,6], mrs_a[,5], type = "l", col="blue4", lty="dashed")

lines(mrs_a[,12], mrs_a[,9], type = "l", col="blue")
lines(mrs_a[,12], mrs_a[,10], type = "l", col="blue", lty="dashed")
lines(mrs_a[,12], mrs_a[,11], type = "l", col="blue", lty="dashed")

lines(mrs_a[,18], mrs_a[,15], type = "l", col="deepskyblue")
lines(mrs_a[,18], mrs_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_a[,18], mrs_a[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(mrs_a[,114], mrs_a[,111], ylim = c(0, 1), type = "l")
lines(mrs_a[,114], mrs_a[,112], type = "l", lty="dashed")
lines(mrs_a[,114], mrs_a[,113], type = "l", lty="dashed")

lines(mrs_a[,96], mrs_a[,93], type = "l", col="red4")
lines(mrs_a[,96], mrs_a[,94], type = "l", col="red4", lty="dashed")
lines(mrs_a[,96], mrs_a[,95], type = "l", col="red4", lty="dashed")

lines(mrs_a[,102], mrs_a[,99], type = "l", col="red")
lines(mrs_a[,102], mrs_a[,100], type = "l", col="red", lty="dashed")
lines(mrs_a[,102], mrs_a[,101], type = "l", col="red", lty="dashed")

lines(mrs_a[,108], mrs_a[,105], type = "l", col="pink")
lines(mrs_a[,108], mrs_a[,106], type = "l", col="pink", lty="dashed")
lines(mrs_a[,108], mrs_a[,107], type = "l", col="pink", lty="dashed")

lines(mrs_a[,78], mrs_a[,75], type = "l", col="green4")
lines(mrs_a[,78], mrs_a[,76], type = "l", col="green4", lty="dashed")
lines(mrs_a[,78], mrs_a[,77], type = "l", col="green4", lty="dashed")

lines(mrs_a[,84], mrs_a[,81], type = "l", col="green")
lines(mrs_a[,84], mrs_a[,82], type = "l", col="green", lty="dashed")
lines(mrs_a[,84], mrs_a[,83], type = "l", col="green", lty="dashed")

lines(mrs_a[,90], mrs_a[,87], type = "l", col="darkolivegreen1")
lines(mrs_a[,90], mrs_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_a[,90], mrs_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_a[,60], mrs_a[,57], type = "l", col="blue4")
lines(mrs_a[,60], mrs_a[,58], type = "l", col="blue4", lty="dashed")
lines(mrs_a[,60], mrs_a[,59], type = "l", col="blue4", lty="dashed")

lines(mrs_a[,66], mrs_a[,63], type = "l", col="blue")
lines(mrs_a[,66], mrs_a[,64], type = "l", col="blue", lty="dashed")
lines(mrs_a[,66], mrs_a[,65], type = "l", col="blue", lty="dashed")

lines(mrs_a[,72], mrs_a[,69], type = "l", col="deepskyblue")
lines(mrs_a[,72], mrs_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_a[,72], mrs_a[,71], type = "l", col="deepskyblue", lty="dashed")

## Species B
mrs_b <- mrs[,115:228]

#p_a = 0
plot(mrs_b[,114], mrs_b[,111], ylim = c(0, 1), type = "l")
lines(mrs_b[,114], mrs_b[,112], type = "l", lty="dashed")
lines(mrs_b[,114], mrs_b[,113], type = "l", lty="dashed")

lines(mrs_b[,42], mrs_b[,39], type = "l", col="red4")
lines(mrs_b[,42], mrs_b[,40], type = "l", col="red4", lty="dashed")
lines(mrs_b[,42], mrs_b[,41], type = "l", col="red4", lty="dashed")

lines(mrs_b[,48], mrs_b[,45], type = "l", col="red")
lines(mrs_b[,48], mrs_b[,46], type = "l", col="red", lty="dashed")
lines(mrs_b[,48], mrs_b[,47], type = "l", col="red", lty="dashed")

lines(mrs_b[,54], mrs_b[,51], type = "l", col="pink")
lines(mrs_b[,54], mrs_b[,52], type = "l", col="pink", lty="dashed")
lines(mrs_b[,54], mrs_b[,53], type = "l", col="pink", lty="dashed")


lines(mrs_b[,24], mrs_b[,21], type = "l", col="green4")
lines(mrs_b[,24], mrs_b[,22], type = "l", col="green4", lty="dashed")
lines(mrs_b[,24], mrs_b[,23], type = "l", col="green4", lty="dashed")

lines(mrs_b[,30], mrs_b[,27], type = "l", col="green")
lines(mrs_b[,30], mrs_b[,28], type = "l", col="green", lty="dashed")
lines(mrs_b[,30], mrs_b[,29], type = "l", col="green", lty="dashed")

lines(mrs_b[,36], mrs_b[,33], type = "l", col="darkolivegreen1")
lines(mrs_b[,36], mrs_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_b[,36], mrs_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_b[,6], mrs_b[,3], type = "l", col="blue4")
lines(mrs_b[,6], mrs_b[,4], type = "l", col="blue4", lty="dashed")
lines(mrs_b[,6], mrs_b[,5], type = "l", col="blue4", lty="dashed")

lines(mrs_b[,12], mrs_b[,9], type = "l", col="blue")
lines(mrs_b[,12], mrs_b[,10], type = "l", col="blue", lty="dashed")
lines(mrs_b[,12], mrs_b[,11], type = "l", col="blue", lty="dashed")

lines(mrs_b[,18], mrs_b[,15], type = "l", col="deepskyblue")
lines(mrs_b[,18], mrs_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_b[,18], mrs_b[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(mrs_b[,114], mrs_b[,111], ylim = c(0, 1), type = "l")
lines(mrs_b[,114], mrs_b[,112], type = "l", lty="dashed")
lines(mrs_b[,114], mrs_b[,113], type = "l", lty="dashed")

lines(mrs_b[,96], mrs_b[,93], type = "l", col="red4")
lines(mrs_b[,96], mrs_b[,94], type = "l", col="red4", lty="dashed")
lines(mrs_b[,96], mrs_b[,95], type = "l", col="red4", lty="dashed")

lines(mrs_b[,102], mrs_b[,99], type = "l", col="red")
lines(mrs_b[,102], mrs_b[,100], type = "l", col="red", lty="dashed")
lines(mrs_b[,102], mrs_b[,101], type = "l", col="red", lty="dashed")

lines(mrs_b[,108], mrs_b[,105], type = "l", col="pink")
lines(mrs_b[,108], mrs_b[,106], type = "l", col="pink", lty="dashed")
lines(mrs_b[,108], mrs_b[,107], type = "l", col="pink", lty="dashed")

lines(mrs_b[,78], mrs_b[,75], type = "l", col="green4")
lines(mrs_b[,78], mrs_b[,76], type = "l", col="green4", lty="dashed")
lines(mrs_b[,78], mrs_b[,77], type = "l", col="green4", lty="dashed")

lines(mrs_b[,84], mrs_b[,81], type = "l", col="green")
lines(mrs_b[,84], mrs_b[,82], type = "l", col="green", lty="dashed")
lines(mrs_b[,84], mrs_b[,83], type = "l", col="green", lty="dashed")

lines(mrs_b[,90], mrs_b[,87], type = "l", col="darkolivegreen1")
lines(mrs_b[,90], mrs_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_b[,90], mrs_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_b[,60], mrs_b[,57], type = "l", col="blue4")
lines(mrs_b[,60], mrs_b[,58], type = "l", col="blue4", lty="dashed")
lines(mrs_b[,60], mrs_b[,59], type = "l", col="blue4", lty="dashed")

lines(mrs_b[,66], mrs_b[,63], type = "l", col="blue")
lines(mrs_b[,66], mrs_b[,64], type = "l", col="blue", lty="dashed")
lines(mrs_b[,66], mrs_b[,65], type = "l", col="blue", lty="dashed")

lines(mrs_b[,72], mrs_b[,69], type = "l", col="deepskyblue")
lines(mrs_b[,72], mrs_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_b[,72], mrs_b[,71], type = "l", col="deepskyblue", lty="dashed")

## Species C
mrs_c <- mrs[,229:342]

#p_a = 0
plot(mrs_c[,114], mrs_c[,111], ylim = c(0, 1), type = "l")
lines(mrs_c[,114], mrs_c[,112], type = "l", lty="dashed")
lines(mrs_c[,114], mrs_c[,113], type = "l", lty="dashed")

lines(mrs_c[,42], mrs_c[,39], type = "l", col="red4")
lines(mrs_c[,42], mrs_c[,40], type = "l", col="red4", lty="dashed")
lines(mrs_c[,42], mrs_c[,41], type = "l", col="red4", lty="dashed")

lines(mrs_c[,48], mrs_c[,45], type = "l", col="red")
lines(mrs_c[,48], mrs_c[,46], type = "l", col="red", lty="dashed")
lines(mrs_c[,48], mrs_c[,47], type = "l", col="red", lty="dashed")

lines(mrs_c[,54], mrs_c[,51], type = "l", col="pink")
lines(mrs_c[,54], mrs_c[,52], type = "l", col="pink", lty="dashed")
lines(mrs_c[,54], mrs_c[,53], type = "l", col="pink", lty="dashed")


lines(mrs_c[,24], mrs_c[,21], type = "l", col="green4")
lines(mrs_c[,24], mrs_c[,22], type = "l", col="green4", lty="dashed")
lines(mrs_c[,24], mrs_c[,23], type = "l", col="green4", lty="dashed")

lines(mrs_c[,30], mrs_c[,27], type = "l", col="green")
lines(mrs_c[,30], mrs_c[,28], type = "l", col="green", lty="dashed")
lines(mrs_c[,30], mrs_c[,29], type = "l", col="green", lty="dashed")

lines(mrs_c[,36], mrs_c[,33], type = "l", col="darkolivegreen1")
lines(mrs_c[,36], mrs_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_c[,36], mrs_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_c[,6], mrs_c[,3], type = "l", col="blue4")
lines(mrs_c[,6], mrs_c[,4], type = "l", col="blue4", lty="dashed")
lines(mrs_c[,6], mrs_c[,5], type = "l", col="blue4", lty="dashed")

lines(mrs_c[,12], mrs_c[,9], type = "l", col="blue")
lines(mrs_c[,12], mrs_c[,10], type = "l", col="blue", lty="dashed")
lines(mrs_c[,12], mrs_c[,11], type = "l", col="blue", lty="dashed")

lines(mrs_c[,18], mrs_c[,15], type = "l", col="deepskyblue")
lines(mrs_c[,18], mrs_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_c[,18], mrs_c[,17], type = "l", col="deepskyblue", lty="dashed")

#p_a = 1 
plot(mrs_c[,114], mrs_c[,111], ylim = c(0, 1), type = "l")
lines(mrs_c[,114], mrs_c[,112], type = "l", lty="dashed")
lines(mrs_c[,114], mrs_c[,113], type = "l", lty="dashed")

lines(mrs_c[,96], mrs_c[,93], type = "l", col="red4")
lines(mrs_c[,96], mrs_c[,94], type = "l", col="red4", lty="dashed")
lines(mrs_c[,96], mrs_c[,95], type = "l", col="red4", lty="dashed")

lines(mrs_c[,102], mrs_c[,99], type = "l", col="red")
lines(mrs_c[,102], mrs_c[,100], type = "l", col="red", lty="dashed")
lines(mrs_c[,102], mrs_c[,101], type = "l", col="red", lty="dashed")

lines(mrs_c[,108], mrs_c[,105], type = "l", col="pink")
lines(mrs_c[,108], mrs_c[,106], type = "l", col="pink", lty="dashed")
lines(mrs_c[,108], mrs_c[,107], type = "l", col="pink", lty="dashed")

lines(mrs_c[,78], mrs_c[,75], type = "l", col="green4")
lines(mrs_c[,78], mrs_c[,76], type = "l", col="green4", lty="dashed")
lines(mrs_c[,78], mrs_c[,77], type = "l", col="green4", lty="dashed")

lines(mrs_c[,84], mrs_c[,81], type = "l", col="green")
lines(mrs_c[,84], mrs_c[,82], type = "l", col="green", lty="dashed")
lines(mrs_c[,84], mrs_c[,83], type = "l", col="green", lty="dashed")

lines(mrs_c[,90], mrs_c[,87], type = "l", col="darkolivegreen1")
lines(mrs_c[,90], mrs_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_c[,90], mrs_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_c[,60], mrs_c[,57], type = "l", col="blue4")
lines(mrs_c[,60], mrs_c[,58], type = "l", col="blue4", lty="dashed")
lines(mrs_c[,60], mrs_c[,59], type = "l", col="blue4", lty="dashed")

lines(mrs_c[,66], mrs_c[,63], type = "l", col="blue")
lines(mrs_c[,66], mrs_c[,64], type = "l", col="blue", lty="dashed")
lines(mrs_c[,66], mrs_c[,65], type = "l", col="blue", lty="dashed")

lines(mrs_c[,72], mrs_c[,69], type = "l", col="deepskyblue")
lines(mrs_c[,72], mrs_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_c[,72], mrs_c[,71], type = "l", col="deepskyblue", lty="dashed")

#####################Free style plottings#################################

par(mfcol = c(5, 6), mar = numeric(4), oma = c(4, 4, .5, .5), 
    mgp = c(2, .6, 0))
plot(counts_a[,114], counts_a[,111], ylim = c(0, 4500), type = "l", axes=FALSE)
lines(counts_a[,114], counts_a[,112], type = "l", lty="dashed")
lines(counts_a[,114], counts_a[,113], type = "l", lty="dashed")

lines(counts_a[,42], counts_a[,39], type = "l", col="red4")
lines(counts_a[,42], counts_a[,40], type = "l", col="red4", lty="dashed")
lines(counts_a[,42], counts_a[,41], type = "l", col="red4", lty="dashed")

lines(counts_a[,48], counts_a[,45], type = "l", col="red")
lines(counts_a[,48], counts_a[,46], type = "l", col="red", lty="dashed")
lines(counts_a[,48], counts_a[,47], type = "l", col="red", lty="dashed")

lines(counts_a[,54], counts_a[,51], type = "l", col="pink")
lines(counts_a[,54], counts_a[,52], type = "l", col="pink", lty="dashed")
lines(counts_a[,54], counts_a[,53], type = "l", col="pink", lty="dashed")


lines(counts_a[,24], counts_a[,21], type = "l", col="green4")
lines(counts_a[,24], counts_a[,22], type = "l", col="green4", lty="dashed")
lines(counts_a[,24], counts_a[,23], type = "l", col="green4", lty="dashed")

lines(counts_a[,30], counts_a[,27], type = "l", col="green")
lines(counts_a[,30], counts_a[,28], type = "l", col="green", lty="dashed")
lines(counts_a[,30], counts_a[,29], type = "l", col="green", lty="dashed")

lines(counts_a[,36], counts_a[,33], type = "l", col="darkolivegreen1")
lines(counts_a[,36], counts_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_a[,36], counts_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_a[,6], counts_a[,3], type = "l", col="blue4")
lines(counts_a[,6], counts_a[,4], type = "l", col="blue4", lty="dashed")
lines(counts_a[,6], counts_a[,5], type = "l", col="blue4", lty="dashed")

lines(counts_a[,12], counts_a[,9], type = "l", col="blue")
lines(counts_a[,12], counts_a[,10], type = "l", col="blue", lty="dashed")
lines(counts_a[,12], counts_a[,11], type = "l", col="blue", lty="dashed")

lines(counts_a[,18], counts_a[,15], type = "l", col="deepskyblue")
lines(counts_a[,18], counts_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(counts_a[,18], counts_a[,17], type = "l", col="deepskyblue", lty="dashed")
axis(2L)
box()
plot(fis_a[,114], fis_a[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(fis_a[,114], fis_a[,112], type = "l", lty="dashed")
lines(fis_a[,114], fis_a[,113], type = "l", lty="dashed")

lines(fis_a[,42], fis_a[,39], type = "l", col="red4")
lines(fis_a[,42], fis_a[,40], type = "l", col="red4", lty="dashed")
lines(fis_a[,42], fis_a[,41], type = "l", col="red4", lty="dashed")

lines(fis_a[,48], fis_a[,45], type = "l", col="red")
lines(fis_a[,48], fis_a[,46], type = "l", col="red", lty="dashed")
lines(fis_a[,48], fis_a[,47], type = "l", col="red", lty="dashed")

lines(fis_a[,54], fis_a[,51], type = "l", col="pink")
lines(fis_a[,54], fis_a[,52], type = "l", col="pink", lty="dashed")
lines(fis_a[,54], fis_a[,53], type = "l", col="pink", lty="dashed")


lines(fis_a[,24], fis_a[,21], type = "l", col="green4")
lines(fis_a[,24], fis_a[,22], type = "l", col="green4", lty="dashed")
lines(fis_a[,24], fis_a[,23], type = "l", col="green4", lty="dashed")

lines(fis_a[,30], fis_a[,27], type = "l", col="green")
lines(fis_a[,30], fis_a[,28], type = "l", col="green", lty="dashed")
lines(fis_a[,30], fis_a[,29], type = "l", col="green", lty="dashed")

lines(fis_a[,36], fis_a[,33], type = "l", col="darkolivegreen1")
lines(fis_a[,36], fis_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_a[,36], fis_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_a[,6], fis_a[,3], type = "l", col="blue4")
lines(fis_a[,6], fis_a[,4], type = "l", col="blue4", lty="dashed")
lines(fis_a[,6], fis_a[,5], type = "l", col="blue4", lty="dashed")

lines(fis_a[,12], fis_a[,9], type = "l", col="blue")
lines(fis_a[,12], fis_a[,10], type = "l", col="blue", lty="dashed")
lines(fis_a[,12], fis_a[,11], type = "l", col="blue", lty="dashed")

lines(fis_a[,18], fis_a[,15], type = "l", col="deepskyblue")
lines(fis_a[,18], fis_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fis_a[,18], fis_a[,17], type = "l", col="deepskyblue", lty="dashed")
axis(2L)
box()
plot(mrs_a[,114], mrs_a[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(mrs_a[,114], mrs_a[,112], type = "l", lty="dashed")
lines(mrs_a[,114], mrs_a[,113], type = "l", lty="dashed")

lines(mrs_a[,42], mrs_a[,39], type = "l", col="red4")
lines(mrs_a[,42], mrs_a[,40], type = "l", col="red4", lty="dashed")
lines(mrs_a[,42], mrs_a[,41], type = "l", col="red4", lty="dashed")

lines(mrs_a[,48], mrs_a[,45], type = "l", col="red")
lines(mrs_a[,48], mrs_a[,46], type = "l", col="red", lty="dashed")
lines(mrs_a[,48], mrs_a[,47], type = "l", col="red", lty="dashed")

lines(mrs_a[,54], mrs_a[,51], type = "l", col="pink")
lines(mrs_a[,54], mrs_a[,52], type = "l", col="pink", lty="dashed")
lines(mrs_a[,54], mrs_a[,53], type = "l", col="pink", lty="dashed")


lines(mrs_a[,24], mrs_a[,21], type = "l", col="green4")
lines(mrs_a[,24], mrs_a[,22], type = "l", col="green4", lty="dashed")
lines(mrs_a[,24], mrs_a[,23], type = "l", col="green4", lty="dashed")

lines(mrs_a[,30], mrs_a[,27], type = "l", col="green")
lines(mrs_a[,30], mrs_a[,28], type = "l", col="green", lty="dashed")
lines(mrs_a[,30], mrs_a[,29], type = "l", col="green", lty="dashed")

lines(mrs_a[,36], mrs_a[,33], type = "l", col="darkolivegreen1")
lines(mrs_a[,36], mrs_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_a[,36], mrs_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_a[,6], mrs_a[,3], type = "l", col="blue4")
lines(mrs_a[,6], mrs_a[,4], type = "l", col="blue4", lty="dashed")
lines(mrs_a[,6], mrs_a[,5], type = "l", col="blue4", lty="dashed")

lines(mrs_a[,12], mrs_a[,9], type = "l", col="blue")
lines(mrs_a[,12], mrs_a[,10], type = "l", col="blue", lty="dashed")
lines(mrs_a[,12], mrs_a[,11], type = "l", col="blue", lty="dashed")

lines(mrs_a[,18], mrs_a[,15], type = "l", col="deepskyblue")
lines(mrs_a[,18], mrs_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_a[,18], mrs_a[,17], type = "l", col="deepskyblue", lty="dashed")
axis(2L)
box()

plot(pis_a[,114], pis_a[,111], ylim = c(0, 0.42), type = "l", axes=FALSE)
lines(pis_a[,114], pis_a[,112], type = "l", lty="dashed")
lines(pis_a[,114], pis_a[,113], type = "l", lty="dashed")

lines(pis_a[,42], pis_a[,39], type = "l", col="red4")
lines(pis_a[,42], pis_a[,40], type = "l", col="red4", lty="dashed")
lines(pis_a[,42], pis_a[,41], type = "l", col="red4", lty="dashed")

lines(pis_a[,48], pis_a[,45], type = "l", col="red")
lines(pis_a[,48], pis_a[,46], type = "l", col="red", lty="dashed")
lines(pis_a[,48], pis_a[,47], type = "l", col="red", lty="dashed")

lines(pis_a[,54], pis_a[,51], type = "l", col="pink")
lines(pis_a[,54], pis_a[,52], type = "l", col="pink", lty="dashed")
lines(pis_a[,54], pis_a[,53], type = "l", col="pink", lty="dashed")


lines(pis_a[,24], pis_a[,21], type = "l", col="green4")
lines(pis_a[,24], pis_a[,22], type = "l", col="green4", lty="dashed")
lines(pis_a[,24], pis_a[,23], type = "l", col="green4", lty="dashed")

lines(pis_a[,30], pis_a[,27], type = "l", col="green")
lines(pis_a[,30], pis_a[,28], type = "l", col="green", lty="dashed")
lines(pis_a[,30], pis_a[,29], type = "l", col="green", lty="dashed")

lines(pis_a[,36], pis_a[,33], type = "l", col="darkolivegreen1")
lines(pis_a[,36], pis_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_a[,36], pis_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_a[,6], pis_a[,3], type = "l", col="blue4")
lines(pis_a[,6], pis_a[,4], type = "l", col="blue4", lty="dashed")
lines(pis_a[,6], pis_a[,5], type = "l", col="blue4", lty="dashed")

lines(pis_a[,12], pis_a[,9], type = "l", col="blue")
lines(pis_a[,12], pis_a[,10], type = "l", col="blue", lty="dashed")
lines(pis_a[,12], pis_a[,11], type = "l", col="blue", lty="dashed")

lines(pis_a[,18], pis_a[,15], type = "l", col="deepskyblue")
lines(pis_a[,18], pis_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(pis_a[,18], pis_a[,17], type = "l", col="deepskyblue", lty="dashed")
axis(2L)
box()
plot(fixed_a[,114], fixed_a[,111], ylim = c(0, 1000), type = "l", axes = FALSE)
lines(fixed_a[,114], fixed_a[,112], type = "l", lty="dashed")
lines(fixed_a[,114], fixed_a[,113], type = "l", lty="dashed")

lines(fixed_a[,42], fixed_a[,39], type = "l", col="red4")
lines(fixed_a[,42], fixed_a[,40], type = "l", col="red4", lty="dashed")
lines(fixed_a[,42], fixed_a[,41], type = "l", col="red4", lty="dashed")

lines(fixed_a[,48], fixed_a[,45], type = "l", col="red")
lines(fixed_a[,48], fixed_a[,46], type = "l", col="red", lty="dashed")
lines(fixed_a[,48], fixed_a[,47], type = "l", col="red", lty="dashed")

lines(fixed_a[,54], fixed_a[,51], type = "l", col="pink")
lines(fixed_a[,54], fixed_a[,52], type = "l", col="pink", lty="dashed")
lines(fixed_a[,54], fixed_a[,53], type = "l", col="pink", lty="dashed")


lines(fixed_a[,24], fixed_a[,21], type = "l", col="green4")
lines(fixed_a[,24], fixed_a[,22], type = "l", col="green4", lty="dashed")
lines(fixed_a[,24], fixed_a[,23], type = "l", col="green4", lty="dashed")

lines(fixed_a[,30], fixed_a[,27], type = "l", col="green")
lines(fixed_a[,30], fixed_a[,28], type = "l", col="green", lty="dashed")
lines(fixed_a[,30], fixed_a[,29], type = "l", col="green", lty="dashed")

lines(fixed_a[,36], fixed_a[,33], type = "l", col="darkolivegreen1")
lines(fixed_a[,36], fixed_a[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_a[,36], fixed_a[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_a[,6], fixed_a[,3], type = "l", col="blue4")
lines(fixed_a[,6], fixed_a[,4], type = "l", col="blue4", lty="dashed")
lines(fixed_a[,6], fixed_a[,5], type = "l", col="blue4", lty="dashed")

lines(fixed_a[,12], fixed_a[,9], type = "l", col="blue")
lines(fixed_a[,12], fixed_a[,10], type = "l", col="blue", lty="dashed")
lines(fixed_a[,12], fixed_a[,11], type = "l", col="blue", lty="dashed")

lines(fixed_a[,18], fixed_a[,15], type = "l", col="deepskyblue")
lines(fixed_a[,18], fixed_a[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_a[,18], fixed_a[,17], type = "l", col="deepskyblue", lty="dashed")
axis(1L)
axis(2L)
box()

plot(counts_b[,114], counts_b[,111], ylim = c(0, 4500), type = "l", axes = FALSE)
lines(counts_b[,114], counts_b[,112], type = "l", lty="dashed")
lines(counts_b[,114], counts_b[,113], type = "l", lty="dashed")

lines(counts_b[,42], counts_b[,39], type = "l", col="red4")
lines(counts_b[,42], counts_b[,40], type = "l", col="red4", lty="dashed")
lines(counts_b[,42], counts_b[,41], type = "l", col="red4", lty="dashed")

lines(counts_b[,48], counts_b[,45], type = "l", col="red")
lines(counts_b[,48], counts_b[,46], type = "l", col="red", lty="dashed")
lines(counts_b[,48], counts_b[,47], type = "l", col="red", lty="dashed")

lines(counts_b[,54], counts_b[,51], type = "l", col="pink")
lines(counts_b[,54], counts_b[,52], type = "l", col="pink", lty="dashed")
lines(counts_b[,54], counts_b[,53], type = "l", col="pink", lty="dashed")


lines(counts_b[,24], counts_b[,21], type = "l", col="green4")
lines(counts_b[,24], counts_b[,22], type = "l", col="green4", lty="dashed")
lines(counts_b[,24], counts_b[,23], type = "l", col="green4", lty="dashed")

lines(counts_b[,30], counts_b[,27], type = "l", col="green")
lines(counts_b[,30], counts_b[,28], type = "l", col="green", lty="dashed")
lines(counts_b[,30], counts_b[,29], type = "l", col="green", lty="dashed")

lines(counts_b[,36], counts_b[,33], type = "l", col="darkolivegreen1")
lines(counts_b[,36], counts_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_b[,36], counts_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_b[,6], counts_b[,3], type = "l", col="blue4")
lines(counts_b[,6], counts_b[,4], type = "l", col="blue4", lty="dashed")
lines(counts_b[,6], counts_b[,5], type = "l", col="blue4", lty="dashed")

lines(counts_b[,12], counts_b[,9], type = "l", col="blue")
lines(counts_b[,12], counts_b[,10], type = "l", col="blue", lty="dashed")
lines(counts_b[,12], counts_b[,11], type = "l", col="blue", lty="dashed")

lines(counts_b[,18], counts_b[,15], type = "l", col="deepskyblue")
lines(counts_b[,18], counts_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(counts_b[,18], counts_b[,17], type = "l", col="deepskyblue", lty="dashed")
box()
plot(fis_b[,114], fis_b[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(fis_b[,114], fis_b[,112], type = "l", lty="dashed")
lines(fis_b[,114], fis_b[,113], type = "l", lty="dashed")

lines(fis_b[,42], fis_b[,39], type = "l", col="red4")
lines(fis_b[,42], fis_b[,40], type = "l", col="red4", lty="dashed")
lines(fis_b[,42], fis_b[,41], type = "l", col="red4", lty="dashed")

lines(fis_b[,48], fis_b[,45], type = "l", col="red")
lines(fis_b[,48], fis_b[,46], type = "l", col="red", lty="dashed")
lines(fis_b[,48], fis_b[,47], type = "l", col="red", lty="dashed")

lines(fis_b[,54], fis_b[,51], type = "l", col="pink")
lines(fis_b[,54], fis_b[,52], type = "l", col="pink", lty="dashed")
lines(fis_b[,54], fis_b[,53], type = "l", col="pink", lty="dashed")


lines(fis_b[,24], fis_b[,21], type = "l", col="green4")
lines(fis_b[,24], fis_b[,22], type = "l", col="green4", lty="dashed")
lines(fis_b[,24], fis_b[,23], type = "l", col="green4", lty="dashed")

lines(fis_b[,30], fis_b[,27], type = "l", col="green")
lines(fis_b[,30], fis_b[,28], type = "l", col="green", lty="dashed")
lines(fis_b[,30], fis_b[,29], type = "l", col="green", lty="dashed")

lines(fis_b[,36], fis_b[,33], type = "l", col="darkolivegreen1")
lines(fis_b[,36], fis_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_b[,36], fis_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_b[,6], fis_b[,3], type = "l", col="blue4")
lines(fis_b[,6], fis_b[,4], type = "l", col="blue4", lty="dashed")
lines(fis_b[,6], fis_b[,5], type = "l", col="blue4", lty="dashed")

lines(fis_b[,12], fis_b[,9], type = "l", col="blue")
lines(fis_b[,12], fis_b[,10], type = "l", col="blue", lty="dashed")
lines(fis_b[,12], fis_b[,11], type = "l", col="blue", lty="dashed")

lines(fis_b[,18], fis_b[,15], type = "l", col="deepskyblue")
lines(fis_b[,18], fis_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fis_b[,18], fis_b[,17], type = "l", col="deepskyblue", lty="dashed")
box()
plot(mrs_b[,114], mrs_b[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(mrs_b[,114], mrs_b[,112], type = "l", lty="dashed")
lines(mrs_b[,114], mrs_b[,113], type = "l", lty="dashed")

lines(mrs_b[,42], mrs_b[,39], type = "l", col="red4")
lines(mrs_b[,42], mrs_b[,40], type = "l", col="red4", lty="dashed")
lines(mrs_b[,42], mrs_b[,41], type = "l", col="red4", lty="dashed")

lines(mrs_b[,48], mrs_b[,45], type = "l", col="red")
lines(mrs_b[,48], mrs_b[,46], type = "l", col="red", lty="dashed")
lines(mrs_b[,48], mrs_b[,47], type = "l", col="red", lty="dashed")

lines(mrs_b[,54], mrs_b[,51], type = "l", col="pink")
lines(mrs_b[,54], mrs_b[,52], type = "l", col="pink", lty="dashed")
lines(mrs_b[,54], mrs_b[,53], type = "l", col="pink", lty="dashed")


lines(mrs_b[,24], mrs_b[,21], type = "l", col="green4")
lines(mrs_b[,24], mrs_b[,22], type = "l", col="green4", lty="dashed")
lines(mrs_b[,24], mrs_b[,23], type = "l", col="green4", lty="dashed")

lines(mrs_b[,30], mrs_b[,27], type = "l", col="green")
lines(mrs_b[,30], mrs_b[,28], type = "l", col="green", lty="dashed")
lines(mrs_b[,30], mrs_b[,29], type = "l", col="green", lty="dashed")

lines(mrs_b[,36], mrs_b[,33], type = "l", col="darkolivegreen1")
lines(mrs_b[,36], mrs_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_b[,36], mrs_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_b[,6], mrs_b[,3], type = "l", col="blue4")
lines(mrs_b[,6], mrs_b[,4], type = "l", col="blue4", lty="dashed")
lines(mrs_b[,6], mrs_b[,5], type = "l", col="blue4", lty="dashed")

lines(mrs_b[,12], mrs_b[,9], type = "l", col="blue")
lines(mrs_b[,12], mrs_b[,10], type = "l", col="blue", lty="dashed")
lines(mrs_b[,12], mrs_b[,11], type = "l", col="blue", lty="dashed")

lines(mrs_b[,18], mrs_b[,15], type = "l", col="deepskyblue")
lines(mrs_b[,18], mrs_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_b[,18], mrs_b[,17], type = "l", col="deepskyblue", lty="dashed")
box()

plot(pis_b[,114], pis_b[,111], ylim = c(0, 0.42), type = "l", axes = FALSE)
lines(pis_b[,114], pis_b[,112], type = "l", lty="dashed")
lines(pis_b[,114], pis_b[,113], type = "l", lty="dashed")

lines(pis_b[,42], pis_b[,39], type = "l", col="red4")
lines(pis_b[,42], pis_b[,40], type = "l", col="red4", lty="dashed")
lines(pis_b[,42], pis_b[,41], type = "l", col="red4", lty="dashed")

lines(pis_b[,48], pis_b[,45], type = "l", col="red")
lines(pis_b[,48], pis_b[,46], type = "l", col="red", lty="dashed")
lines(pis_b[,48], pis_b[,47], type = "l", col="red", lty="dashed")

lines(pis_b[,54], pis_b[,51], type = "l", col="pink")
lines(pis_b[,54], pis_b[,52], type = "l", col="pink", lty="dashed")
lines(pis_b[,54], pis_b[,53], type = "l", col="pink", lty="dashed")


lines(pis_b[,24], pis_b[,21], type = "l", col="green4")
lines(pis_b[,24], pis_b[,22], type = "l", col="green4", lty="dashed")
lines(pis_b[,24], pis_b[,23], type = "l", col="green4", lty="dashed")

lines(pis_b[,30], pis_b[,27], type = "l", col="green")
lines(pis_b[,30], pis_b[,28], type = "l", col="green", lty="dashed")
lines(pis_b[,30], pis_b[,29], type = "l", col="green", lty="dashed")

lines(pis_b[,36], pis_b[,33], type = "l", col="darkolivegreen1")
lines(pis_b[,36], pis_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_b[,36], pis_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_b[,6], pis_b[,3], type = "l", col="blue4")
lines(pis_b[,6], pis_b[,4], type = "l", col="blue4", lty="dashed")
lines(pis_b[,6], pis_b[,5], type = "l", col="blue4", lty="dashed")

lines(pis_b[,12], pis_b[,9], type = "l", col="blue")
lines(pis_b[,12], pis_b[,10], type = "l", col="blue", lty="dashed")
lines(pis_b[,12], pis_b[,11], type = "l", col="blue", lty="dashed")

lines(pis_b[,18], pis_b[,15], type = "l", col="deepskyblue")
lines(pis_b[,18], pis_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(pis_b[,18], pis_b[,17], type = "l", col="deepskyblue", lty="dashed")
box()
plot(fixed_b[,114], fixed_b[,111], ylim = c(0, 1000), type = "l", axes = FALSE)
lines(fixed_b[,114], fixed_b[,112], type = "l", lty="dashed")
lines(fixed_b[,114], fixed_b[,113], type = "l", lty="dashed")

lines(fixed_b[,42], fixed_b[,39], type = "l", col="red4")
lines(fixed_b[,42], fixed_b[,40], type = "l", col="red4", lty="dashed")
lines(fixed_b[,42], fixed_b[,41], type = "l", col="red4", lty="dashed")

lines(fixed_b[,48], fixed_b[,45], type = "l", col="red")
lines(fixed_b[,48], fixed_b[,46], type = "l", col="red", lty="dashed")
lines(fixed_b[,48], fixed_b[,47], type = "l", col="red", lty="dashed")

lines(fixed_b[,54], fixed_b[,51], type = "l", col="pink")
lines(fixed_b[,54], fixed_b[,52], type = "l", col="pink", lty="dashed")
lines(fixed_b[,54], fixed_b[,53], type = "l", col="pink", lty="dashed")


lines(fixed_b[,24], fixed_b[,21], type = "l", col="green4")
lines(fixed_b[,24], fixed_b[,22], type = "l", col="green4", lty="dashed")
lines(fixed_b[,24], fixed_b[,23], type = "l", col="green4", lty="dashed")

lines(fixed_b[,30], fixed_b[,27], type = "l", col="green")
lines(fixed_b[,30], fixed_b[,28], type = "l", col="green", lty="dashed")
lines(fixed_b[,30], fixed_b[,29], type = "l", col="green", lty="dashed")

lines(fixed_b[,36], fixed_b[,33], type = "l", col="darkolivegreen1")
lines(fixed_b[,36], fixed_b[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_b[,36], fixed_b[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_b[,6], fixed_b[,3], type = "l", col="blue4")
lines(fixed_b[,6], fixed_b[,4], type = "l", col="blue4", lty="dashed")
lines(fixed_b[,6], fixed_b[,5], type = "l", col="blue4", lty="dashed")

lines(fixed_b[,12], fixed_b[,9], type = "l", col="blue")
lines(fixed_b[,12], fixed_b[,10], type = "l", col="blue", lty="dashed")
lines(fixed_b[,12], fixed_b[,11], type = "l", col="blue", lty="dashed")

lines(fixed_b[,18], fixed_b[,15], type = "l", col="deepskyblue")
lines(fixed_b[,18], fixed_b[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_b[,18], fixed_b[,17], type = "l", col="deepskyblue", lty="dashed")
axis(1L)
box()

plot(counts_c[,114], counts_c[,111], ylim = c(0, 4500), type = "l", axes = FALSE)
lines(counts_c[,114], counts_c[,112], type = "l", lty="dashed")
lines(counts_c[,114], counts_c[,113], type = "l", lty="dashed")

lines(counts_c[,42], counts_c[,39], type = "l", col="red4")
lines(counts_c[,42], counts_c[,40], type = "l", col="red4", lty="dashed")
lines(counts_c[,42], counts_c[,41], type = "l", col="red4", lty="dashed")

lines(counts_c[,48], counts_c[,45], type = "l", col="red")
lines(counts_c[,48], counts_c[,46], type = "l", col="red", lty="dashed")
lines(counts_c[,48], counts_c[,47], type = "l", col="red", lty="dashed")

lines(counts_c[,54], counts_c[,51], type = "l", col="pink")
lines(counts_c[,54], counts_c[,52], type = "l", col="pink", lty="dashed")
lines(counts_c[,54], counts_c[,53], type = "l", col="pink", lty="dashed")


lines(counts_c[,24], counts_c[,21], type = "l", col="green4")
lines(counts_c[,24], counts_c[,22], type = "l", col="green4", lty="dashed")
lines(counts_c[,24], counts_c[,23], type = "l", col="green4", lty="dashed")

lines(counts_c[,30], counts_c[,27], type = "l", col="green")
lines(counts_c[,30], counts_c[,28], type = "l", col="green", lty="dashed")
lines(counts_c[,30], counts_c[,29], type = "l", col="green", lty="dashed")

lines(counts_c[,36], counts_c[,33], type = "l", col="darkolivegreen1")
lines(counts_c[,36], counts_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_c[,36], counts_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_c[,6], counts_c[,3], type = "l", col="blue4")
lines(counts_c[,6], counts_c[,4], type = "l", col="blue4", lty="dashed")
lines(counts_c[,6], counts_c[,5], type = "l", col="blue4", lty="dashed")

lines(counts_c[,12], counts_c[,9], type = "l", col="blue")
lines(counts_c[,12], counts_c[,10], type = "l", col="blue", lty="dashed")
lines(counts_c[,12], counts_c[,11], type = "l", col="blue", lty="dashed")

lines(counts_c[,18], counts_c[,15], type = "l", col="deepskyblue")
lines(counts_c[,18], counts_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(counts_c[,18], counts_c[,17], type = "l", col="deepskyblue", lty="dashed")
box()

plot(fis_c[,114], fis_c[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(fis_c[,114], fis_c[,112], type = "l", lty="dashed")
lines(fis_c[,114], fis_c[,113], type = "l", lty="dashed")

lines(fis_c[,42], fis_c[,39], type = "l", col="red4")
lines(fis_c[,42], fis_c[,40], type = "l", col="red4", lty="dashed")
lines(fis_c[,42], fis_c[,41], type = "l", col="red4", lty="dashed")

lines(fis_c[,48], fis_c[,45], type = "l", col="red")
lines(fis_c[,48], fis_c[,46], type = "l", col="red", lty="dashed")
lines(fis_c[,48], fis_c[,47], type = "l", col="red", lty="dashed")

lines(fis_c[,54], fis_c[,51], type = "l", col="pink")
lines(fis_c[,54], fis_c[,52], type = "l", col="pink", lty="dashed")
lines(fis_c[,54], fis_c[,53], type = "l", col="pink", lty="dashed")


lines(fis_c[,24], fis_c[,21], type = "l", col="green4")
lines(fis_c[,24], fis_c[,22], type = "l", col="green4", lty="dashed")
lines(fis_c[,24], fis_c[,23], type = "l", col="green4", lty="dashed")

lines(fis_c[,30], fis_c[,27], type = "l", col="green")
lines(fis_c[,30], fis_c[,28], type = "l", col="green", lty="dashed")
lines(fis_c[,30], fis_c[,29], type = "l", col="green", lty="dashed")

lines(fis_c[,36], fis_c[,33], type = "l", col="darkolivegreen1")
lines(fis_c[,36], fis_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_c[,36], fis_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_c[,6], fis_c[,3], type = "l", col="blue4")
lines(fis_c[,6], fis_c[,4], type = "l", col="blue4", lty="dashed")
lines(fis_c[,6], fis_c[,5], type = "l", col="blue4", lty="dashed")

lines(fis_c[,12], fis_c[,9], type = "l", col="blue")
lines(fis_c[,12], fis_c[,10], type = "l", col="blue", lty="dashed")
lines(fis_c[,12], fis_c[,11], type = "l", col="blue", lty="dashed")

lines(fis_c[,18], fis_c[,15], type = "l", col="deepskyblue")
lines(fis_c[,18], fis_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fis_c[,18], fis_c[,17], type = "l", col="deepskyblue", lty="dashed")
box()

plot(mrs_c[,114], mrs_c[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(mrs_c[,114], mrs_c[,112], type = "l", lty="dashed")
lines(mrs_c[,114], mrs_c[,113], type = "l", lty="dashed")

lines(mrs_c[,42], mrs_c[,39], type = "l", col="red4")
lines(mrs_c[,42], mrs_c[,40], type = "l", col="red4", lty="dashed")
lines(mrs_c[,42], mrs_c[,41], type = "l", col="red4", lty="dashed")

lines(mrs_c[,48], mrs_c[,45], type = "l", col="red")
lines(mrs_c[,48], mrs_c[,46], type = "l", col="red", lty="dashed")
lines(mrs_c[,48], mrs_c[,47], type = "l", col="red", lty="dashed")

lines(mrs_c[,54], mrs_c[,51], type = "l", col="pink")
lines(mrs_c[,54], mrs_c[,52], type = "l", col="pink", lty="dashed")
lines(mrs_c[,54], mrs_c[,53], type = "l", col="pink", lty="dashed")


lines(mrs_c[,24], mrs_c[,21], type = "l", col="green4")
lines(mrs_c[,24], mrs_c[,22], type = "l", col="green4", lty="dashed")
lines(mrs_c[,24], mrs_c[,23], type = "l", col="green4", lty="dashed")

lines(mrs_c[,30], mrs_c[,27], type = "l", col="green")
lines(mrs_c[,30], mrs_c[,28], type = "l", col="green", lty="dashed")
lines(mrs_c[,30], mrs_c[,29], type = "l", col="green", lty="dashed")

lines(mrs_c[,36], mrs_c[,33], type = "l", col="darkolivegreen1")
lines(mrs_c[,36], mrs_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_c[,36], mrs_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_c[,6], mrs_c[,3], type = "l", col="blue4")
lines(mrs_c[,6], mrs_c[,4], type = "l", col="blue4", lty="dashed")
lines(mrs_c[,6], mrs_c[,5], type = "l", col="blue4", lty="dashed")

lines(mrs_c[,12], mrs_c[,9], type = "l", col="blue")
lines(mrs_c[,12], mrs_c[,10], type = "l", col="blue", lty="dashed")
lines(mrs_c[,12], mrs_c[,11], type = "l", col="blue", lty="dashed")

lines(mrs_c[,18], mrs_c[,15], type = "l", col="deepskyblue")
lines(mrs_c[,18], mrs_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_c[,18], mrs_c[,17], type = "l", col="deepskyblue", lty="dashed")
box()

plot(pis_c[,114], pis_c[,111], ylim = c(0, 0.42), type = "l", axes = FALSE)
lines(pis_c[,114], pis_c[,112], type = "l", lty="dashed")
lines(pis_c[,114], pis_c[,113], type = "l", lty="dashed")

lines(pis_c[,42], pis_c[,39], type = "l", col="red4")
lines(pis_c[,42], pis_c[,40], type = "l", col="red4", lty="dashed")
lines(pis_c[,42], pis_c[,41], type = "l", col="red4", lty="dashed")

lines(pis_c[,48], pis_c[,45], type = "l", col="red")
lines(pis_c[,48], pis_c[,46], type = "l", col="red", lty="dashed")
lines(pis_c[,48], pis_c[,47], type = "l", col="red", lty="dashed")

lines(pis_c[,54], pis_c[,51], type = "l", col="pink")
lines(pis_c[,54], pis_c[,52], type = "l", col="pink", lty="dashed")
lines(pis_c[,54], pis_c[,53], type = "l", col="pink", lty="dashed")


lines(pis_c[,24], pis_c[,21], type = "l", col="green4")
lines(pis_c[,24], pis_c[,22], type = "l", col="green4", lty="dashed")
lines(pis_c[,24], pis_c[,23], type = "l", col="green4", lty="dashed")

lines(pis_c[,30], pis_c[,27], type = "l", col="green")
lines(pis_c[,30], pis_c[,28], type = "l", col="green", lty="dashed")
lines(pis_c[,30], pis_c[,29], type = "l", col="green", lty="dashed")

lines(pis_c[,36], pis_c[,33], type = "l", col="darkolivegreen1")
lines(pis_c[,36], pis_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_c[,36], pis_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_c[,6], pis_c[,3], type = "l", col="blue4")
lines(pis_c[,6], pis_c[,4], type = "l", col="blue4", lty="dashed")
lines(pis_c[,6], pis_c[,5], type = "l", col="blue4", lty="dashed")

lines(pis_c[,12], pis_c[,9], type = "l", col="blue")
lines(pis_c[,12], pis_c[,10], type = "l", col="blue", lty="dashed")
lines(pis_c[,12], pis_c[,11], type = "l", col="blue", lty="dashed")

lines(pis_c[,18], pis_c[,15], type = "l", col="deepskyblue")
lines(pis_c[,18], pis_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(pis_c[,18], pis_c[,17], type = "l", col="deepskyblue", lty="dashed")
box()

plot(fixed_c[,114], fixed_c[,111], ylim = c(0, 1000), type = "l", axes = FALSE)
lines(fixed_c[,114], fixed_c[,112], type = "l", lty="dashed")
lines(fixed_c[,114], fixed_c[,113], type = "l", lty="dashed")

lines(fixed_c[,42], fixed_c[,39], type = "l", col="red4")
lines(fixed_c[,42], fixed_c[,40], type = "l", col="red4", lty="dashed")
lines(fixed_c[,42], fixed_c[,41], type = "l", col="red4", lty="dashed")

lines(fixed_c[,48], fixed_c[,45], type = "l", col="red")
lines(fixed_c[,48], fixed_c[,46], type = "l", col="red", lty="dashed")
lines(fixed_c[,48], fixed_c[,47], type = "l", col="red", lty="dashed")

lines(fixed_c[,54], fixed_c[,51], type = "l", col="pink")
lines(fixed_c[,54], fixed_c[,52], type = "l", col="pink", lty="dashed")
lines(fixed_c[,54], fixed_c[,53], type = "l", col="pink", lty="dashed")


lines(fixed_c[,24], fixed_c[,21], type = "l", col="green4")
lines(fixed_c[,24], fixed_c[,22], type = "l", col="green4", lty="dashed")
lines(fixed_c[,24], fixed_c[,23], type = "l", col="green4", lty="dashed")

lines(fixed_c[,30], fixed_c[,27], type = "l", col="green")
lines(fixed_c[,30], fixed_c[,28], type = "l", col="green", lty="dashed")
lines(fixed_c[,30], fixed_c[,29], type = "l", col="green", lty="dashed")

lines(fixed_c[,36], fixed_c[,33], type = "l", col="darkolivegreen1")
lines(fixed_c[,36], fixed_c[,34], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_c[,36], fixed_c[,35], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_c[,6], fixed_c[,3], type = "l", col="blue4")
lines(fixed_c[,6], fixed_c[,4], type = "l", col="blue4", lty="dashed")
lines(fixed_c[,6], fixed_c[,5], type = "l", col="blue4", lty="dashed")

lines(fixed_c[,12], fixed_c[,9], type = "l", col="blue")
lines(fixed_c[,12], fixed_c[,10], type = "l", col="blue", lty="dashed")
lines(fixed_c[,12], fixed_c[,11], type = "l", col="blue", lty="dashed")

lines(fixed_c[,18], fixed_c[,15], type = "l", col="deepskyblue")
lines(fixed_c[,18], fixed_c[,16], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_c[,18], fixed_c[,17], type = "l", col="deepskyblue", lty="dashed")
axis(1L)
box()

plot(counts_a[,114], counts_a[,111], ylim = c(0, 4500), type = "l", axes = FALSE)
lines(counts_a[,114], counts_a[,112], type = "l", lty="dashed")
lines(counts_a[,114], counts_a[,113], type = "l", lty="dashed")

lines(counts_a[,96], counts_a[,93], type = "l", col="red4")
lines(counts_a[,96], counts_a[,94], type = "l", col="red4", lty="dashed")
lines(counts_a[,96], counts_a[,95], type = "l", col="red4", lty="dashed")

lines(counts_a[,102], counts_a[,99], type = "l", col="red")
lines(counts_a[,102], counts_a[,100], type = "l", col="red", lty="dashed")
lines(counts_a[,102], counts_a[,101], type = "l", col="red", lty="dashed")

lines(counts_a[,108], counts_a[,105], type = "l", col="pink")
lines(counts_a[,108], counts_a[,106], type = "l", col="pink", lty="dashed")
lines(counts_a[,108], counts_a[,107], type = "l", col="pink", lty="dashed")

lines(counts_a[,78], counts_a[,75], type = "l", col="green4")
lines(counts_a[,78], counts_a[,76], type = "l", col="green4", lty="dashed")
lines(counts_a[,78], counts_a[,77], type = "l", col="green4", lty="dashed")

lines(counts_a[,84], counts_a[,81], type = "l", col="green")
lines(counts_a[,84], counts_a[,82], type = "l", col="green", lty="dashed")
lines(counts_a[,84], counts_a[,83], type = "l", col="green", lty="dashed")

lines(counts_a[,90], counts_a[,87], type = "l", col="darkolivegreen1")
lines(counts_a[,90], counts_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_a[,90], counts_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_a[,60], counts_a[,57], type = "l", col="blue4")
lines(counts_a[,60], counts_a[,58], type = "l", col="blue4", lty="dashed")
lines(counts_a[,60], counts_a[,59], type = "l", col="blue4", lty="dashed")

lines(counts_a[,66], counts_a[,63], type = "l", col="blue")
lines(counts_a[,66], counts_a[,64], type = "l", col="blue", lty="dashed")
lines(counts_a[,66], counts_a[,65], type = "l", col="blue", lty="dashed")

lines(counts_a[,72], counts_a[,69], type = "l", col="deepskyblue")
lines(counts_a[,72], counts_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(counts_a[,72], counts_a[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(fis_a[,114], fis_a[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(fis_a[,114], fis_a[,112], type = "l", lty="dashed")
lines(fis_a[,114], fis_a[,113], type = "l", lty="dashed")

lines(fis_a[,96], fis_a[,93], type = "l", col="red4")
lines(fis_a[,96], fis_a[,94], type = "l", col="red4", lty="dashed")
lines(fis_a[,96], fis_a[,95], type = "l", col="red4", lty="dashed")

lines(fis_a[,102], fis_a[,99], type = "l", col="red")
lines(fis_a[,102], fis_a[,100], type = "l", col="red", lty="dashed")
lines(fis_a[,102], fis_a[,101], type = "l", col="red", lty="dashed")

lines(fis_a[,108], fis_a[,105], type = "l", col="pink")
lines(fis_a[,108], fis_a[,106], type = "l", col="pink", lty="dashed")
lines(fis_a[,108], fis_a[,107], type = "l", col="pink", lty="dashed")

lines(fis_a[,78], fis_a[,75], type = "l", col="green4")
lines(fis_a[,78], fis_a[,76], type = "l", col="green4", lty="dashed")
lines(fis_a[,78], fis_a[,77], type = "l", col="green4", lty="dashed")

lines(fis_a[,84], fis_a[,81], type = "l", col="green")
lines(fis_a[,84], fis_a[,82], type = "l", col="green", lty="dashed")
lines(fis_a[,84], fis_a[,83], type = "l", col="green", lty="dashed")

lines(fis_a[,90], fis_a[,87], type = "l", col="darkolivegreen1")
lines(fis_a[,90], fis_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_a[,90], fis_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_a[,60], fis_a[,57], type = "l", col="blue4")
lines(fis_a[,60], fis_a[,58], type = "l", col="blue4", lty="dashed")
lines(fis_a[,60], fis_a[,59], type = "l", col="blue4", lty="dashed")

lines(fis_a[,66], fis_a[,63], type = "l", col="blue")
lines(fis_a[,66], fis_a[,64], type = "l", col="blue", lty="dashed")
lines(fis_a[,66], fis_a[,65], type = "l", col="blue", lty="dashed")

lines(fis_a[,72], fis_a[,69], type = "l", col="deepskyblue")
lines(fis_a[,72], fis_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fis_a[,72], fis_a[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(mrs_a[,114], mrs_a[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(mrs_a[,114], mrs_a[,112], type = "l", lty="dashed")
lines(mrs_a[,114], mrs_a[,113], type = "l", lty="dashed")

lines(mrs_a[,96], mrs_a[,93], type = "l", col="red4")
lines(mrs_a[,96], mrs_a[,94], type = "l", col="red4", lty="dashed")
lines(mrs_a[,96], mrs_a[,95], type = "l", col="red4", lty="dashed")

lines(mrs_a[,102], mrs_a[,99], type = "l", col="red")
lines(mrs_a[,102], mrs_a[,100], type = "l", col="red", lty="dashed")
lines(mrs_a[,102], mrs_a[,101], type = "l", col="red", lty="dashed")

lines(mrs_a[,108], mrs_a[,105], type = "l", col="pink")
lines(mrs_a[,108], mrs_a[,106], type = "l", col="pink", lty="dashed")
lines(mrs_a[,108], mrs_a[,107], type = "l", col="pink", lty="dashed")

lines(mrs_a[,78], mrs_a[,75], type = "l", col="green4")
lines(mrs_a[,78], mrs_a[,76], type = "l", col="green4", lty="dashed")
lines(mrs_a[,78], mrs_a[,77], type = "l", col="green4", lty="dashed")

lines(mrs_a[,84], mrs_a[,81], type = "l", col="green")
lines(mrs_a[,84], mrs_a[,82], type = "l", col="green", lty="dashed")
lines(mrs_a[,84], mrs_a[,83], type = "l", col="green", lty="dashed")

lines(mrs_a[,90], mrs_a[,87], type = "l", col="darkolivegreen1")
lines(mrs_a[,90], mrs_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_a[,90], mrs_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_a[,60], mrs_a[,57], type = "l", col="blue4")
lines(mrs_a[,60], mrs_a[,58], type = "l", col="blue4", lty="dashed")
lines(mrs_a[,60], mrs_a[,59], type = "l", col="blue4", lty="dashed")

lines(mrs_a[,66], mrs_a[,63], type = "l", col="blue")
lines(mrs_a[,66], mrs_a[,64], type = "l", col="blue", lty="dashed")
lines(mrs_a[,66], mrs_a[,65], type = "l", col="blue", lty="dashed")

lines(mrs_a[,72], mrs_a[,69], type = "l", col="deepskyblue")
lines(mrs_a[,72], mrs_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_a[,72], mrs_a[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(pis_a[,114], pis_a[,111], ylim = c(0, 0.42), type = "l", axes = FALSE)
lines(pis_a[,114], pis_a[,112], type = "l", lty="dashed")
lines(pis_a[,114], pis_a[,113], type = "l", lty="dashed")

lines(pis_a[,96], pis_a[,93], type = "l", col="red4")
lines(pis_a[,96], pis_a[,94], type = "l", col="red4", lty="dashed")
lines(pis_a[,96], pis_a[,95], type = "l", col="red4", lty="dashed")

lines(pis_a[,102], pis_a[,99], type = "l", col="red")
lines(pis_a[,102], pis_a[,100], type = "l", col="red", lty="dashed")
lines(pis_a[,102], pis_a[,101], type = "l", col="red", lty="dashed")

lines(pis_a[,108], pis_a[,105], type = "l", col="pink")
lines(pis_a[,108], pis_a[,106], type = "l", col="pink", lty="dashed")
lines(pis_a[,108], pis_a[,107], type = "l", col="pink", lty="dashed")

lines(pis_a[,78], pis_a[,75], type = "l", col="green4")
lines(pis_a[,78], pis_a[,76], type = "l", col="green4", lty="dashed")
lines(pis_a[,78], pis_a[,77], type = "l", col="green4", lty="dashed")

lines(pis_a[,84], pis_a[,81], type = "l", col="green")
lines(pis_a[,84], pis_a[,82], type = "l", col="green", lty="dashed")
lines(pis_a[,84], pis_a[,83], type = "l", col="green", lty="dashed")

lines(pis_a[,90], pis_a[,87], type = "l", col="darkolivegreen1")
lines(pis_a[,90], pis_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_a[,90], pis_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_a[,60], pis_a[,57], type = "l", col="blue4")
lines(pis_a[,60], pis_a[,58], type = "l", col="blue4", lty="dashed")
lines(pis_a[,60], pis_a[,59], type = "l", col="blue4", lty="dashed")

lines(pis_a[,66], pis_a[,63], type = "l", col="blue")
lines(pis_a[,66], pis_a[,64], type = "l", col="blue", lty="dashed")
lines(pis_a[,66], pis_a[,65], type = "l", col="blue", lty="dashed")

lines(pis_a[,72], pis_a[,69], type = "l", col="deepskyblue")
lines(pis_a[,72], pis_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(pis_a[,72], pis_a[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(fixed_a[,114], fixed_a[,111], ylim = c(0, 1000), type = "l", axes = FALSE)
lines(fixed_a[,114], fixed_a[,112], type = "l", lty="dashed")
lines(fixed_a[,114], fixed_a[,113], type = "l", lty="dashed")

lines(fixed_a[,96], fixed_a[,93], type = "l", col="red4")
lines(fixed_a[,96], fixed_a[,94], type = "l", col="red4", lty="dashed")
lines(fixed_a[,96], fixed_a[,95], type = "l", col="red4", lty="dashed")

lines(fixed_a[,102], fixed_a[,99], type = "l", col="red")
lines(fixed_a[,102], fixed_a[,100], type = "l", col="red", lty="dashed")
lines(fixed_a[,102], fixed_a[,101], type = "l", col="red", lty="dashed")

lines(fixed_a[,108], fixed_a[,105], type = "l", col="pink")
lines(fixed_a[,108], fixed_a[,106], type = "l", col="pink", lty="dashed")
lines(fixed_a[,108], fixed_a[,107], type = "l", col="pink", lty="dashed")

lines(fixed_a[,78], fixed_a[,75], type = "l", col="green4")
lines(fixed_a[,78], fixed_a[,76], type = "l", col="green4", lty="dashed")
lines(fixed_a[,78], fixed_a[,77], type = "l", col="green4", lty="dashed")

lines(fixed_a[,84], fixed_a[,81], type = "l", col="green")
lines(fixed_a[,84], fixed_a[,82], type = "l", col="green", lty="dashed")
lines(fixed_a[,84], fixed_a[,83], type = "l", col="green", lty="dashed")

lines(fixed_a[,90], fixed_a[,87], type = "l", col="darkolivegreen1")
lines(fixed_a[,90], fixed_a[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_a[,90], fixed_a[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_a[,60], fixed_a[,57], type = "l", col="blue4")
lines(fixed_a[,60], fixed_a[,58], type = "l", col="blue4", lty="dashed")
lines(fixed_a[,60], fixed_a[,59], type = "l", col="blue4", lty="dashed")

lines(fixed_a[,66], fixed_a[,63], type = "l", col="blue")
lines(fixed_a[,66], fixed_a[,64], type = "l", col="blue", lty="dashed")
lines(fixed_a[,66], fixed_a[,65], type = "l", col="blue", lty="dashed")

lines(fixed_a[,72], fixed_a[,69], type = "l", col="deepskyblue")
lines(fixed_a[,72], fixed_a[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_a[,72], fixed_a[,71], type = "l", col="deepskyblue", lty="dashed")
axis(1L)
box()

plot(counts_b[,114], counts_b[,111], ylim = c(0, 4500), type = "l", axes = FALSE)
lines(counts_b[,114], counts_b[,112], type = "l", lty="dashed")
lines(counts_b[,114], counts_b[,113], type = "l", lty="dashed")

lines(counts_b[,96], counts_b[,93], type = "l", col="red4")
lines(counts_b[,96], counts_b[,94], type = "l", col="red4", lty="dashed")
lines(counts_b[,96], counts_b[,95], type = "l", col="red4", lty="dashed")

lines(counts_b[,102], counts_b[,99], type = "l", col="red")
lines(counts_b[,102], counts_b[,100], type = "l", col="red", lty="dashed")
lines(counts_b[,102], counts_b[,101], type = "l", col="red", lty="dashed")

lines(counts_b[,108], counts_b[,105], type = "l", col="pink")
lines(counts_b[,108], counts_b[,106], type = "l", col="pink", lty="dashed")
lines(counts_b[,108], counts_b[,107], type = "l", col="pink", lty="dashed")

lines(counts_b[,78], counts_b[,75], type = "l", col="green4")
lines(counts_b[,78], counts_b[,76], type = "l", col="green4", lty="dashed")
lines(counts_b[,78], counts_b[,77], type = "l", col="green4", lty="dashed")

lines(counts_b[,84], counts_b[,81], type = "l", col="green")
lines(counts_b[,84], counts_b[,82], type = "l", col="green", lty="dashed")
lines(counts_b[,84], counts_b[,83], type = "l", col="green", lty="dashed")

lines(counts_b[,90], counts_b[,87], type = "l", col="darkolivegreen1")
lines(counts_b[,90], counts_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_b[,90], counts_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_b[,60], counts_b[,57], type = "l", col="blue4")
lines(counts_b[,60], counts_b[,58], type = "l", col="blue4", lty="dashed")
lines(counts_b[,60], counts_b[,59], type = "l", col="blue4", lty="dashed")

lines(counts_b[,66], counts_b[,63], type = "l", col="blue")
lines(counts_b[,66], counts_b[,64], type = "l", col="blue", lty="dashed")
lines(counts_b[,66], counts_b[,65], type = "l", col="blue", lty="dashed")

lines(counts_b[,72], counts_b[,69], type = "l", col="deepskyblue")
lines(counts_b[,72], counts_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(counts_b[,72], counts_b[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(fis_b[,114], fis_b[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(fis_b[,114], fis_b[,112], type = "l", lty="dashed")
lines(fis_b[,114], fis_b[,113], type = "l", lty="dashed")

lines(fis_b[,96], fis_b[,93], type = "l", col="red4")
lines(fis_b[,96], fis_b[,94], type = "l", col="red4", lty="dashed")
lines(fis_b[,96], fis_b[,95], type = "l", col="red4", lty="dashed")

lines(fis_b[,102], fis_b[,99], type = "l", col="red")
lines(fis_b[,102], fis_b[,100], type = "l", col="red", lty="dashed")
lines(fis_b[,102], fis_b[,101], type = "l", col="red", lty="dashed")

lines(fis_b[,108], fis_b[,105], type = "l", col="pink")
lines(fis_b[,108], fis_b[,106], type = "l", col="pink", lty="dashed")
lines(fis_b[,108], fis_b[,107], type = "l", col="pink", lty="dashed")

lines(fis_b[,78], fis_b[,75], type = "l", col="green4")
lines(fis_b[,78], fis_b[,76], type = "l", col="green4", lty="dashed")
lines(fis_b[,78], fis_b[,77], type = "l", col="green4", lty="dashed")

lines(fis_b[,84], fis_b[,81], type = "l", col="green")
lines(fis_b[,84], fis_b[,82], type = "l", col="green", lty="dashed")
lines(fis_b[,84], fis_b[,83], type = "l", col="green", lty="dashed")

lines(fis_b[,90], fis_b[,87], type = "l", col="darkolivegreen1")
lines(fis_b[,90], fis_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_b[,90], fis_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_b[,60], fis_b[,57], type = "l", col="blue4")
lines(fis_b[,60], fis_b[,58], type = "l", col="blue4", lty="dashed")
lines(fis_b[,60], fis_b[,59], type = "l", col="blue4", lty="dashed")

lines(fis_b[,66], fis_b[,63], type = "l", col="blue")
lines(fis_b[,66], fis_b[,64], type = "l", col="blue", lty="dashed")
lines(fis_b[,66], fis_b[,65], type = "l", col="blue", lty="dashed")

lines(fis_b[,72], fis_b[,69], type = "l", col="deepskyblue")
lines(fis_b[,72], fis_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fis_b[,72], fis_b[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(mrs_b[,114], mrs_b[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(mrs_b[,114], mrs_b[,112], type = "l", lty="dashed")
lines(mrs_b[,114], mrs_b[,113], type = "l", lty="dashed")

lines(mrs_b[,96], mrs_b[,93], type = "l", col="red4")
lines(mrs_b[,96], mrs_b[,94], type = "l", col="red4", lty="dashed")
lines(mrs_b[,96], mrs_b[,95], type = "l", col="red4", lty="dashed")

lines(mrs_b[,102], mrs_b[,99], type = "l", col="red")
lines(mrs_b[,102], mrs_b[,100], type = "l", col="red", lty="dashed")
lines(mrs_b[,102], mrs_b[,101], type = "l", col="red", lty="dashed")

lines(mrs_b[,108], mrs_b[,105], type = "l", col="pink")
lines(mrs_b[,108], mrs_b[,106], type = "l", col="pink", lty="dashed")
lines(mrs_b[,108], mrs_b[,107], type = "l", col="pink", lty="dashed")

lines(mrs_b[,78], mrs_b[,75], type = "l", col="green4")
lines(mrs_b[,78], mrs_b[,76], type = "l", col="green4", lty="dashed")
lines(mrs_b[,78], mrs_b[,77], type = "l", col="green4", lty="dashed")

lines(mrs_b[,84], mrs_b[,81], type = "l", col="green")
lines(mrs_b[,84], mrs_b[,82], type = "l", col="green", lty="dashed")
lines(mrs_b[,84], mrs_b[,83], type = "l", col="green", lty="dashed")

lines(mrs_b[,90], mrs_b[,87], type = "l", col="darkolivegreen1")
lines(mrs_b[,90], mrs_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_b[,90], mrs_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_b[,60], mrs_b[,57], type = "l", col="blue4")
lines(mrs_b[,60], mrs_b[,58], type = "l", col="blue4", lty="dashed")
lines(mrs_b[,60], mrs_b[,59], type = "l", col="blue4", lty="dashed")

lines(mrs_b[,66], mrs_b[,63], type = "l", col="blue")
lines(mrs_b[,66], mrs_b[,64], type = "l", col="blue", lty="dashed")
lines(mrs_b[,66], mrs_b[,65], type = "l", col="blue", lty="dashed")

lines(mrs_b[,72], mrs_b[,69], type = "l", col="deepskyblue")
lines(mrs_b[,72], mrs_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_b[,72], mrs_b[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(pis_b[,114], pis_b[,111], ylim = c(0, 0.42), type = "l", axes = FALSE)
lines(pis_b[,114], pis_b[,112], type = "l", lty="dashed")
lines(pis_b[,114], pis_b[,113], type = "l", lty="dashed")

lines(pis_b[,96], pis_b[,93], type = "l", col="red4")
lines(pis_b[,96], pis_b[,94], type = "l", col="red4", lty="dashed")
lines(pis_b[,96], pis_b[,95], type = "l", col="red4", lty="dashed")

lines(pis_b[,102], pis_b[,99], type = "l", col="red")
lines(pis_b[,102], pis_b[,100], type = "l", col="red", lty="dashed")
lines(pis_b[,102], pis_b[,101], type = "l", col="red", lty="dashed")

lines(pis_b[,108], pis_b[,105], type = "l", col="pink")
lines(pis_b[,108], pis_b[,106], type = "l", col="pink", lty="dashed")
lines(pis_b[,108], pis_b[,107], type = "l", col="pink", lty="dashed")

lines(pis_b[,78], pis_b[,75], type = "l", col="green4")
lines(pis_b[,78], pis_b[,76], type = "l", col="green4", lty="dashed")
lines(pis_b[,78], pis_b[,77], type = "l", col="green4", lty="dashed")

lines(pis_b[,84], pis_b[,81], type = "l", col="green")
lines(pis_b[,84], pis_b[,82], type = "l", col="green", lty="dashed")
lines(pis_b[,84], pis_b[,83], type = "l", col="green", lty="dashed")

lines(pis_b[,90], pis_b[,87], type = "l", col="darkolivegreen1")
lines(pis_b[,90], pis_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_b[,90], pis_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_b[,60], pis_b[,57], type = "l", col="blue4")
lines(pis_b[,60], pis_b[,58], type = "l", col="blue4", lty="dashed")
lines(pis_b[,60], pis_b[,59], type = "l", col="blue4", lty="dashed")

lines(pis_b[,66], pis_b[,63], type = "l", col="blue")
lines(pis_b[,66], pis_b[,64], type = "l", col="blue", lty="dashed")
lines(pis_b[,66], pis_b[,65], type = "l", col="blue", lty="dashed")

lines(pis_b[,72], pis_b[,69], type = "l", col="deepskyblue")
lines(pis_b[,72], pis_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(pis_b[,72], pis_b[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(fixed_b[,114], fixed_b[,111], ylim = c(0, 1000), type = "l", axes = FALSE)
lines(fixed_b[,114], fixed_b[,112], type = "l", lty="dashed")
lines(fixed_b[,114], fixed_b[,113], type = "l", lty="dashed")

lines(fixed_b[,96], fixed_b[,93], type = "l", col="red4")
lines(fixed_b[,96], fixed_b[,94], type = "l", col="red4", lty="dashed")
lines(fixed_b[,96], fixed_b[,95], type = "l", col="red4", lty="dashed")

lines(fixed_b[,102], fixed_b[,99], type = "l", col="red")
lines(fixed_b[,102], fixed_b[,100], type = "l", col="red", lty="dashed")
lines(fixed_b[,102], fixed_b[,101], type = "l", col="red", lty="dashed")

lines(fixed_b[,108], fixed_b[,105], type = "l", col="pink")
lines(fixed_b[,108], fixed_b[,106], type = "l", col="pink", lty="dashed")
lines(fixed_b[,108], fixed_b[,107], type = "l", col="pink", lty="dashed")

lines(fixed_b[,78], fixed_b[,75], type = "l", col="green4")
lines(fixed_b[,78], fixed_b[,76], type = "l", col="green4", lty="dashed")
lines(fixed_b[,78], fixed_b[,77], type = "l", col="green4", lty="dashed")

lines(fixed_b[,84], fixed_b[,81], type = "l", col="green")
lines(fixed_b[,84], fixed_b[,82], type = "l", col="green", lty="dashed")
lines(fixed_b[,84], fixed_b[,83], type = "l", col="green", lty="dashed")

lines(fixed_b[,90], fixed_b[,87], type = "l", col="darkolivegreen1")
lines(fixed_b[,90], fixed_b[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_b[,90], fixed_b[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_b[,60], fixed_b[,57], type = "l", col="blue4")
lines(fixed_b[,60], fixed_b[,58], type = "l", col="blue4", lty="dashed")
lines(fixed_b[,60], fixed_b[,59], type = "l", col="blue4", lty="dashed")

lines(fixed_b[,66], fixed_b[,63], type = "l", col="blue")
lines(fixed_b[,66], fixed_b[,64], type = "l", col="blue", lty="dashed")
lines(fixed_b[,66], fixed_b[,65], type = "l", col="blue", lty="dashed")

lines(fixed_b[,72], fixed_b[,69], type = "l", col="deepskyblue")
lines(fixed_b[,72], fixed_b[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_b[,72], fixed_b[,71], type = "l", col="deepskyblue", lty="dashed")
axis(1L)
box()

plot(counts_c[,114], counts_c[,111], ylim = c(0, 4500), type = "l", axes = FALSE)
lines(counts_c[,114], counts_c[,112], type = "l", lty="dashed")
lines(counts_c[,114], counts_c[,113], type = "l", lty="dashed")

lines(counts_c[,96], counts_c[,93], type = "l", col="red4")
lines(counts_c[,96], counts_c[,94], type = "l", col="red4", lty="dashed")
lines(counts_c[,96], counts_c[,95], type = "l", col="red4", lty="dashed")

lines(counts_c[,102], counts_c[,99], type = "l", col="red")
lines(counts_c[,102], counts_c[,100], type = "l", col="red", lty="dashed")
lines(counts_c[,102], counts_c[,101], type = "l", col="red", lty="dashed")

lines(counts_c[,108], counts_c[,105], type = "l", col="pink")
lines(counts_c[,108], counts_c[,106], type = "l", col="pink", lty="dashed")
lines(counts_c[,108], counts_c[,107], type = "l", col="pink", lty="dashed")

lines(counts_c[,78], counts_c[,75], type = "l", col="green4")
lines(counts_c[,78], counts_c[,76], type = "l", col="green4", lty="dashed")
lines(counts_c[,78], counts_c[,77], type = "l", col="green4", lty="dashed")

lines(counts_c[,84], counts_c[,81], type = "l", col="green")
lines(counts_c[,84], counts_c[,82], type = "l", col="green", lty="dashed")
lines(counts_c[,84], counts_c[,83], type = "l", col="green", lty="dashed")

lines(counts_c[,90], counts_c[,87], type = "l", col="darkolivegreen1")
lines(counts_c[,90], counts_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(counts_c[,90], counts_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(counts_c[,60], counts_c[,57], type = "l", col="blue4")
lines(counts_c[,60], counts_c[,58], type = "l", col="blue4", lty="dashed")
lines(counts_c[,60], counts_c[,59], type = "l", col="blue4", lty="dashed")

lines(counts_c[,66], counts_c[,63], type = "l", col="blue")
lines(counts_c[,66], counts_c[,64], type = "l", col="blue", lty="dashed")
lines(counts_c[,66], counts_c[,65], type = "l", col="blue", lty="dashed")

lines(counts_c[,72], counts_c[,69], type = "l", col="deepskyblue")
lines(counts_c[,72], counts_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(counts_c[,72], counts_c[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(fis_c[,114], fis_c[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(fis_c[,114], fis_c[,112], type = "l", lty="dashed")
lines(fis_c[,114], fis_c[,113], type = "l", lty="dashed")

lines(fis_c[,96], fis_c[,93], type = "l", col="red4")
lines(fis_c[,96], fis_c[,94], type = "l", col="red4", lty="dashed")
lines(fis_c[,96], fis_c[,95], type = "l", col="red4", lty="dashed")

lines(fis_c[,102], fis_c[,99], type = "l", col="red")
lines(fis_c[,102], fis_c[,100], type = "l", col="red", lty="dashed")
lines(fis_c[,102], fis_c[,101], type = "l", col="red", lty="dashed")

lines(fis_c[,108], fis_c[,105], type = "l", col="pink")
lines(fis_c[,108], fis_c[,106], type = "l", col="pink", lty="dashed")
lines(fis_c[,108], fis_c[,107], type = "l", col="pink", lty="dashed")

lines(fis_c[,78], fis_c[,75], type = "l", col="green4")
lines(fis_c[,78], fis_c[,76], type = "l", col="green4", lty="dashed")
lines(fis_c[,78], fis_c[,77], type = "l", col="green4", lty="dashed")

lines(fis_c[,84], fis_c[,81], type = "l", col="green")
lines(fis_c[,84], fis_c[,82], type = "l", col="green", lty="dashed")
lines(fis_c[,84], fis_c[,83], type = "l", col="green", lty="dashed")

lines(fis_c[,90], fis_c[,87], type = "l", col="darkolivegreen1")
lines(fis_c[,90], fis_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fis_c[,90], fis_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fis_c[,60], fis_c[,57], type = "l", col="blue4")
lines(fis_c[,60], fis_c[,58], type = "l", col="blue4", lty="dashed")
lines(fis_c[,60], fis_c[,59], type = "l", col="blue4", lty="dashed")

lines(fis_c[,66], fis_c[,63], type = "l", col="blue")
lines(fis_c[,66], fis_c[,64], type = "l", col="blue", lty="dashed")
lines(fis_c[,66], fis_c[,65], type = "l", col="blue", lty="dashed")

lines(fis_c[,72], fis_c[,69], type = "l", col="deepskyblue")
lines(fis_c[,72], fis_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fis_c[,72], fis_c[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(mrs_c[,114], mrs_c[,111], ylim = c(0, 1), type = "l", axes = FALSE)
lines(mrs_c[,114], mrs_c[,112], type = "l", lty="dashed")
lines(mrs_c[,114], mrs_c[,113], type = "l", lty="dashed")

lines(mrs_c[,96], mrs_c[,93], type = "l", col="red4")
lines(mrs_c[,96], mrs_c[,94], type = "l", col="red4", lty="dashed")
lines(mrs_c[,96], mrs_c[,95], type = "l", col="red4", lty="dashed")

lines(mrs_c[,102], mrs_c[,99], type = "l", col="red")
lines(mrs_c[,102], mrs_c[,100], type = "l", col="red", lty="dashed")
lines(mrs_c[,102], mrs_c[,101], type = "l", col="red", lty="dashed")

lines(mrs_c[,108], mrs_c[,105], type = "l", col="pink")
lines(mrs_c[,108], mrs_c[,106], type = "l", col="pink", lty="dashed")
lines(mrs_c[,108], mrs_c[,107], type = "l", col="pink", lty="dashed")

lines(mrs_c[,78], mrs_c[,75], type = "l", col="green4")
lines(mrs_c[,78], mrs_c[,76], type = "l", col="green4", lty="dashed")
lines(mrs_c[,78], mrs_c[,77], type = "l", col="green4", lty="dashed")

lines(mrs_c[,84], mrs_c[,81], type = "l", col="green")
lines(mrs_c[,84], mrs_c[,82], type = "l", col="green", lty="dashed")
lines(mrs_c[,84], mrs_c[,83], type = "l", col="green", lty="dashed")

lines(mrs_c[,90], mrs_c[,87], type = "l", col="darkolivegreen1")
lines(mrs_c[,90], mrs_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(mrs_c[,90], mrs_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(mrs_c[,60], mrs_c[,57], type = "l", col="blue4")
lines(mrs_c[,60], mrs_c[,58], type = "l", col="blue4", lty="dashed")
lines(mrs_c[,60], mrs_c[,59], type = "l", col="blue4", lty="dashed")

lines(mrs_c[,66], mrs_c[,63], type = "l", col="blue")
lines(mrs_c[,66], mrs_c[,64], type = "l", col="blue", lty="dashed")
lines(mrs_c[,66], mrs_c[,65], type = "l", col="blue", lty="dashed")

lines(mrs_c[,72], mrs_c[,69], type = "l", col="deepskyblue")
lines(mrs_c[,72], mrs_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(mrs_c[,72], mrs_c[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(pis_c[,114], pis_c[,111], ylim = c(0, 0.42), type = "l", axes = FALSE)
lines(pis_c[,114], pis_c[,112], type = "l", lty="dashed")
lines(pis_c[,114], pis_c[,113], type = "l", lty="dashed")

lines(pis_c[,96], pis_c[,93], type = "l", col="red4")
lines(pis_c[,96], pis_c[,94], type = "l", col="red4", lty="dashed")
lines(pis_c[,96], pis_c[,95], type = "l", col="red4", lty="dashed")

lines(pis_c[,102], pis_c[,99], type = "l", col="red")
lines(pis_c[,102], pis_c[,100], type = "l", col="red", lty="dashed")
lines(pis_c[,102], pis_c[,101], type = "l", col="red", lty="dashed")

lines(pis_c[,108], pis_c[,105], type = "l", col="pink")
lines(pis_c[,108], pis_c[,106], type = "l", col="pink", lty="dashed")
lines(pis_c[,108], pis_c[,107], type = "l", col="pink", lty="dashed")

lines(pis_c[,78], pis_c[,75], type = "l", col="green4")
lines(pis_c[,78], pis_c[,76], type = "l", col="green4", lty="dashed")
lines(pis_c[,78], pis_c[,77], type = "l", col="green4", lty="dashed")

lines(pis_c[,84], pis_c[,81], type = "l", col="green")
lines(pis_c[,84], pis_c[,82], type = "l", col="green", lty="dashed")
lines(pis_c[,84], pis_c[,83], type = "l", col="green", lty="dashed")

lines(pis_c[,90], pis_c[,87], type = "l", col="darkolivegreen1")
lines(pis_c[,90], pis_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(pis_c[,90], pis_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(pis_c[,60], pis_c[,57], type = "l", col="blue4")
lines(pis_c[,60], pis_c[,58], type = "l", col="blue4", lty="dashed")
lines(pis_c[,60], pis_c[,59], type = "l", col="blue4", lty="dashed")

lines(pis_c[,66], pis_c[,63], type = "l", col="blue")
lines(pis_c[,66], pis_c[,64], type = "l", col="blue", lty="dashed")
lines(pis_c[,66], pis_c[,65], type = "l", col="blue", lty="dashed")

lines(pis_c[,72], pis_c[,69], type = "l", col="deepskyblue")
lines(pis_c[,72], pis_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(pis_c[,72], pis_c[,71], type = "l", col="deepskyblue", lty="dashed")
box()

plot(fixed_c[,114], fixed_c[,111], ylim = c(0, 1000), type = "l", axes = FALSE)
lines(fixed_c[,114], fixed_c[,112], type = "l", lty="dashed")
lines(fixed_c[,114], fixed_c[,113], type = "l", lty="dashed")

lines(fixed_c[,96], fixed_c[,93], type = "l", col="red4")
lines(fixed_c[,96], fixed_c[,94], type = "l", col="red4", lty="dashed")
lines(fixed_c[,96], fixed_c[,95], type = "l", col="red4", lty="dashed")

lines(fixed_c[,102], fixed_c[,99], type = "l", col="red")
lines(fixed_c[,102], fixed_c[,100], type = "l", col="red", lty="dashed")
lines(fixed_c[,102], fixed_c[,101], type = "l", col="red", lty="dashed")

lines(fixed_c[,108], fixed_c[,105], type = "l", col="pink")
lines(fixed_c[,108], fixed_c[,106], type = "l", col="pink", lty="dashed")
lines(fixed_c[,108], fixed_c[,107], type = "l", col="pink", lty="dashed")

lines(fixed_c[,78], fixed_c[,75], type = "l", col="green4")
lines(fixed_c[,78], fixed_c[,76], type = "l", col="green4", lty="dashed")
lines(fixed_c[,78], fixed_c[,77], type = "l", col="green4", lty="dashed")

lines(fixed_c[,84], fixed_c[,81], type = "l", col="green")
lines(fixed_c[,84], fixed_c[,82], type = "l", col="green", lty="dashed")
lines(fixed_c[,84], fixed_c[,83], type = "l", col="green", lty="dashed")

lines(fixed_c[,90], fixed_c[,87], type = "l", col="darkolivegreen1")
lines(fixed_c[,90], fixed_c[,88], type = "l", col="darkolivegreen1", lty="dashed")
lines(fixed_c[,90], fixed_c[,89], type = "l", col="darkolivegreen1", lty="dashed")

lines(fixed_c[,60], fixed_c[,57], type = "l", col="blue4")
lines(fixed_c[,60], fixed_c[,58], type = "l", col="blue4", lty="dashed")
lines(fixed_c[,60], fixed_c[,59], type = "l", col="blue4", lty="dashed")

lines(fixed_c[,66], fixed_c[,63], type = "l", col="blue")
lines(fixed_c[,66], fixed_c[,64], type = "l", col="blue", lty="dashed")
lines(fixed_c[,66], fixed_c[,65], type = "l", col="blue", lty="dashed")

lines(fixed_c[,72], fixed_c[,69], type = "l", col="deepskyblue")
lines(fixed_c[,72], fixed_c[,70], type = "l", col="deepskyblue", lty="dashed")
lines(fixed_c[,72], fixed_c[,71], type = "l", col="deepskyblue", lty="dashed")
axis(1L)
box()







