# Yixuan Qiu
# Project 4
# 7/19/2020


task1 <- function( ) {
  df <- read.csv("mixed.csv")
  print(str(df))
  print(summary(df))
  
  for(i in 1:length(df) ) {
    print(class(df[[i]]))
    print(typeof(df[[i]]))
  }

  df$Apple <- as.double(as.character(df$Apple))
  print(str(df))
  
  df <- read.csv("mixed.csv", na.strings = c("NA", "."))
  print(str(df))
  
  df$Banana <- as.character(df$Banana)
  print(summary(df$Banana))
  
  return(df)
}

task1_result <- task1()

task2 <- function(df) {
  indexes <- which(df$Pear < 50)
  print(indexes)
  print(df$Pear[indexes])
  
  indexes2 <- seq(1, 10, 3)
  print(indexes2)
  print(df$Pear[indexes2])
  
  odd_indexes <- seq(1, nrow(df), 2)
  print(df$Apple[odd_indexes])
  
  indexes4 <- which(df$Apple > 4.5 & df$Apple < 5.5)
  print(df$Apple[indexes4])
}

task2(df)

task3 <- function(df) {
  barplot(table(df$Size), main = "Fruit Size", xlim=c(0, 6), ylim=c(0,12))
  arrows(4, 9, 3, 6, col = "darkgreen", lwd = 2)
  text(4, 12, pos = 1, labels = "There are lots of small fruits", col = "darkred")
  lines(c(2.5, 5.5), c(9, 9), col = "darkblue", lwd=2)
}

task3(df)

task4 <- function(N=1000) {
  N=1000
  flat <- runif(N, 0, 100)
  bump <- rnorm(N, mean = 50, sd = 10)
  
  hist(flat, xaxt='n')
  axis(1)
  
  hist(bump, xaxt='n', ylim=c(0, 250))
  axis(1, cex.axis = 0.8)
  arrows(60, 220, 51, 220, col = "blue", lwd=3)
  text(60, 220, pos = 4, labels = "Big Bump!", col = "darkred")
  lines(c(60, 75), c(200, 200), col = "darkgreen", lwd=4)

}

task4(100)
task4()
task4(10000)
