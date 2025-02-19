```r
# Solution 1: Using `%in%` to check for column existence

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")
cols_present <- cols %in% names(df)
df_subset <- df[, cols[cols_present]]
print(df_subset)

# Solution 2: Using `dplyr::select` which throws an error if the columns are not found

library(dplyr)
df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")

# this will throw an error if the column is not found
df_subset <- df %>% select(all_of(cols)) #throws error if any column is missing
print(df_subset)

#Solution 3: Using tryCatch to handle potential errors 

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")

result <- tryCatch({ 
  df_subset <- df[, cols] 
  df_subset
}, error = function(e) { 
  message("Error subsetting data frame:", e)
  NULL # or return an appropriate default value
})

print(result)
```