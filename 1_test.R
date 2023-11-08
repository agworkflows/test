prj_path <- wow::init("test", "agworkflows")

x <- 1:10
set.seed(333)
y <- runif(10) * 3 + 1:10
xy <- data.frame(cbind(x, y))

f <- file.path(prj_path, "data/raw/input.rds")

saveRDS(xy, f)

