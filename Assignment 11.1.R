View(bank.additional.full)

dim(bank.additional.full)
#There are 41188 oberservations wtih 21 attributes in this data file.

str(bank.additional.full)
# All of them are in different format like int, numberic, factor .

psych::describe(bank.additional.full)

# This is a wondeful commnad to get the whole overview of the data set with values.

install.packages(VIM)
library(VIM)
missing <- bank.additional.full
missing[missing =="unknown"]<-NA
aggr(missing, col = c("blue", "Green"), numbers = TRUE, sortvars = TRUE, labels = names(missing), cex.axis=0.5, gap= 3, ylab =c("missing data", "pattern"))
sapply(missing, function(x)sum(is.na(x)))     

t<-table(bank.additional.full$job)
# We can find the tabular form of the variables by this command.
t

title<-barplot(t,xlab = "job", ylab = "Numbers", main = "Clients based on job", col = heat.colors(12), las = 3)

# We have got here the barplot of this data set in graphical shape.

text(title,0,t,pos=3,srt=90)
chisq.test(missing$job, missing$marital)  

# We have found that there is a relation between  job and marital status  at 95%  confidence level.
#  All NA values have been lees and have been removed or ommitted.

chisq.test(missing$job,missing$education)

# This is the relation between job and education.