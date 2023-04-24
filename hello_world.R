# Load required packages
library(purrr)

# Load sum_function from the sum_function.R file
source("sum_function.R")

# Load commandArgs function
args <- commandArgs(trailingOnly = TRUE)

# Get numbers from command line arguments or use default values
x <- as.numeric(args[1])
y <- as.numeric(args[2])

if (is.na(x) || is.na(y)) {
  # Print Hello, World!
  print("Hello, World!")
} else {
  # Perform a basic calculation and print the result using sum_function
  result <- sum_function(x)
  print(paste("The sum of", x, "and", x, "is", result))
}