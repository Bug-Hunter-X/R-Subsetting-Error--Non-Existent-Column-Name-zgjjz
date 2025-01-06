```R
# Corrected code to handle potential errors when subsetting a data frame
data <- data.frame(a = c(1, 2, 3), b = c(4, 5, 6))
cols_to_select <- c("a", "c")

# Check if all columns exist before subsetting
if (all(cols_to_select %in% names(data))) {
  subset_data <- data[, cols_to_select]
} else {
  # Handle the case where not all columns exist
  missing_cols <- setdiff(cols_to_select, names(data))
  warning(paste("Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
  # Choose how to handle missing columns, e.g., select only existing columns:
  subset_data <- data[, intersect(cols_to_select, names(data))]
}

print(subset_data)
```