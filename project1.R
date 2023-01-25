# Yixuan Qiu 
# Project 1 
# 06/28/2020

valuesA <- 1:10
valuesB <- 11:20
valuesC <- c(21,22,23,24,25,26,27,28,29,30)

print(valuesA + valuesB)
print(valuesA - valuesB)
print(valuesA * valuesB)
print(valuesA / valuesB)

print(valuesA + valuesC)
print(valuesA - valuesC)
print(valuesA * valuesC)
print(valuesA / valuesC)

results <- double(4)
results[1] <- sum(valuesA + valuesB)
results[2] <- sum(valuesA - valuesB)
results[3] <- prod(valuesA)
results[4] <- sum(valuesA * valuesB)

df <- read.csv("test1.csv")
print(names(df))

print(df$A)
print(df[1])
print(df[[1]])

print(df[3,2])
print(df[1,])
print(df[2,])
print(as.numeric(df[1,]))
print(as.numeric(df[2,]))

print(sum(df$A))
print(mean(df$A))
print(sum(df$B))
print(mean(df$B))
print(sum(df$C))
print(mean(df$C))

# Create or find an Excel or CSV file with at least two columns of data of numeric data. 
# If it is an Excel file, save it as a CSV file. 
# Write code to read in the file and print out the mean of each of the first two columns of numeric data in the CSV file.