# Load necessary R packages
library(dplyr)
library(ggplot2)

# Set seed
set.seed(42)

# 1000 simulations of 40 exponential random variables
exp_sim <- NULL
num_sims <- 1000
n <- 40
lambda <- 0.2

for (i in 1 : num_sims){
        exp_sim <- c(exp_sim, mean(rexp(n, lambda)))
}


# Compare sample mean to theoretical (1/lambda = 5)
mean(exp_sim)

# Compare sample variance to theoretical (1/lambda = 5)
sd(exp_sim) * sqrt(n)

# Histogram showing distrubution of 1000 random exponential variables
hist(rexp(1000, lambda))

# Histogram showing distribtution of 1000 averages of 40 exponential variables 
hist(exp_sim)


###########
## Part 2##
###########

# Load data and conduct simple exploratory analysis
data("ToothGrowth")

str(ToothGrowth)
head(ToothGrowth)
summary(ToothGrowth)

# make plot comparing Tooth length over different supplements and doses 
ggplot(ToothGrowth, aes(x = dose, y = len)) + geom_point(aes(col = supp))

# Check to see if data appear normally distributed
ggplot(ToothGrowth, aes(len)) + geom_histogram()
