install.packages("rgee")
library(rgee)

install.packages("reticulate")
library(reticulate)

reticulate::py_available()
reticulate::py_discover_config()

rgee::ee_install_set_pyenv(
  py_path = "/home/rstudio/.cache/R/reticulate/uv/cache/archive-v0/v-mHIZ3fznWft6LbliK4O/bin/python",
  py_env = "rgee"
)

# ee_install(py_env = "rgee")

rgee::ee_check()

reticulate::py_install('earthengine-api==1.6.11', py_env = "rgee")

#Testing for commit
