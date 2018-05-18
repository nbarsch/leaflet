leafletrroseDependencies <- function() {
  list(
    htmltools::htmlDependency(
      "leaflet-rrose",
      "0.2.0",
      system.file("htmlwidgets/plugins/rrose-master", package = "leaflet"),
      script = c("leaflet.rrose-src.js"),
      stylesheet = c("leaflet.rrose.css")
    )
  )
}
rrose <- function(map) {
  map$dependencies <- c(map$dependencies, leafletRROSEDependencies())
  map
}