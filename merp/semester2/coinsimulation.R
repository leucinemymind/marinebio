### coin simulation on pool transect ###

# packages

library(ggplot2)

# locations

PennyLocation <- c(6, 6, 6, 6, 6, 6, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 18, 18)
NickelLocation <- c(4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 8, 8, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 14, 14, 14, 14, 16, 18, 18, 18, 18, 18, 20, 20, 20, 20, 26, 26, 26, 26, 26, 26)
DimeLocation <- c(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6)
QuarterLocation <- c(22, 22, 22, 22, 22, 22, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24)

# dataframes

Pennies.df <- data.frame(A=PennyLocation,B="Pennies")
Nickels.df <- data.frame(A=NickelLocation,B="Nickels")
Dimes.df <- data.frame(A=DimeLocation,B="Dimes")
Quarters.df <- data.frame(A=QuarterLocation,B="Quarters")

# combining data frames

AllCoinsLoc.df <- rbind(Pennies.df,Nickels.df,Dimes.df,Quarters.df)

# plot

ggplot(AllCoinsLoc.df,aes(x=B,y=A)) +
  geom_boxplot() +
  geom_jitter(position=position_jitter(0.2)) +
  labs(title="Plot of coin position by transect distance",
       x="Coin Type", y="Transect Position from HighMark (m)")

# ANOVA test

aovCoinLoc <- aov(A ~ B, data=AllCoinsLoc.df)
print(model.tables(aovCoinLoc,"means"),digits=3)
summary(aovCoinLoc)

# tukey test

tuk<-TukeyHSD(aovCoinLoc)
tuk