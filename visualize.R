# visualize.R
# Une visualisation avancée avec ggplot2

library(ggplot2)

set.seed(42)
df <- data.frame(
  x = rnorm(100),
  y = rnorm(100),
  category = sample(c("A", "B", "C"), 100, replace = TRUE)
)

# Création d'un graphique à bulles avec régression
ggplot(df, aes(x = x, y = y, color = category)) +
  geom_point(aes(size = abs(x + y)), alpha = 0.7) +
  geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "dashed") +
  labs(
    title = "Visualisation de données aléatoires",
    subtitle = "Graphique à bulles avec régression linéaire",
    x = "Valeur X",
    y = "Valeur Y",
    color = "Catégorie",
    size = "Taille des bulles"
  ) +
  theme_minimal(
