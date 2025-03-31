### sand crab linear regression ### 

library(tidyverse)
library(ggplot2)

Sand_crab_project_spreadsheet_Sheet1 <- read_csv("Dropbox/MERP things/Sand crab project spreadsheet - Sheet1.csv")

### shortening names

ratio <- Sand_crab_project_spreadsheet_Sheet1$gte_ltratio
mdn <- Sand_crab_project_spreadsheet_Sheet1$temp_mdn
sd <- Sand_crab_project_spreadsheet_Sheet1$temp_sd

# ratio vs median

plot(ratio~mdn, 
     main = 'Ratio of large to small sand crabs~SST median', xlab = 'SST median in degrees C', ylab = 'ratio (≥20 mm : <20 mm)')

ratiomdn.lm <- lm(ratio~mdn)
abline(ratiomdn.lm, col='red')

# ratio vs standard deviation

plot(ratio~sd,
     main = 'Ratio~SST standard deviation', xlab = 'SST standard deviation in degrees C', ylab = 'ratio (≥20 mm : <20 mm)')

ratiosd.lm <- lm(ratio~sd)
abline(ratiosd.lm, col = 'red') # p-value = 0.3449, r^2 = 0.0559

### ggplots

#ratio vs median

ggplot(
  data = Sand_crab_project_spreadsheet_Sheet1,
  mapping = aes(x = temp_mdn, y = gte_ltratio)
) +
  geom_point(mapping = aes(color = beach)) +
  geom_smooth(method = "lm") + 
  labs(title="Ratio of large to small sand crabs~SST median",
       x ="SST median in degrees C", y = "ratio (≥20 mm : <20 mm)")

#ratio vs sd

ggplot(
  data = Sand_crab_project_spreadsheet_Sheet1,
  mapping = aes(x = temp_sd, y = gte_ltratio)
) +
  geom_point(mapping = aes(color = beach)) +
  geom_smooth(method = "lm") +
  labs(title="Ratio of large to small sand crabs~SST standard deviation",
  x ="SST standard deviation in degrees C", y = "ratio (≥20 mm : <20 mm)")
