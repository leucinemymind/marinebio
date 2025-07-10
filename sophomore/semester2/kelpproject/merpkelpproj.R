library(readr)
library(tidyverse)
merpkelpproject <- read_csv("/Users/ZhangYu/Dropbox/merp/merpkelpproject.csv")


#plot (average)

plot(merpkelpproject$date, merpkelpproject$average, type = 'b', pch = 19,
     col = 'blue', main = 'Kelp canopy area by year', xlab = 'Year', ylab = 'Kelp Canopy (sq.m.)')

# reading lots of data
arena08 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2008.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena08$degC_1[arena08$degC_1 == 999] <- NA
arena09 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2009.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena09$degC_1[arena09$degC_1 == 999] <- NA
arena10 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2010.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena10$degC_1[arena10$degC_1 == 999] <- NA
arena11 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2011.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena11$degC_1[arena11$degC_1 == 999] <-  NA
arena12 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2012.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena12$degC_1[arena12$degC_1 == 999] <- NA
arena13 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2013.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena13$degC_1[arena13$degC_1 == 999] <- NA
arena14 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2014.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena14$degC_1[arena14$degC_1 == 999] <- NA
arena15 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2015.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena15$degC_1[arena15$degC_1 == 999] <- NA
arena16 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2016.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena16$degC_1[arena16$degC_1 == 999] <- NA
arena17 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2017.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena17$degC_1[arena17$degC_1 == 999] <- NA
arena18 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2018.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena18$degC_1[arena18$degC_1 == 999] <- NA
arena19 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2019.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena19$degC_1[arena19$degC_1 == 999] <- NA
arena20 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2020.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena20$degC_1[arena20$degC_1 == 999] <- NA
arena21 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2021.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena21$degC_1[arena21$degC_1 == 999] <- NA
arena22 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2022.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena22$degC_1[arena22$degC_1 == 999] <- NA
arena23 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2023.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena23$degC_1[arena23$degC_1 == 999] <- NA
arena24 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46014h2024.txt.gz&dir=data/historical/stdmet/', skip = 1)
arena24$degC_1[arena24$degC_1 == 999] <- NA

# functions!
mdntemp <- function(a) {
median(a$degC_1, na.rm = TRUE)}

meantemp <- function(a) {
  mean(a$degC_1, na.rm = TRUE)}

maxtemp <- function(a){
max(a$degC_1, na.rm = TRUE)}








# random irrelevant playing with numbers

above_15_arena08 <- arena08 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena09 <- arena09 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena10 <- arena10 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena11 <- arena11 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena12 <- arena12 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena13 <- arena13 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena14 <- arena14 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena15 <- arena15 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena16 <- arena16 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena17 <- arena17 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena18 <- arena18 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena19 <- arena19 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena20 <- arena20 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena21 <- arena21 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena22 <- arena22 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena23 <- arena23 %>%
  filter(degC_1 > 15, degC_1 != 999)

above_15_arena24 <- arena24 %>%
  filter(degC_1 > 15, degC_1 != 999)

num_times_above_15 <- c(nrow(above_15_arena08), nrow(above_15_arena09), 
                        nrow(above_15_arena10), 
                        nrow(above_15_arena11), nrow(above_15_arena12), 
                        nrow(above_15_arena13), 
                        nrow(above_15_arena14), nrow(above_15_arena15),
                        nrow(above_15_arena16), 
                        nrow(above_15_arena18), nrow(above_15_arena19), 
                        nrow(above_15_arena20),
                        nrow(above_15_arena21), nrow(above_15_arena22), 
                        nrow(above_15_arena23),
                        nrow(above_15_arena24))

years <- c(2008, 2009, 2010, 2011, 2012,
           2013, 2014, 2015, 2016, 2018, 2019,
           2020, 2021, 2022, 2023, 2024)

plot(years, num_times_above_15, xlab = 'years', ylab = 'number of columns above 15 degC')
abline(lm(num_times_above_15~years), col = 'red')
