### coin simulation on pool transect ###

# packages

library(ggplot2)

# locations

PennyLocation <- c(rep(6, 6), rep(8, 14), rep(10, 5), rep(12, 6), rep(14, 14), rep(18, 2))
NickelLocation <- c(rep(4, 23), rep(8, 8), rep(10, 15), rep(12, 4), rep(14, 4), rep(16, 1), rep(18, 5), rep(20, 4), rep(26, 6))
DimeLocation <- c(rep(2, 20), rep(4, 14), rep(6, 7))
QuarterLocation <- c(rep(22, 6), rep(24, 14))

# dataframes

Pennies.df <- data.frame(loc=PennyLocation,cointype="Pennies")
Nickels.df <- data.frame(loc=NickelLocation,cointype="Nickels")
Dimes.df <- data.frame(loc=DimeLocation,cointype="Dimes")
Quarters.df <- data.frame(loc=QuarterLocation,cointype="Quarters")

# combining data frames

AllCoinsLoc.df <- rbind(Pennies.df,Nickels.df,Dimes.df,Quarters.df)

# plot

ggplot(AllCoinsLoc.df,aes(x=cointype,y=loc)) +
  
  geom_boxplot() +
  geom_jitter(position=position_jitter(0.2)) +
  labs(title="Plot of coin position by transect distance",
       x="Coin Type", y="Transect Position from HighMark (m)")

# ANOVA test

aovCoinLoc <- aov(loc~cointype, data=AllCoinsLoc.df)
print(model.tables(aovCoinLoc,"means"),digits=3)
summary(aovCoinLoc)

# tukey test

TukeyHSD(aovCoinLoc)