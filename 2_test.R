prj_path <- wow::init("test", "agworkflows")

f <- file.path(prj_path, "data/raw/input.rds")
xy <- readRDS(f)

m <- lm(y~x, data=xy)

xy$p <- predict(m, xy)

f <- file.path(prj_path, "data/intermediate/model_results.rds")
saveRDS(xy, f)

