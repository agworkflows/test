prj_path <- wow::init("test", "agworkflows")

f <- file.path(prj_path, "data/intermediate/model_results.rds")
d <- readRDS(f)

png(file.path(prj_path, "img/3_scatter.png"))

plot(d[,1], d[,2], pch=20, cex=1.5, col="red", xlab="x", ylab="y", 
	las=1, xlim=c(0,11), ylim=c(0,11), main="Jambo")
lines(d[,1], d[,3], col="blue", lwd=2)

dev.off()


