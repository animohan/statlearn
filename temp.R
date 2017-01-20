pairs(auto)
pairs(~ mpg + displacement, auto)
pairs(~ mpg + horsepower, auto)
pairs(~ mpg + weight, auto)
pairs( ~mpg + acceleration, auto)
pairs(~ mpg + year, auto)
pairs( ~ cylinders + displacement, auto)

library(ggplot2)
ggplot(auto, aes(cylinders, displacement)) + geom_point() + xlab("Cylinders") + ylab("Displacement") + ggtitle("Auto: MPG vs Displacement")
ggplot(auto, aes(displacement, weight)) + geom_point(aes(color = "red", size = 2, alpha = 1/4)) + xlab("Cylinders") + ylab("Displacement") + ggtitle("Auto: MPG vs Displacement")
ggplot(auto, aes(displacement, horsepower)) + geom_point(shape = 21, color = "black" , fill = "white", stroke = 5) + xlab("Cylinders") + ylab("Displacement") + ggtitle("Auto: MPG vs Displacement")

#Can have color by categorical variable

ggplot(auto, aes(mpg, horsepower)) + geom_point(aes(color = factor(cylinders))) + xlab("MPG") + ylab("horsepower") + ggtitle("Auto: MPG vs Horsepower")
ggplot(auto, aes(mpg, weight)) + geom_point(aes(color = cylinders)) + scale_color_gradient(low = "blue") + xlab("MPG") + ylab("horsepower") + ggtitle("Auto: MPG vs Horsepower")
#Note we removed factor from cylinders

ggplot(auto, aes(mpg, horsepower)) + geom_point(aes(shape = factor(cylinders))) + xlab("MPG") + ylab("horsepower") + ggtitle("Auto: MPG vs Horsepower")
ggplot(auto, aes(mpg, horsepower)) + geom_point(aes(size = factor(cylinders))) + xlab("MPG") + ylab("horsepower") + ggtitle("Auto: MPG vs Horsepower")


ggplot(auto, aes(horsepower,weight)) + geom_point(aes(color = cylinders, shape = factor(origin))) + xlab("MPG") + ylab("horsepower") + ggtitle("Auto: MPG vs Horsepower")
ggplot(auto, aes(horsepower,weight)) + geom_point(aes(color = factor(cylinders), shape = factor(origin))) + xlab("MPG") + ylab("horsepower") + ggtitle("Auto: MPG vs Horsepower")


# Predict Mileage
#Mileage seems to be predictor; better predictor when combined with cylinders
ggplot(auto, aes(mpg,weight)) + geom_point(aes(color = factor(cylinders))) + xlab("MPG") + ylab("Weight") + ggtitle("Auto: MPG vs Weight")


#Boston
library(MASS)
names(Boston)
pairs(Boston)

ggplot(Boston, aes(crim, dis)) + geom_point(aes(color = medv)) + xlab("Crime Rate") + ylab("Distance from Employment Center") + ggtitle("Boston: Crime rate vs Emp Center Distance")
ggplot(Boston, aes(nox, dis)) + geom_point(aes(color = factor(chas))) + xlab("Nitrogen Levels") + ylab("Employment Center distance") + ggtitle("Boston: Nitrogen vs Emp Center Distance")


#Anything relevant to per capita crime rate
ggplot(Boston, aes(crim, dis)) + geom_point(aes(color = medv)) + xlab("Crime Rate") + ylab("Distance from Employment Center") + ggtitle("Boston: Crime rate vs Emp Center Distance")
#Distance to empl center seems to be relevant
