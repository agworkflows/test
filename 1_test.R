prj_path <- wow::init("test", "agworkflows")

x <- 1:10
set.seed(1)
y <- runif(10)
xy <- cbind(x, y)

f <- file.path(prj_path, "data/raw/input.rds")

saveRDS(xy, f)

