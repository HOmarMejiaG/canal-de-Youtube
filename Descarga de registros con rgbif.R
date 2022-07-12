#################################################
Cargar las librerías
#################################################
library(rgbif)
library(plyr)
library(rgeos)
library(rgdal)
#################################################
Cargar la M del clado para restringir la búsqueda
#################################################
clado <- readOGR("Mfamilias.shp")
#################################################
Convertir la M a un polígono
#################################################
ex <- raster::extent(clado)
ex <- as(ex, "SpatialPolygons")
ex <- rgeos::writeWKT(ex)
#################################################
Descargar los datos desde gbif
#################################################
spp <- occ_search(scientificName = "Herichthys bartoni", fields = c('name', 'basisOfRecord', 'scientificName', 'catalogNumber', 'institutionCode', 'decimalLatitude', 'decimalLongitude', 'stateProvince', 'country', 'family', 'genus', 'locality'), limit = 50000,geometry=ex)
Exportar los datos
#################################################
spp.data <- spp$data
write.csv(spp.data, "D:/H.bartoni.csv")
#################################################
Crear el loop para descargar más especies o géneros reemplazando el nombre
#################################################
spp <- occ_search(scientificName = "Herichthys labridens", fields = c('name', 'basisOfRecord', 'scientificName', 'catalogNumber', 'institutionCode', 'decimalLatitude', 'decimalLongitude', 'stateProvince', 'country', 'family', 'genus', 'locality'), limit = 50000,geometry=ex)
spp.data <- spp$data
write.csv(spp.data, "D:/H.labridens.csv")

spp <- occ_search(scientificName = "Herichthys minckleyi", fields = c('name', 'basisOfRecord', 'scientificName', 'catalogNumber', 'institutionCode', 'decimalLatitude', 'decimalLongitude', 'stateProvince', 'country', 'family', 'genus', 'locality'), limit = 50000,geometry=ex)
spp.data <- spp$data
write.csv(spp.data, "D:/H.minckleyi.csv")

spp <- occ_search(scientificName = "Herichthys cyanoguttatus", fields = c('name', 'basisOfRecord', 'scientificName', 'catalogNumber', 'institutionCode', 'decimalLatitude', 'decimalLongitude', 'stateProvince', 'country', 'family', 'genus', 'locality'), limit = 50000,geometry=ex)
spp.data <- spp$data
write.csv(spp.data, "D:/H.cyanoguttatus.csv")

spp <- occ_search(scientificName = "Herichthys pantostictus", fields = c('name', 'basisOfRecord', 'scientificName', 'catalogNumber', 'institutionCode', 'decimalLatitude', 'decimalLongitude', 'stateProvince', 'country', 'family', 'genus', 'locality'), limit = 50000,geometry=ex)
spp.data <- spp$data
write.csv(spp.data, "D:/H.pantostictus.csv")

spp <- occ_search(scientificName = "Vieja", fields = c('name', 'basisOfRecord', 'scientificName', 'catalogNumber', 'institutionCode', 'decimalLatitude', 'decimalLongitude', 'stateProvince', 'country', 'family', 'genus', 'locality'), limit = 50000,geometry=ex)
spp.data <- spp$data
write.csv(spp.data, "D:/Vieja.csv")
