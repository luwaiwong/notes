###
# Lecture 1: Compute AIC/BIC example
###
nyc_restaurant_data = read.csv("https://gattonweb.uky.edu/sheather/book//docs/datasets/nyc.csv", 
                               header = T)
n = nrow(nyc_restaurant_data)

fit = lm(Price ~ East + Food + Decor, data = nyc_restaurant_data)
summary(fit)

# Compute AIC with all the constants
RSS = sum( resid(fit)^2 )
n * log(RSS/n) + n + n * log(2 * pi) + 2 * (3 + 2)
AIC(fit, k = 2)

# Compute AIC/BIC
aic_value = n * log(RSS/n) + 2 * (3 + 1)
extractAIC(fit, k = 2)

bic_value = n * log(RSS/n) + log(n) * (3 + 1)
extractAIC(fit, k = log(n))

BIC(fit)

###
# Lecture 2: All subsets example
###
library(leaps)

fit_full = lm(Price ~ East * Food * Decor * Service, data = nyc_restaurant_data)
par(mfrow = c(2, 2))
plot(fit_full, which = c(1, 2, 3, 4))
pairs(nyc_restaurant_data[c(4, 5, 6)])

fit_subsets = regsubsets(Price ~ East * Food * Decor * Service, data = nyc_restaurant_data,
                      nvmax=NULL,
                      nbest = 1)
summary_fit = summary(fit_subsets)
summary_fit$bic

fit_subsets$intercept

plot(fit_subsets, scale = "bic") # BIC

# What is computing with this BIC?
extractAIC( lm(Price ~ Food:Decor, data = nyc_restaurant_data),  k = 2 * log(n) ) - extractAIC( lm(Price ~ 1, data = nyc_restaurant_data),  k = 2 * log(n) ) 

# Fit the best model according to BIC
fit_bic = lm(Price ~ Food:Decor, data = nyc_restaurant_data)
extractAIC(fit_bic, k = log(n))

fit_bic = lm(Price ~ Food + Decor + Food:Decor, data = nyc_restaurant_data)
extractAIC(fit_bic, k = log(n))

# Check the final model assumptions
par(mfrow = c(2, 2))
plot(fit_bic, which = c(1, 2, 3, 4))

# Fit the previous model according to hypothesis tests
fit_old = lm(Price ~ East + Food + Decor, data = nyc_restaurant_data)
summary(fit_old)
extractAIC(fit_old, k = log(n))

# Compare prediction
new_predictors = data.frame(Food = 20, Decor = 20, East = 1)
predict(fit_bic, new_predictors)
predict(fit_old, new_predictors)

###
# Lecture 2: Backward selection example
###
fit_full = lm(Price ~ East * Food * Decor * Service, data = nyc_restaurant_data)

# Check the full model assumptions
par(mfrow = c(2, 2))
plot(fit_full, which = c(1, 2, 3, 4))

# Fit the selected model using BIC
stepfit = step(fit_full, direction="backward", k = log(n))
summary(stepfit)

# Check the final model assumptions
par(mfrow = c(2, 2))
plot(stepfit, which = c(1, 2, 3, 4))

# See how it handles polynomial terms
fit_full = lm(Price ~ East * Food * Decor * Service + I(Food^2), data = nyc_restaurant_data)
stepfit = step(fit_full, direction="backward", k = log(n))

# See how R handles categorical terms
data(iris)
fit_full = lm(Petal.Length ~ Species + Sepal.Width + Sepal.Length, data = iris)
stepfit = step(fit_full, direction="backward", k = log(n))

fit_full = lm(Petal.Length ~  Sepal.Width + Species * Sepal.Length, data = iris)
stepfit = step(fit_full, direction="backward", k = log(n))

###
# Lecture 2: Forward selection example
###
fit_full = lm(Price ~ East * Food * Decor * Service, data = nyc_restaurant_data)
fit_null = lm(Price ~ 1, data = nyc_restaurant_data)

# Check the full model assumptions
par(mfrow = c(2, 2))
plot(fit_full, which = c(1, 2, 3, 4))


# Fit the selected model using BIC
stepfit = step(fit_null, 
               scope=list(lower = Price ~ 1,
                          upper = Price ~ East * Food * Decor * Service), 
               direction="forward", 
               k = log(n))
summary(stepfit)

# Check the final model assumptions
par(mfrow = c(2, 2))
plot(stepfit, which = c(1, 2, 3, 4))

###
# MASS package example
###
library(MASS)

fit_full = lm(Price ~ East * Food * Decor * Service, data = nyc_restaurant_data)

stepAIC(fit_full, 
        k = log(n),
        direction = "backward")


###
# Lecture 3
###

###
# Some basic penalization methods
###
library(glmnet)

y = nyc_restaurant_data$Price
X = model.matrix(Price ~ East + Food + Decor + Service, data = nyc_restaurant_data)
X = X[, -1] # Remove intercept

# Ridge regression
fit = glmnet(X, y, alpha = 0, 
             lambda = 2)
coef(fit)

# Lasso regression
fit = glmnet(X, y, alpha = 1, 
             lambda = 2)
coef(fit)


###
# Prostate cancer data
###
prostate_data = read.table("https://gattonweb.uky.edu/sheather/book/docs/datasets/prostateTraining.txt", 
                           header = T)
n = nrow(prostate_data)
# Use the full model: lpsa ~ lcavol + lweight + age + lbph + svi + lcp + gleason + pgg45
fit_full = lm(lpsa ~ lcavol + lweight + age + lbph + svi + lcp + gleason + pgg45,
              data = prostate_data)
summary(fit_full)

# Check assumptions
par(mfrow = c(2, 2))
plot(fit_full, which = c(1, 2, 3, 4))

# Variable selection


