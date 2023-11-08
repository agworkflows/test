prj_path <- wow::init("test", "agworkflows")

f <- file.path(prj_path, "data/intermediate/model_results.rds")
d <- readRDS(f)

png(file.path(prj_path, "img/3_scatter.png"))

plot(d[,1], d[,2], pch=20, col="red")
lines(d[,1], d[,3], col="red", lwd=2)

dev.off()


