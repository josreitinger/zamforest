## install`reticulate`, only one time
if (!("reticulate" %in% installed.packages()[,1])) {
  print("Installing package `reticulate`...")
  install.packages("reticulate")
} else {
  print("Package `reticulate` already installed") }

library(reticulate)
Sys.which("python3") # is a V3 installed?
## python3
## "/usr/bin/python3"
use_python(Sys.which("python3")) # use it
# py_config()

# use the standard Python numeric library
np <- reticulate::import("numpy", convert = FALSE)
# do some array manipulations with NumPy
a <- np$array(c(1:4))
print(a) # this should be a Python array
