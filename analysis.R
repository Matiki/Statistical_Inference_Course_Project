
# Set seed
set.seed(42)

# 1000 simulations of 40 exponential random variables
exp_sim <- NULL
for (i in 1:1000){
        exp_sim <- c(exp_sim, mean(rexp(40, 0.2)))
}

sim_matrix <- matrix(rexp(40000, 0.2), 1000, 40)
