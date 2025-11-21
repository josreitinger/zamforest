
#This code was made with AI assistance
library(devtools)
library(rgee)

ee.install() #This attempts to install to make the following function work,
#but fails on its own instead.
ee_Initialize() #This is where the code always breaks

# Define the dataset
dataset <- ee$ImageCollection("GOOGLE/SATELLITE_EMBEDDING/V1/ANNUAL")

# Define a point of interest (longitude, latitude)
point <- ee$Geometry$Point(c(-121.8036, 39.0372))

# Filter for a specific year
image <- dataset$filterDate("2023-01-01",
                            "2023-12-31")$filterBounds(point)$first()

# Load and convert the image to a data frame
image_data <- ee_as_raster(image, region = point$buffer(10000)$bounds(),
                           scale = 100)

library(rgee)

ee_install()

# Initialize Earth Engine
ee_Initialize()

# Define dataset
dataset <- ee$ImageCollection("GOOGLE/SATELLITE_EMBEDDING/V1/ANNUAL")

# Define a point of interest
point <- ee$Geometry$Point(c(-121.8036, 39.0372))

# Filter the dataset
image <- dataset$filterDate("2023-01-01",
                            "2023-12-31")$filterBounds(point)$first()

# Convert to raster format
image_data <- ee_as_raster(image, region = point$buffer(10000)$bounds(),
                           scale = 100)

# View the result
print(image_data)




