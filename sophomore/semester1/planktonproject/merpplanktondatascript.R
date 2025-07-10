install.packages("tidyverse")
library(tidyverse)

# sample numbers
sample1 <- filter(MERP_plankton_data_Sheet1, site=='1')
sample2 <- filter(MERP_plankton_data_Sheet1, site=='2')

# mean/sd of samples 1-2
mean(sample1$plankton_ml_ocean)
mean(sample2$plankton_ml_ocean)
sd(sample1$plankton_ml_ocean)
sd(sample2$plankton_ml_ocean)

#boxplot
boxplot(plankton_ml_ocean~site, data = MERP_plankton_data_Sheet1,
        main = 'Estimated Plankton Density By Location',
        xlab = 'Location', ylab = 'Estimated plankton per ml')

# t-test
t.test(sample1$plankton_ml_ocean, sample2$plankton_ml_ocean)