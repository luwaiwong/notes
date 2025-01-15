# ------------------------------------------------------
# Lecture 1: Activity
# ------------------------------------------------------

# Load data
data(iris)

# print out summary of the data
summary(iris)

# Fit iris with R
fitted_model = lm(Petal.Length ~ Sepal.Length + Sepal.Width, 
                  data = iris)

# What does this do?
beta_hat = coef(fitted_model)

# What does this do?
Xbeta_hat = fitted(fitted_model)

# What does this do?
X = model.matrix(fitted_model)

# What does this do?
Xbeta_hat = X %*% beta_hat


# ------------------------------------------------------
# Lecture 2: Activity
# ------------------------------------------------------

# Load data
y = c(2, 3, 2, 7, 6, 8, 10, 7, 8, 12, 11, 14)
x1 = c(0, 2, 2, 2, 4, 4, 4, 6, 6, 6, 8, 8)
x2 = c(2, 6, 7, 5, 9, 8, 7, 10, 11, 9, 15, 13)
ones = rep(1, 12)

# Construct X
X = matrix(c(ones, x1, x2), ncol = 3)

# Compute the least squares solution
XtX = t(X) %*% X
Xty = t(X) %*% y
XtX_inv = solve(XtX) # solve() inverts the matrix X^T X 

beta_hat = XtX_inv %*% Xty


# Compare with lm
fit = lm(y ~ x1 + x2)
coef(fit)

# Compute RSS with R
RSS = sum( fit$residuals^2 )

# Check that it is the same using the definition
RSS_check = sum( (y - X %*% beta_hat )^2 )



# ------------------------------------------------------
# Lecture 3: Categorical variables activity
# ------------------------------------------------------

# Fit lm with categorical predictors
fit = lm(Petal.Length ~ Species, data=iris)


# Let's go through what R is doing to understand

# Create dummy variables for species
Speciesversicolor = as.integer(iris["Species"] == "versicolor")
Speciesvirginica = as.integer(iris["Species"] == "virginica")

# Get first 4 columns from iris
iris_subsetted = iris[, c(1, 2, 3, 4)]

# Create new iris dataset with dummy variables
iris_converted = data.frame(iris_subsetted, 
                            Speciesversicolor, 
                            Speciesvirginica)

# Fit with lm using dummy variables
fit_manually = lm(Petal.Length ~ Speciesversicolor + Speciesvirginica,
                  data = iris_converted)


# ------------------------------------------------------
# Lecture 3
# ------------------------------------------------------

data(iris)

# Fit only main effects
fitted_model = lm(Petal.Length ~ Sepal.Length + Sepal.Width, 
                  data = iris)

# Fit with indicator variables
fitted_model = lm(Petal.Length ~ Species + Sepal.Length + Sepal.Width, 
                  data = iris)


# ------------------------------------------------------
# Lecture 3: Activity
# ------------------------------------------------------

nyc_menu_data = read.csv("https://gattonweb.uky.edu/sheather/book//docs/datasets/nyc.csv", 
                         header = T)

