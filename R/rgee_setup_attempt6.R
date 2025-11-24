
install.packages("remotes")
remotes::install_github("r-spatial/rgee")

library(rgee)

ee_install() # This function will guide you through setting up a Python environment with necessary dependencies.
ee_Initialize() # Authenticates and initializes the Earth Engine R API.

ee_check()
