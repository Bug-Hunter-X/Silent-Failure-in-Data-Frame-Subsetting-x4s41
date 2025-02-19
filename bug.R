```r
# This code attempts to subset a data frame using a character vector containing column names.
# However, it fails silently if any of the specified column names are not present in the data frame.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D") # 'D' is not a column in df
df_subset <- df[, cols]
print(df_subset)
```