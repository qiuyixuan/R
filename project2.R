# Yixuan Qiu
# Project 2
# 7/5/2020

gss91 <- read.spss("GSS1991.sav", to.data.frame=TRUE, use.value.labels = FALSE, trim_values=TRUE)
print(names(gss91))

gss16 <- read.spss("GSS2016.sav", to.data.frame=TRUE, use.value.labels = FALSE, trim_values=TRUE)
print(names(gss16))

hobj <- hist(gss91$WRKYEARS, main = "GSS 1991 Number of years worked since age 16", xlab = "Number of years", col = "steelblue", labels = TRUE, ylim = c(0, 280))
print(hobj$breaks)
print(hobj$density)
readline( "Press enter to continue" )

plot(gss91$AGE, gss91$WRKYEARS, xlab = "Age in Years", ylab = "Work Years", main = "Age versus Work Years", col = "red")

tab91 <- table(gss91$CONEDUC)
tab16 <- table(gss16$CONEDUC)
tab91perc <- 100 * tab91 / sum(tab91)
tab16perc <- 100 * tab16 / sum(tab16)

catname91 <- names(attr(gss91$CONEDUC, "value.labels"))
catname16 <- names(attr(gss16$CONEDUC, "value.labels"))

bobj91 <- barplot(tab91perc, names.arg = catname91, ylab = "Percentage", main = "GSS 1991 Confidence in Education")
bobj16 <- barplot(tab16perc, names.arg = catname16, ylab = "Percentage", main = "GSS 2016 Confidence in Education")





