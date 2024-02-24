
library(plotly)
library(magrittr)

f <- function(x, y) {
  x*x + cos(x+y) + (y*y + (1/(1 + x*x)))^0.5
}
# Délimitation des intervalles
x <- seq(-2, 2, 0.1)  # Séquence de -10 à 10 avec un pas de 0.1
y <- seq(-2, 2, 0.1)  # Séquence de -10 à 10 avec un pas de 0.1
z <- outer(x, y, f)

# Création du graphique
plot_ly(x = x, y = y, z = z, type = "surface") %>%
  layout(title = "Courbe de la fonction")

D(expression(x*x + cos(x+y) + (y*y + (1/(1 + x*x)))^0.5), name = "x")


g <- function(u, v) {
  u + u - sin(u + v) - 0.5 * ((u + u)/(1 + u * u)^2 * (y * y + (1/(1 + u * u)))^-0.5)
}
u <- seq(-2, 2, 0.1)  # Séquence de -10 à 10 avec un pas de 0.1
v <- seq(-2, 2, 0.1)  # Séquence de -10 à 10 avec un pas de 0.1
ds <- outer(u, v, g)
plot_ly(x = u, y = v, z = ds, type = "surface") %>%
  layout(title = "Courbe de la dérivée premiere suivant x")


D(expression(x*x + cos(x+y) + (y*y + (1/(1 + x*x)))^0.5), name = "y")
h <- function(r, s) {
  0.5 * ((s + s) * (s * s + (1/(1 + r * r)))^-0.5) - sin(r + s)
}
r <- seq(-2, 2, 0.1)  # Séquence de -10 à 10 avec un pas de 0.1
s <- seq(-2, 2, 0.1)  # Séquence de -10 à 10 avec un pas de 0.1
dp <- outer(r, s, h)
plot_ly(x = r, y = s, z = dp, type = "surface") %>%
  layout(title = "Courbe de la dérivée premiere suivant y")


