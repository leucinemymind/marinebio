### linear regression for sand crab project ### 

# assigning variables

height <- c(159, 150, 164, 162, 172, 165, 175, 155, 150, 174, 175, 175, 163, 165, 158)
wingspan <- c(155, 155, 170, 162, 170, 162, 166, 154, 146, 171, 180, 158, 162, 163, 154)

# making a plot

plot(wingspan~height, main = 'Height vs Wingspan', ylab = 'height in cm', xlab = 'wingspan in cm')

# linear model

heightwing.lm <- lm(wingspan~height)
abline(heightwing.lm, col='red')

# r^2 - coeff of determination - how well the model fits the data. r^2 = 1 means a
# perfect correlation

# y=mx+b

# p = 0.05; 95% confident, stat. significant if <0.05

# required elements r^2, p-value, coefficients