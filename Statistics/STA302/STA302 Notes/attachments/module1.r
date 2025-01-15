# ------------------------------------------------------
# Lecture 1
# ------------------------------------------------------

# Load data from hosted on the web
# datasets for the textbok: http://gattonweb.uky.edu/sheather/book/docs/datasets
df = read.table("http://gattonweb.uky.edu/sheather/book/docs/datasets/production.txt", 
                header = T)
head(df)
df$RunTime
df$RunSize


# ------------------------------------------------------
# Lecture 2
# ------------------------------------------------------

# Import data set
production = read.table("http://gattonweb.uky.edu/sheather/book/docs/datasets/production.txt", header = T)

# Fit linear regression model
fitted_model = lm(RunTime ~ RunSize, data = production)

coef(fitted_model)

# Summary of the model
summary(fitted_model)

plot(production$RunSize, production$RunTime, 
     main = "Simple Linear Regression on Production Data", 
     xlab = "Number of items produced", ylab = "Time taken in minutes")
abline(149.7477, 0.2592, 
       col=c("red"), lty=2)

# ------------------------------------------------------
# Lecture 3
# ------------------------------------------------------

# Load data set
df = read.table("http://gattonweb.uky.edu/sheather/book/docs/datasets/production.txt", header = T)
x = df$RunSize
y = df$RunTime

x_bar = mean(x)
y_bar = mean(y)
s_xx = sum( (x - x_bar)^2 )
s_xy = sum( (y - y_bar) * (x - x_bar) )

beta_1_hat = s_xy / s_xx 
beta_0_hat = mean(y) - beta_1_hat * mean(x)

plot(x, y, 
     main = "Simple Linear Regression on Production Data", 
     xlab = "Number of items produced", ylab = "Time taken in minutes")

abline(beta_0_hat, beta_1_hat, 
       col=c("blue"), lty=2)

# The lm function
fit = lm(y ~ x)
coef(fit)