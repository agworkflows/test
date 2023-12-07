pars <- wow::init("test", "agworkflows")

x <- 1:12
set.seed(333)
y <- runif(12) * 3 + 1:12
xy <- data.frame(cbind(x, y))

f <- file.path(pars$prj_path, "data/raw/input.rds")
saveRDS(xy, f)

