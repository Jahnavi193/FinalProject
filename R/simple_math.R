# This package is to create simple math funtions
# I used add_three as a function

#' To create the simple math functions
#'
#' @param I used different math functions
#'
#' @return
#' @export
#'
add_three <- function(a){
  b <- a + 2
  return(b)
}
add_three(4)

#'@examples

quadratic <- function(a, b, c){
  root1 <- (-b + sqrt(b^2 - 4 * a * c)) / (2 * a)
  root2 <- (-b - sqrt(b^2 - 4 * a * c)) / (2 * a)
  root1 <- paste("x =", root1)
  root2 <- paste("x =", root2)
  ifelse(root1 == root2,
         return(root1),
         return(c(root1, root2)))
}
quadratic(1, 7, 2)

coords <- function(){
# Sample to get a random lat and long

  latitude <- runif(n = 1, min = -70, max = 90)
  longitude <- runif(n = 1, min = -180, max = 180)
  print(paste("Latitude: ", latitude, " Longitude: ", longitude, sep = ""))
# Data to plot a India map
  world <- maps_data("world")
# Plot the India map
  ggplot() +
    geom_map(data = world, map = world,
             aes(long, lat, map_id = region),
             color = "black", fill = "lightgray", size = 0.1) +
# Plot the random point on top of the India map
    geom_point(aes(longitude, latitude), color = "red")
}
# What coordinates I get this time?
coords()

# Bar plot of temperatures vector in the world

temperatures <- c(20, 27, 25, 24, 22, 26, 28)
result <- barplot(temperatures)
print(result)

# Adding more functions to the bar plot

temperatures <- c(20, 27, 25, 24, 22, 26, 28)

result <- barplot(temperatures,
                  main = "Maximum Temperatures in the world",
                  xlab = "Degree Celsius",
                  ylab = "country",
                  names.arg = c("Ind", "USA", "UK", "South Korea", "Japan", "Russia", "Italy"),
                  col = "grey"
)

print(result)
