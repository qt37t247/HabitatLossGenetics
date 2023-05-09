library(raster)

pre <- raster("PRE_rs.tif")
pre[pre == 0] <- NA
pre[pre == -9999] <- NA

ext <- raster("EXT_rs.tif")
ext[ext == 0] <- NA
ext[ext == -9999] <- NA


dif <- pre - ext
dif[dif != 0] <- 1

sr <- "+proj=utm +zone=53 +ellps=GRS80 +datum=NAD83 +units=m +no_defs" 
dift <- projectRaster(dif, crs = sr)
difz <- crop(dift, extent(550000, 750000, -3800000, -3600000))

t1 <- raster(ncol=20, nrow=20, xmn=550000, xmx=570000, ymn=-3710000, ymx=-3690000)
#values(t1) <- 0
projection(t1) <- sr
t1 <- projectExtent(t1, crs = projection(ext))

t2 <- raster(ncol=20, nrow=20, xmn=560000, xmx=580000, ymn=-3760000, ymx=-3740000)
values(t2) <- 0
projection(t2) <- sr
t2 <- projectExtent(t2, crs = projection(ext))

difzz <- crop(dift, extent(650000, 750000, -3750000, -3650000))

t3 <- raster(ncol=20, nrow=20, xmn=650000, xmx=670000, ymn=-3695000, ymx=-3675000)
values(t3) <- 0
projection(t3) <- sr
t3 <- projectExtent(t3, crs = projection(ext))

t4 <- raster(ncol=20, nrow=20, xmn=660000, xmx=680000, ymn=-3690000, ymx=-3670000)
values(t4) <- 0
projection(t4) <- sr
t4 <- projectExtent(t4, crs = projection(ext))

t5 <- raster(ncol=20, nrow=20, xmn=670000, xmx=690000, ymn=-3685000, ymx=-3665000)
values(t5) <- 0
projection(t5) <- sr
t5 <- projectExtent(t5, crs = projection(ext))

t6 <- raster(ncol=20, nrow=20, xmn=685000, xmx=705000, ymn=-3700000, ymx=-3680000)
values(t6) <- 0
projection(t6) <- sr
t6 <- projectExtent(t6, crs = projection(ext))

t7 <- raster(ncol=20, nrow=20, xmn=670000, xmx=690000, ymn=-3730000, ymx=-3710000)
values(t7) <- 0
projection(t7) <- sr
t7 <- projectExtent(t7, crs = projection(ext))

difp <- as(dif, "SpatialPointsDataFrame")

t1r <- rasterize(difp, t1, fun=mean)
t1r <- t1r$layer*-1
t1r[t1r >= -0.5] <- 1
t1r[t1r < -0.5] <- 0.2
writeRaster(t1r,'t1r.tif', overwrite=TRUE)
Geary(t1r)
#0.399419
Moran(t1r)
#0.6085127
(400-sum(values(t1r==1)))/400
#0.595
plot(t1r)

t2r <- rasterize(difp, t2, fun=mean)
t2r <- t2r$layer*-1
t2r[t2r >= -0.5] <- 1
t2r[t2r < -0.5] <- 0.2
writeRaster(t2r,'t2r.tif', overwrite=TRUE)
Geary(t2r)
#0.4947828
Moran(t2r)
#0.5055919
(400-sum(values(t2r==1)))/400
#0.5325
plot(t2r)

t3r <- rasterize(difp, t3, fun=mean)
t3r <- t3r$layer*-1
t3r[t3r >= -0.5] <- 1
t3r[t3r < -0.5] <- 0.2
writeRaster(t3r,'t3r.tif', overwrite=TRUE)
Geary(t3r)
#0.5350323
Moran(t3r)
#0.4406474
(400-sum(values(t3r==1)))/400
#0.695
plot(t3r)

t4r <- rasterize(difp, t4, fun=mean)
t4r <- t4r$layer*-1
t4r[t4r >= -0.5] <- 1
t4r[t4r < -0.5] <- 0.2
writeRaster(t4r,'t4r.tif', overwrite=TRUE)
Geary(t4r)
#0.2789277
Moran(t4r)
#0.7049164
(400-sum(values(t4r==1)))/400
#0.235
plot(t4r)

t5r <- rasterize(difp, t5, fun=mean)
t5r <- t5r$layer*-1
t5r[t5r >= -0.5] <- 1
t5r[t5r < -0.5] <- 0.2
writeRaster(t5r,'t5r.tif', overwrite=TRUE)
Geary(t5r)
#NaN
Moran(t5r)
#NaN
(400-sum(values(t5r==1)))/400
#0
plot(t5r)

t6r <- rasterize(difp, t6, fun=mean)
t6r <- t6r$layer*-1
t6r[t6r >= -0.5] <- 1
t6r[t6r < -0.5] <- 0.2
writeRaster(t6r,'t6r.tif', overwrite=TRUE)
Geary(t6r)
#0.3763441
Moran(t6r)
#0.5951514
(400-sum(values(t6r==1)))/400
#0.225
plot(t6r)

t7r <- rasterize(difp, t7, fun=mean)
t7r <- t7r$layer*-1
t7r[t7r >= -0.5] <- 1
t7r[t7r < -0.5] <- 0.2
t7r[is.na(t7r[])] <- 0
writeRaster(t7r,'t7r.tif', overwrite=TRUE)
Geary(t7r)
#0.6026048
Moran(t7r)
#0.384509
(400-sum(values(t7r==1)))/400
#0.645
plot(t7r)

t1ri <- t1r
t2ri <- t2r
t3ri <- t3r
t4ri <- t4r
t5ri <- t5r
t6ri <- t6r
t7ri <- t7r
t1ri[t1ri == 0.2] <- 1
t2ri[t2ri == 0.2] <- 1
t3ri[t3ri == 0.2] <- 1
t4ri[t4ri == 0.2] <- 1
t5ri[t5ri == 0.2] <- 1
t6ri[t6ri == 0.2] <- 1
t7ri[t7ri == 0.2] <- 1
writeRaster(t1ri,'t1ri.tif', overwrite=TRUE)
writeRaster(t2ri,'t2ri.tif', overwrite=TRUE)
writeRaster(t3ri,'t3ri.tif', overwrite=TRUE)
writeRaster(t4ri,'t4ri.tif', overwrite=TRUE)
writeRaster(t5ri,'t5ri.tif', overwrite=TRUE)
writeRaster(t6ri,'t6ri.tif', overwrite=TRUE)
writeRaster(t7ri,'t7ri.tif', overwrite=TRUE)

