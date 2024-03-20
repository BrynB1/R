# cs201_asn_2.R
# Bryn Bijur, s1324044
# CS-201
# Spring 2024

# 1 Trees
library(datasets)
data(PlantGrowth)
# Number of rows and columns
num_rows <- nrow(PlantGrowth)
num_cols <- ncol(PlantGrowth)
# Number of rows: 30, Number of columns: 2

# Class and data type of variables
class_var1 <- class(PlantGrowth$weight)[1]
class_var2 <- class(PlantGrowth$group)[1]
data_type_var1 <- typeof(PlantGrowth$weight)
data_type_var2 <- typeof(PlantGrowth$group)
#           Class    Data Type
# weight:  numeric    double
# group:   factor     integer

# Median, maximum, and minimum weights for each group
med_ctrl <- median(PlantGrowth$weight[PlantGrowth$group == "ctrl"])
med_trt1 <- median(PlantGrowth$weight[PlantGrowth$group == "trt1"])
med_trt2 <- median(PlantGrowth$weight[PlantGrowth$group == "trt2"])

max_ctrl <- max(PlantGrowth$weight[PlantGrowth$group == "ctrl"])
max_trt1 <- max(PlantGrowth$weight[PlantGrowth$group == "trt1"])
max_trt2 <- max(PlantGrowth$weight[PlantGrowth$group == "trt2"])

min_ctrl <- min(PlantGrowth$weight[PlantGrowth$group == "ctrl"])
min_trt1 <- min(PlantGrowth$weight[PlantGrowth$group == "trt1"])
min_trt2 <- min(PlantGrowth$weight[PlantGrowth$group == "trt2"])

# ctrl: Median=5.155, Max=6.11, Min=4.17
# trt1: Median=4.55, Max=6.03, Min=3.59
# trt2: Median=5.435, Max=6.31, Min=4.92

# Bar plot
barplot(table(PlantGrowth$group), main="Number of Weight Observations for Each Group", xlab="Group", ylab="Number of Observations", col="skyblue")

# Box plot
boxplot(weight ~ group, data=PlantGrowth, main="Plant Growth Data", xlab="Group", ylab="Dried weight of plants", col="lightgreen")


# 2 State information
?state
data(state)
# Create data frame st_area_region
st_area_region <- data.frame(
  state = state.abb,
  area = state.area,
  region = state.region  # Corrected from state.regions
)

# Generate a plot showing the number of states in each of the four regions
plot <- ggplot(st_area_region, aes(x = factor(region))) +
  geom_bar() +
  labs(title = "Number of States per Region", x = "Region", y = "Number of States")

# Total areas of each state region
total_area <- tapply(st_area_region$area, st_area_region$region, sum)
cat("Total area of Northeast region:", total_area["Northeast"], "square miles\n")
cat("Total area of Northcentral region:", total_area["North Central"], "square miles\n")
cat("Total area of South region:", total_area["South"], "square miles\n")
cat("Total area of West region:", total_area["West"], "square miles\n")
cat("Total area of all regions:", total_area["Northeast"]+total_area["North Central"]+total_area["South"]+total_area["West"])
#Total area of all regions: 3618399

# Find the state with the largest and smallest area
largest_area_state <- st_area_region[which.max(st_area_region$area), ]
smallest_area_state <- st_area_region[which.min(st_area_region$area), ]
cat("State with the largest area:", largest_area_state$state)
cat("State with the smallest area:", smallest_area_state$state)
#Largest:AK/Smallest:RI

# Print the plot
print(plot)

# 3 Functions
rand_bw <- function(low, high) {
  if (missing(low) || missing(high)) {
    stop("Please provide both 'low' and 'high' values.")
  }
  
  if (low > high) {
    temp <- low
    low <- high
    high <- temp
  }
  
  return(sample(low:high, 1))
}
rand_bw(1, 6)                
rand_bw(0, 1)                
rand_bw(19, 0)               
rand_bw(low = 1, high = 20)  
rand_bw(hi = 1, lo = 20)     

#4 Vectors
?paste
pypr <- function(vec) {
  paste("[", paste(vec, collapse = ","), "]", sep = "")
}

mystrvec <- c('a', 'b', 'c', 'd')
pypr(mystrvec)
myintvec <- c(4, 3, 2, 1)
pypr(myintvec)

