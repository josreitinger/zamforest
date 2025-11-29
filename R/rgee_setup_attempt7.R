library(reticulate)
library(R6)
library(processx)

install.packages("rgee")
remotes::install_github("r-spatial/rgee")

library(rgee)
ee_install(py_env = "rgee")

