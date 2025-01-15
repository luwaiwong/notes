###
# Lecture 1
###

###
# Understand pt function
###
pt(5, df = 98, lower.tail=FALSE)

###
# Manually compute a t-test
###
load("module6.Rdata")
head(data1)

x = data1$x
y = data1$y

# Compute least squares estimates
s_xx = sum( (x - mean(x))^2 )
x_bar = mean(x)
y_bar = mean(y)
beta_1_hat = sum((y - y_bar) * (x - x_bar)) / s_xx
beta_0_hat = y_bar - beta_1_hat * x_bar

# Compute estimate to sigma2
resid = y - beta_0_hat - beta_1_hat * x
RSS = sum( resid^2 ) 
sigma2_hat = RSS / 98

# Compute estimated standard errors
se_beta_1 = sqrt( sigma2_hat/s_xx )
se_beta_0 = sqrt( sigma2_hat/100 + sigma2_hat * x_bar^2 /s_xx )

# Compute test statistics and p-values
test_stat1 = beta_1_hat / se_beta_1
2 * pt(abs(test_stat1), df = 98, lower.tail=FALSE)

test_stat0 = beta_0_hat / se_beta_0
2 * pt(abs(test_stat0), df = 98, lower.tail=FALSE)


###
# Use summary output to perform a t-test
###
fit = lm(y ~ x, data = data1)
summary(fit)

###
# Use summary output to perform a t-test in multiple regression
###
fit = lm(y ~ group + x2, data = data2)
summary(fit)

###
# Lecture 2
###

###
# Understand pf, qf functions
###
pf(4.102821, df1 = 2, df2 = 10)
qf(.95, df1 = 2, df2 = 10)



###
# Lecture 3
###

###
# Simple linear regression worked example 
###
load("module6.Rdata")
head(data1)

x = data1$x
y = data1$y

resid_full = y - beta_0_hat - beta_1_hat * x
RSS_full = sum( resid_full^2 ) 

resid_null = y - y_bar
RSS_null = sum( resid_null^2 ) 

SS_reg = RSS_null - RSS_full

MS_reg = SS_reg/1
MSR = RSS_full/98

test_stat = MS_reg/MSR
pf(test_stat, df1 = 1, df2 = 98, lower.tail=FALSE)

####
# Compare this to summary output and using t-tests
####
fit = lm(y ~ x, data = data1)
summary(fit)

fit_null = lm(y ~ 1, data = data1)
summary(fit_null)

####
# Use the anova function in R
####
fit_full = lm(y ~ x)
fit_null = lm(y ~ 1)
anova(fit_null, fit_full)

# Observe
summary(fit)
6.542^2


###
# Multiple linear regression F tests worked example
###
load("module6.Rdata")
head(data2)

fit_full = lm(y ~ x1 + group + x2 + x1:x2, data = data2)
fit_reduced = lm(y ~ x1 + group + x2, data = data2)
anova(fit_reduced, fit_full)


# Compare this to summary output
summary(fit_full)

