# Silent Failure in R Data Frame Subsetting

This repository demonstrates a common, yet subtle, error in R when subsetting data frames using character vectors of column names.  If the character vector includes names not present in the data frame, the code silently fails, dropping the missing columns without any warning or error message. This can lead to hard-to-detect bugs.

The `bug.R` file shows the problematic code, and `bugSolution.R` provides solutions.