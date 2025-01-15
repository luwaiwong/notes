# ------------------------------------------------------
# Lecture 1: interactions
# ------------------------------------------------------

data(iris)

# Fit only main effects
fit = lm(Petal.Length ~ Sepal.Length + Sepal.Width +  Sepal.Length:Sepal.Width, 
                  data = iris)

fit = lm(Petal.Length ~ Sepal.Length * Sepal.Width, 
                  data = iris)


# Fit with indicator variables
fit = lm(Petal.Length ~ Species + Sepal.Width + Species:Sepal.Width + Sepal.Length, 
                  data = iris)

fit = lm(Petal.Length ~ Species * Sepal.Width + Sepal.Length, 
                  data = iris)
summary(fit)

fit = lm(Petal.Length ~ Species * Sepal.Width * Sepal.Length, 
         data = iris)
summary(fit)

# ------------------------------------------------------
# Lecture 1: polynomial regression
# ------------------------------------------------------

professional_salary_data = read.table("https://gattonweb.uky.edu/sheather/book/docs/datasets/profsalary.txt", header=T)
head(professional_salary_data)

plot(professional_salary_data$Experience,
     professional_salary_data$Salary)

fit = lm(Salary ~ Experience, data = professional_salary_data)
plot(fit, 1)

plot(professional_salary_data$Experience, resid(fit))

fit = lm(Salary ~ Experience + I(Experience^2), data = professional_salary_data)
plot(fit, 1)

plot(professional_salary_data$Experience, resid(fit))