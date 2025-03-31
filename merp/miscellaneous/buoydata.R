library(tidyverse)
library(lubridate)
library(plotly)
library(data.table)
knitr::opts_chunk$set(echo = TRUE)

#data from the buoy
Buoy46404_2023 <- read_table('https://www.ndbc.noaa.gov/view_text_file.php?filename=46404t2023.txt.gz&dir=data/historical/dart/', skip = 1)

#merging the year, month, day, minute variables
new.date.time <- paste(Buoy46404_2023$`#yr`, Buoy46404_2023$mo, Buoy46404_2023$dy, Buoy46404_2023$hr, Buoy46404_2023$mn, sep = '-')

#adding new variable
Buoy46404_2023 <- cbind(Buoy46404_2023, new.date.time)

#formatting date
Buoy46404_2023$new.date.time <- as.POSIXct(Buoy46404_2023$new.date.time, format = '%Y-%m-%d-%H-%M')

#changing to a table
Buoy46404_2023.tbl <- as_tibble(Buoy46404_2023)

#removing missing data
Buoy46404_2023.tbl$m[Buoy46404_2023.tbl$m==9999] <- NA

#plotting change in swell heights 
p <- ggplot(data=Buoy46404_2023.tbl) + 
  geom_point(mapping = aes(x=new.date.time, y = m)) + 
  labs(title='Buoy 46404- swell height by time', x = 'time')
ggplotly(p)