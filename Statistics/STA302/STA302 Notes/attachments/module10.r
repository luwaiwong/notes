###
# Drop1
###
prostate_data = read.table("https://gattonweb.uky.edu/sheather/book/docs/datasets/prostateAlldata.txt", 
                           header = T)
fit = lm("lpsa ~ lcavol + lweight + svi + lbph", data = prostate_data)
drop1(fit, test = "F")
      
###
# Train/test split
###
prostate_data = read.table("https://gattonweb.uky.edu/sheather/book/docs/datasets/prostateAlldata.txt", 
                           header = T)
n = nrow(prostate_data)

set.seed(1)
train_indices = sample(1:n, # integers to sample
                       floor(.5 * n), # sample size 
                       replace = F) # without replacement

train_data = prostate_data[train_indices, ]
test_data = prostate_data[-train_indices, ]

###
# Train/test split fitting
###
fit_train = lm("lpsa ~ lcavol + lweight + svi + lbph", data = train_data)
pred_test = predict(fit_train, test_data)
test_mse = mean( (test_data$lpsa - pred_test)^2 )
print(test_mse)

###
# Resample train/test split
###
prostate_data = read.table("https://gattonweb.uky.edu/sheather/book/docs/datasets/prostateAlldata.txt", 
                           header = T)
n = nrow(prostate_data)

set.seed(1)
n_resamples = 1000 # Number of resamples

resample_mse = c()
for (i in 1:n_resamples) {
  train_indices = sample(1:n, # integers to sample
                         floor(.5 * n), # sample size 
                         replace = F) # without replacement
  
  train = prostate_data[train_indices, ]
  test = prostate_data[-train_indices, ]
  
  fit_train = lm("lpsa ~ lcavol + lweight + svi + lbph", data = train)
  pred_test = predict(fit_train, test)
  test_mse = mean( (test$lpsa - pred_test)^2 )
  
  resample_mse = c(resample_mse, test_mse)
}

print( mean(resample_mse) )


###
# LOO CV
###
data = read.table("https://gattonweb.uky.edu/sheather/book/docs/datasets/prostateAlldata.txt", 
                  header = T)
loo_mse = c() # = NULL would also work here
for (i in 1:n) {
  train = data[-i, ]
  test = data[i, ]
  
  fit_train = lm("lpsa ~ lcavol + lweight + svi", data = train)
  pred_test = predict(fit_train, test)
  mse = (test$lpsa - pred_test)^2
  loo_mse = c(loo_mse, mse)
}

mean(loo_mse)

##
# Returns the MSE values from LOO CV with lpsa as response
##
prostate_data_loo_cv = function(model) {
  data = read.table("https://gattonweb.uky.edu/sheather/book/docs/datasets/prostateAlldata.txt", 
                             header = T)
  n = nrow(data)
  loo_mse = c() # = NULL would also work here
  for (i in 1:n) {
    train = data[-i, ]
    test = data[i, ]
  
    fit_train = lm(model, data = train)
    pred_test = predict(fit_train, test)
    mse = (test$lpsa - pred_test)^2
    loo_mse = c(loo_mse, mse)
  }

  return (loo_mse)
}

# Select a model
mean( prostate_data_loo_cv("lpsa ~ lcavol + lweight + svi + lbph") )
mean( prostate_data_loo_cv("lpsa ~ lcavol + lweight + svi") )

# Fit the entire data with the selected model
prostate_data = read.table("https://gattonweb.uky.edu/sheather/book/docs/datasets/prostateAlldata.txt", 
                           header = T)
fit = lm("lpsa ~ lcavol + lweight + svi + lbph", data = prostate_data)
