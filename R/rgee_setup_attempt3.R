install.packages("devtools")

library(devtools)

#AI told me to use miniconda, but that has not proven successful.

install.packages("reticulate")
reticulate::install_miniconda()

library(rgee)
ee_Initialize()

ee_install_set_pyenv("/home/rstudio/.cache/R/reticulate/uv/cache/archive-v0/v-mHIZ3fznWft6LbliK4O/bin/python")
ee_install(py_env = "rgee", earthengine_version = ee_version(), python_version = "3.13", confirm = interactive())

# Error in ee_connect_to_py(path = ee_current_version, n = 5) :
#   The current Python PATH:
#   /home/rstudio/.cache/R/reticulate/uv/cache/archive-v0/v-mHIZ3fznWft6LbliK4O/bin/python
# does not seem to have the Python package "earthengine-api" installed,
# or cannot load it properly.
# The error message was:
#   Error in py_module_import(module, convert = convert) :
#   ModuleNotFoundError: No module named 'ee'
# Run `reticulate::py_last_error()` for details.
#
# Did you restart/terminate your R session after
# installing miniconda or running ee_install()?
#   If this is not the case, try:
#   > ee_install_upgrade(): Install the latest Earth Engine Python version.
# > reticulate::use_python(): Refresh your R session and
# manually set the Python environment with all rgee dependencies.
# > ee_install(): To create and set a Python environment with all rgee dependencies.
# > ee_install_set_pyenv(): To set a specific Python environment.

ee_exists()

# Example: Get information about a dataset
collection <- ee$ImageCollection("NASA/GIBS/MODIS/MOD09GA_TrueColor")
print(collection)

