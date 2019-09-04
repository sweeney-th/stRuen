source("modules/Visualization/customPlot.R")

d <- read.csv("data/data.csv")

#customPlot(d, "texture_mean", "radius_mean")

xString <- "texture_mean"
yString <- "radius_mean"

ggplot(d,
  aes_string(xString, yString)) +
    geom_point(
      aes(colour = diagnosis),
        size = 12, alpha = 0.55) +
    geom_point(shape = 1, size = 12, colour = "black")
