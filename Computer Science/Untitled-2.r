library(ggplot2)

data <- data.frame(
  group = rep(c("A", "B", "C"), each = 20),
  value = c(rnorm(20, 5), rnorm(20, 10), rnorm(20, 15))
)

ggplot(data, aes(x = group, y = value, fill = group)) +
  geom_boxplot() +
  theme_minimal()
