# Yixuan Qiu
# Project 3
# 7/12/2020


# Part 1
gss91 <- read.spss("GSS1991.sav", to.data.frame=TRUE, use.value.labels = FALSE, trim_values=TRUE)
gss16 <- read.spss("GSS2016.sav", to.data.frame=TRUE, use.value.labels = FALSE, trim_values=TRUE)
catname91 <- names(attr(gss91$CONEDUC, "value.labels"))

# Part 2
plot(gss91$AGE[gss91$SEX == 2], gss91$WRKYEARS[gss91$SEX == 2], xlab = "Age in Years", ylab = "Work Years", main = "Age versus Work Years (Women)", col = "pink")
plot(gss91$AGE[gss91$SEX == 1], gss91$WRKYEARS[gss91$SEX == 1], xlab = "Age in Years", ylab = "Work Years", main = "Age versus Work Years (Men)", col = "light blue")

tab91_f <- table(gss91$CONEDUC[gss91$SEX == 2])
tab91perc_f <- 100 * tab91_f / sum(tab91_f)
bobj91_f <- barplot(tab91perc_f, names.arg = catname91, ylab = "Percentage", main = "GSS 1991 Confidence in Education (Women)", ylim = c(0, 65))

tab91_m <- table(gss91$CONEDUC[gss91$SEX == 1])
tab91perc_m <- 100 * tab91_m / sum(tab91_m)
bobj91_m <- barplot(tab91perc_m, names.arg = catname91, ylab = "Percentage", main = "GSS 1991 Confidence in Education (Men)", ylim = c(0, 65))

# Part 3
# computes the value of a quadratic polynomial 
quadpoly <- function(x, a2, a1, a0) {
  return(a2 * x^2 + a1 * x + a0)
}

for(x in 1:5) {
  result <- quadpoly(x, 1, 2, 1)
  print(result)
}

# Part 4
makeBarPlot <- function( dataCol, dataTitle="", indexes = NULL, ylim=NULL, xlab=NULL ) {
  # if indexes is null
  if(is.null(indexes)) {
    tmptab <- table(dataCol)
  }
  else {
    tmptab <- table(dataCol[indexes])
  }
  tmptab <- 100 * tmptab / sum(tmptab)
  tlabels <- names( attr( dataCol, "value.labels" ) )
  tlabels <- tlabels[length(tlabels):1]
  plotObj <- barplot(tmptab, names.arg = tlabels, main = dataTitle, ylim = ylim, xlab = xlab)
  return(plotObj)
}

makeBarPlot( gss91$CHINA, "1991 China Perception (AGE < 40)", gss91$AGE < 40, ylim=c(0,25) )
makeBarPlot( gss91$CHINA, "1991 China Perception (AGE >= 40)", gss91$AGE >= 40, ylim=c(0,25) )
