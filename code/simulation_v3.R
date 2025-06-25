# ===========================================================
# Reproducible SEM Simulation Script
# Author: Caspar Schumacher
# Date: 25.06.2025
# ===========================================================
# This script simulates a data-generating process where
# remote work (X) affects need satisfaction (Y) indirectly
# via organizational support structures (Z). It then compares
# the correct SEM model (with Z) to a misspecified model (without Z),
# illustrating the risk of omitted mediator bias.

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

# --- Step 1: Set seed and sample size ---
set.seed(7)
n <- 448  # sample size based on Brunelle & Fortin

# --- Step 2: Simulate confounders ---
# These act as common causes for both X and Y (C1: age, C2: gender, C3: tenure)
C1 <- rnorm(n, mean = 0, sd = 1)
C2 <- rnorm(n, mean = 0, sd = 1)
C3 <- rnorm(n, mean = 0, sd = 1)

# --- Step 3: Generate binary predictor X (remote vs. office) ---
# Logistic model creates probabilistic assignment based on confounders
logit_p <- 0.3 * C1 + 0.3 * C2 + 0.3 * C3
p <- 1 / (1 + exp(-logit_p))  # inverse logit
X <- rbinom(n, size = 1, prob = p)  # Bernoulli draw: 1 = remote, 0 = office

# --- Step 4: Simulate mediator Z (Organizational Support Structures) ---
# Z is positively influenced by X (remote work leads to more structured support)
a <- 0.5
Z <- a * X + rnorm(n, mean = 0, sd = 1)

# --- Step 5: Simulate outcome Y (Need Satisfaction – Relatedness) ---
# Y is affected by both X (directly) and Z (indirectly), plus confounders
b <- 0.5
c <- -0.15
Y <- c * X + b * Z + 0.1 * C1 + 0.1 * C2 + 0.1 * C3 + rnorm(n, mean = 0, sd = 1)

# --- Step 6: Combine into data frame ---
df <- data.frame(X, Z, Y, C1, C2, C3)

# --- Step 7: Specify correct SEM model (with mediator) ---
model <- '
  Z ~ a*X
  Y ~ c*X + b*Z + C1 + C2 + C3

  ab := a * b       # indirect path
  total := c + ab   # total effect
'

# --- Step 8: Fit and summarize SEM model ---
fit <- sem(model, data = df)
summary(fit, standardized = TRUE, fit.measures = TRUE)

# ------------------------------------------------------
# Additional Demonstration:
# What happens if we omit the mediator Z from the model?
# This mimics the potential misspecification in the original study.
# ------------------------------------------------------

# --- Step 9: Misspecified SEM (no mediator) ---
model_wrong <- '
  Y ~ c*X + C1 + C2 + C3
'

fit_wrong <- sem(model_wrong, data = df)
summary(fit_wrong, standardized = TRUE)
