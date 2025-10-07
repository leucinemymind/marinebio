library(ggplot2)

## location

# this is dummy data
mp_conc_location <- c(50, 180, 300)
mp_conc_fish <- c(30, 40, 67)

concentration_df <- data.frame(
  concentration_loc = mp_conc_location,
  concentration_mp = mp_conc_fish
)

ggplot(concentration_df, aes(x = mp_conc_location, y = mp_conc_fish)) + geom_point()