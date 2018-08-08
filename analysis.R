# Load necessary R packages
library(dplyr)

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

# Histogram showing the sample distribtution 
hist(exp_sim)

# Show the sample mean and sample variance (theoretical = 1/lambda)
mean(exp_sim)
sd(exp_sim) * sqrt(n)
