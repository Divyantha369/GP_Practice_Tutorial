library(rstan)
rstan_options(auto_write = TRUE)
options(mc.cores = parallel::detectCores())
parallel:::setDefaultClusterOptions(setup_strategy = "sequential")

util <- new.env()

par(family="CMU Serif", las=1, bty="l", cex.axis=1, cex.lab=1, cex.main=1,
    xaxs="i", yaxs="i", mar = c(5, 5, 3, 5))

N = 551
x <- 22 * (0:(N - 1)) / (N - 1) - 11

alpha_true <- 3
rho_true <- 5.5
simu_data <- list(alpha=alpha_true, rho=rho_true, N=N, x=x)
