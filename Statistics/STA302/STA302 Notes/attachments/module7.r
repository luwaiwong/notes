###
# Example
###
load("module7.Rdata")

fit = lm(y ~ x1 + x2, data = data)
summary(fit)

###
# Compute R^2
###
fit = lm(y ~ x1 + x2, data = data)
summary(fit)

# Compute R^2
x1 = data$x1
x2 = data$x2
y = data$y

RSS = sum( resid(fit)^2 )
SST = sum( (y - mean(y))^2 )
R2 = 1 - RSS/SST

# Compute overall F statistic
n = length(y)
sigma2_hat = RSS / (n - 3)
SS_reg = SST - RSS
F_stat = SS_reg / (2 * sigma2_hat)


###
# Explore multicollinearity
###
pairs(data)

fit2 = lm(x2 ~ x1, data = data)
summary(fit2)

par(mfrow = c(2, 2))
plot(fit2)


###
# Use package for VIF
###
install.packages("car") # Installs the package

library(car) # load the packge

vif(fit) # Compute the VIF/GVIF for all predictors at the same time


