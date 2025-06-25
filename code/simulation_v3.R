# ===========================================================
# Reproducible SEM Simulation Script
# Author: Caspar Schumacher
# Date: 25.06.2025
# ===========================================================
# This script simulates a simple mediation model with confounders
# using lavaan and demonstrates how prior theoretical structure 
# (VAST + DAG) can be translated into data-generating processes.

# → To reproduce: Copy & paste into your R environment 
# (RStudio recommended) and run the full script to obtain
# model estimates and fit indices.

# ===========================================================
# Main references and resources consulted:
# - Data Simulation in R: https://www.oer.psy.lmu.de/MSc_UK/SEM/Kausale_Inferenz.html
# - lavaan tutorial on Mediation: http://lavaan.ugent.be/tutorial/mediation.html 
# - OpenAI ChatGPT (2024–2025) for guidance and iterative refinement
# ===========================================================





# Load required libraries
library(lavaan)

# Set seed and sample size
set.seed(7)
n <- 448

# Simulate confounders
C1 <- rnorm(n, mean = 0, sd = 1)
C2 <- rnorm(n, mean = 0, sd = 1)
C3 <- rnorm(n, mean = 0, sd = 1)

# Generate binary predictor X (1 = remote, 0 = office) based on logistic model
logit_p <- 0.3 * C1 + 0.3 * C2 + 0.3 * C3
p <- 1 / (1 + exp(-logit_p))
X <- rbinom(n, size = 1, prob = p)

# Simulate mediator Z (Organizational Support Structures)
a <- 0.5
Z <- a * X + rnorm(n, mean = 0, sd = 1)

# Simulate outcome Y (Need satisfaction – Relatedness)
b <- 0.5
c <- -0.15
Y <- c * X + b * Z + 0.1 * C1 + 0.1 * C2 + 0.1 * C3 + rnorm(n, mean = 0, sd = 1)

# Combine data
df <- data.frame(X, Z, Y, C1, C2, C3)

# Specify SEM model
model <- '
  Z ~ a*X
  Y ~ c*X + b*Z + C1 + C2 + C3

  ab := a * b
  total := c + ab
'

# Fit SEM
fit <- sem(model, data = df)

# Output with standardized results and fit indices
summary(fit, standardized = TRUE, fit.measures = TRUE)

