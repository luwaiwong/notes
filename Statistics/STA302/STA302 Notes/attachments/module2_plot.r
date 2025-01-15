require("scatterplot3d")

# Assign the data to variables
sepal_length = iris$Sepal.Length
sepal_width = iris$Sepal.Width
petal_length = iris$Petal.Length

# Plot points
plt = scatterplot3d(sepal_length, # x axis
                    sepal_width, # y axis
                    petal_length, # z axis
                    angle = 70, # presentation angle
                    main="Iris data",
                    xlab = "Sepal length (cm)",
                    ylab = "Sepal width (cm)",
                    zlab = "Petal length (cm)")
# Plot regression plane
plt$plane3d(Intercept = -2.524762, # intercept term
            x.coef = 1.775593, # sepal length coefficient
            y.coef = -1.338623) # sepal width coefficient