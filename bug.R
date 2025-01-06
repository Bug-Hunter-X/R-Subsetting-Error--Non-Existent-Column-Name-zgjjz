```R
# This code attempts to subset a data frame using a character vector, but it contains an error.
data <- data.frame(a = c(1, 2, 3), b = c(4, 5, 6))
cols_to_select <- c("a", "c")
subset_data <- data[, cols_to_select]
```