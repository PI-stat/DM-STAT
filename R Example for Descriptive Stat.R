# Supplements of Advanced Statistics for Class Stat2A in 2015 Fall.
# This is a simple exmaple of R code for Descriptive Statistics.
# Last modified: 2015/12/30

### 1. Plots 

# (1) Generating the Data

n = 100 # sample size
score = rnorm(n,60,3) # scores of n students
sex = sample(c("boy","girl"),n,prob = c(0.7,0.3),replace=TRUE) # sampling with replacement
error = rnorm(n,0,2)  # random errors from N(0,2)
weight = 20 + 1.2*score + error # simple linear regression model

# (2) Stem-and-Leaf Display, Historgram, Boxplot, Scatter Plot, 
#     and normal probability plot, 

stem(score) # stem-and-leaf display

par(mfrow=c(2,2))   # Creat 2 X 2 panels in one figure
hist(score)         # histogram
boxplot(score)      # boxplot
plot(weight,score)  # scatter plot 2
qqnorm(score, main = "Normal Q-Q Plot", xlab = "Theoretical Quantiles", 
ylab = "Sample Quantiles")  # normal probability plot


# (3) Barplot and Pie Chart

score2 = split(score,sex)
n1 = length(score2$boy)
n2 = length(score2$girl)
par(mfrow = c(1,2))
pie(c(n1/100,n2/100),c("boy","girl")) # pie chart
barplot(c(n1,n2),legend=c("boy","girl"),col=c(2,3)) # bar chart

### 2. Numerical Measures
mean(score)
median(score)

range(score)
var(score)
sd(score)

min(score)
max(score)
quantile(score,c(0.25,0.5,0.75))
quantile(score,c(0.1,0.9))

cov(score,weight)
cor(score,weight)


range(score)
var(score)
sd(score)

min(score)
max(score)
quantile(score,c(0.25,0.5,0.75))
quantile(score,c(0.1,0.9))

cov(score,weight)
cor(score,weight)


### 3. Statistical Inference
##程式套件 ->  安裝程式套件 -> Taiwan(Taipei) -> 選 asbio
library(asbio)
one.sample.z(score, null.mu =60, sigma =4.8,alternative="two.sided") #單樣本z檢定
one.sample.t(score, null.mu =60, alternative="two.sided",conf = 0.95) #單樣本t檢定
