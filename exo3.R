# Génération de la base de donn&es
set.seed(123)
s
df <- data.frame(id = 1:300)

#Ajout de 15 variables avec 300 observations
for (i in 1:15) {
  df[, paste0("var", i)] <- rnorm(n = 300) 
}
#Ajout de variables categorielles
df$sexe <- sample(c("Homme", "Femme"), 300, replace = TRUE)
df$Prenom <- sample(c("Ahmadou", "Bob", "Charlie", "David", "Eva", "Frank", "Grace", "Hank", "Ivy", "Jack"), 300, replace = TRUE)
df$Nom <- sample(c("Niass", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller", "Wilson", "Moore", "Taylor"), 300, replace = TRUE)

View(df)
print(df)


#Exporter la base df sur Excel
writexl::write_xlsx(df, "Basededonnee.xlsx")

#Calcul de statistiques descriptives
summary(df)

# Création d'un tableau de contingence
contingeance <- table(df$Prenom, df$var2)
View(contingeance)
# Calcul des effectifs marginaux (sommes par lignes et par colonnes)
row_totals <- margin.table(contingeance, 1)
col_totals <- margin.table(contingeance, 2)
grand_total <- sum(contingeance)
# Calcul des effectifs e'
effe <- outer(row_totals, col_totals) / grand_total
print("Effectifs Attendus:")
print(effe)
# Calcul du khi-deux
khi2 <- sum((contingeance - effe)^2 / effe)
print("Statistique du Test du Khi-deux:")
print(khi2)

