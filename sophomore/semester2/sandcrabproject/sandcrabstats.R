#### sand crab stats ###

library(tidyverse)

### datasets

crissy16 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=ftpc1h2016.txt.gz&dir=data/historical/stdmet/", skip = 1)
crissy18 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=ftpc1h2018.txt.gz&dir=data/historical/stdmet/", skip = 1)
crissy19 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=ftpc1h2019.txt.gz&dir=data/historical/stdmet/", skip = 1)
crissy21 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=ftpc1h2021.txt.gz&dir=data/historical/stdmet/", skip = 1)
crissy22 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=ftpc1h2022.txt.gz&dir=data/historical/stdmet/", skip = 1)
crissy23 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=ftpc1h2023.txt.gz&dir=data/historical/stdmet/", skip = 1)
tideav16 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=myxc1o2016.txt.gz&dir=data/historical/ocean/", skip = 1)
tideav17 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=myxc1o2017.txt.gz&dir=data/historical/ocean/", skip = 1)
tideav18 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=myxc1o2018.txt.gz&dir=data/historical/ocean/", skip = 1)
tideav19 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=myxc1o2019.txt.gz&dir=data/historical/ocean/", skip = 1)
asilomar17 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=46240h2017.txt.gz&dir=data/historical/stdmet/", skip = 1)
asilomar18 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=46240h2018.txt.gz&dir=data/historical/stdmet/", skip = 1)
asilomar19 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=46240h2019.txt.gz&dir=data/historical/stdmet/", skip = 1)
asilomar22 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=46240h2022.txt.gz&dir=data/historical/stdmet/", skip = 1)
asilomar23 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=46240h2023.txt.gz&dir=data/historical/stdmet/", skip = 1)
salmon17 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=bdxc1o2017.txt.gz&dir=data/historical/ocean/", skip = 1)
salmon18 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=bdxc1o2018.txt.gz&dir=data/historical/ocean/", skip = 1)
salmon22 <- read_table("https://www.ndbc.noaa.gov/view_text_file.php?filename=bdxc1o2022.txt.gz&dir=data/historical/ocean/", skip = 1)

### getting rid of placeholders

crissy16$degC_1[crissy16$degC_1 == 999] <- NA
crissy18$degC_1[crissy18$degC_1 == 999] <- NA
crissy19$degC_1[crissy19$degC_1 == 999] <- NA
crissy21$degC_1[crissy21$degC_1 == 999] <- NA
crissy22$degC_1[crissy22$degC_1 == 999] <- NA
crissy23$degC_1[crissy23$degC_1 == 999] <- NA
tideav16$degC[tideav16$degC == 99] <- NA
tideav17$degC[tideav17$degC == 99] <- NA
tideav18$degC[tideav18$degC == 99] <- NA
tideav19$degC[tideav19$degC == 99] <- NA
asilomar17$degC_1[asilomar17$degC_1 == 999] <- NA
asilomar18$degC_1[asilomar18$degC_1 == 999] <- NA
asilomar19$degC_1[asilomar19$degC_1 == 999] <- NA
asilomar22$degC_1[asilomar22$degC_1 == 999] <- NA
asilomar23$degC_1[asilomar23$degC_1 == 999] <- NA
salmon17$degC[salmon17$degC == 99] <- NA
salmon18$degC[salmon18$degC == 99] <- NA
salmon22$degC[salmon22$degC == 99] <- NA
  
### means and standard deviations

# crissy beach 2016

summary(crissy16$degC_1) # median = 14.40
sd(crissy16$degC_1, na.rm = TRUE) # sd = 1.56

# 2018

summary(crissy18$degC_1) # median = 13.70
sd(crissy18$degC_1, na.rm = TRUE) # sd = 1.71

# 2019

summary(crissy19$degC_1) # median = 13.80
sd(crissy19$degC_1, na.rm = TRUE) # sd = 1.70

# 2021

summary(crissy21$degC_1) # median = 14.60
sd(crissy21$degC_1, na.rm = TRUE) # sd = 2.77

# 2022

summary(crissy22$degC_1) # median = 15.10
sd(crissy22$degC_1, na.rm = TRUE) # sd = 1.99

# 2023

summary(crissy23$degC_1) # median = 15.40
sd(crissy23$degC_1, na.rm = TRUE) # sd = 2.14

# del monte beach 2016

summary(tideav16$degC) # median = 14.50
sd(tideav16$degC, na.rm = TRUE) # sd = 1.05

# 2017

summary(tideav17$degC) # median = 14.10
sd(tideav17$degC, na.rm = TRUE) # sd = 1.62

# 2018

summary(tideav18$degC) # median = 15.10
sd(tideav18$degC, na.rm = TRUE) # sd = 1.20

# 2019

summary(tideav19$degC) # median = 14.80
sd(tideav19$degC, na.rm = TRUE) # sd = 1.27

# asilomar beach 2017

summary(asilomar17$degC_1) # median = 13.60
sd(asilomar17$degC_1, na.rm = TRUE) # sd = 1.49

# 2018

summary(asilomar18$degC_1) # median = 14.10
sd(asilomar18$degC_1, na.rm = TRUE) # sd = 1.36

# 2019

summary(asilomar19$degC_1) # median = 14.10
sd(asilomar19$degC_1, na.rm = TRUE) # sd = 1.09

# 2022

summary(asilomar22$degC_1) # median = 12.80
sd(asilomar22$degC_1, na.rm = TRUE) # sd = 1.58

# 2023

summary(asilomar23$degC_1) # median = 13.90
sd(asilomar23$degC_1, na.rm = TRUE) # sd = 1.76

# salmon creek 2017

summary(salmon17$degC) # median = 12.40
sd(salmon17$degC, na.rm = TRUE) # 1.56

# 2018

summary(salmon18$degC) # median = 12.30
sd(salmon18$degC, na.rm = TRUE) # sd = 1.55

# 2022

summary(salmon22$degC) # median = 11.50
sd(salmon22$degC, na.rm = TRUE) # sd = 1.99