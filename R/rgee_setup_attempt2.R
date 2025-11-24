
install.packages("rgee")

library(rgee)
ee_install()
# Error in value[[3L]](cond) :
#   An error occur when ee_install was creating the Python Environment.
# Run ee_clean_pyenv() and restart the R session, before trying again.

#The above suggestion does not work at the moment.

ee_Initialize()
# Error in ee_connect_to_py(path = ee_current_version, n = 5) :
#   The current Python PATH:
# /home/rstudio/.cache/R/reticulate/uv/cache/archive-v0/v-mHIZ3fznWft6LbliK4O/bin/python
# does not have the Python package "earthengine-api" installed.
# Do you restarted/terminated your R session after install miniconda
# or run ee_install()?
#   If this is not the case, try:
#   > ee_install_upgrade(): Install the latest Earth Engine Python version.
# > reticulate::use_python(): Refresh your R session and manually set the Python
# environment with all rgee dependencies.
# > ee_install(): To create and set a Python environment with all rgee
# dependencies.
# > ee_install_set_pyenv(): To set a specific Python environment.

