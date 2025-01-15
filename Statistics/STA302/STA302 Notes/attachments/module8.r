nyc_restaurant_data = read.csv("https://gattonweb.uky.edu/sheather/book//docs/datasets/nyc.csv", 
                               header = T)
fit = lm(Price ~ East + Food + Decor, data = nyc_restaurant_data)
summary(fit)
par(mfrow=c(2, 2))
plot(fit, which = c(1, 2, 3, 4))

nyc_restaurant_data[130, ]
nyc_restaurant_data[56, ]

summary(nyc_restaurant_data)
hatvalues(fit)[130]

2 * mean( hatvalues(fit) )

plot(hatvalues(fit))
rstandard(fit)[130]

cooks.distance(fit)[130]
qf(.5, 4, 168 - 4)

r_130 = rstandard(fit)[130]
h_130 = hatvalues(fit)[130]
(r_130^2 / 4 ) * h_130/(1 - h_130)

dfbetas(fit)[130, ]

dffits(fit)[130]



