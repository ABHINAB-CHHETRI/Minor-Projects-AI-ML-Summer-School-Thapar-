no_of_lines <- 1000
file.create("myfile.txt")
file.exists("myfile.txt")

for(i in 1:no_of_lines) {
  rand_string <- paste0(sample(c(letters, LETTERS), 10, replace = TRUE), collapse = "")
  cat(rand_string, "\n")
  write(rand_string, "myfile.txt", append = TRUE)
}

data <- matrix(sample(1:200, 100 * 30, replace = TRUE), nrow = 100, ncol = 30)
df <- as.data.frame(data)
head(df)

df[df >= 10 & df <= 60] <- NA

rows_with_na <- sum(apply(df, 1, function(row) any(is.na(row))))
rows_with_na <- sum(apply(df, 1, function(row) any(is.na(row))))
cat("Number of rows with missing values:", rows_with_na, "\n")

df <- as.data.frame(matrix(runif(600 * 15, -100, 100), 600, 15))
colnames(df) <- paste0("V", 1:15)

plot(df$V5, df$V6)
par(mfrow = c(3, 5)); for(i in 1:15) hist(df[[i]]); par(mfrow = c(1, 1))
boxplot(df)
