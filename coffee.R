library("dplyr")

# Mia's coffee orders
# From working directory

mias_orders <- read.csv(
  "miacoffee.csv",
  sep=","
)

# parts of first coffee
first_coffee <- filter(mias_orders, location == "tokyo")
day_1 <- first_coffee$day
month_1 <- first_coffee$month
year_1 <- first_coffee$orders
order_1 <- first_coffee$order
location_1 <- first_coffee$location

orders <- unique(mias_orders$order)

most_ordered <- mias_orders %>%   
  #find most commonly ordered drink and how many times it was ordered
  count(order) %>%
  top_n(1)

top_cof <- most_ordered[1]
top_times <- most_ordered[2]
