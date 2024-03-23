# Imporation de la base Table de coversion

source("cours7.R")
# Fusion des base cerales et table de convertion

merge <- merge(cereales, Table_de_conversion, 
               by = c("cereales__id", "Unite_cons", "Taille_cons"), all.x = TRUE)

# Traitement de la base de données

library(data.table)
cereales3 <- data.table(merge)
setnames(cereales3,"poids","poids_cons")

cereales3[,poids_cons:=as.numeric(poids_cons)] # Conversion de la variable poids_cons
cereales3[,qtty_cons_kg:= poids_cons*Qtty_cons/1000] ## Quantité consommée en kg
cereales3[,summary(qtty_cons_kg)] # Quelques paramètres de tendances centrales

cereales3[,qtty_achat_kg:= poids_cons*Qtty_achat/1000] ## Quantité achetée en kg
cereales3[,summary(qtty_achat_kg)] # Quelques paramètres de tendances centrales

cereales3[,prix_unit:= Value_achat/qtty_achat_kg] # Prix unitaire
cereales3[,summary(prix_unit)] # Quelques paramètres de tendances centrales

cereales3[,depen_cons:= prix_unit*qtty_cons_kg] ## Dépenses de consommations 
cereales3[,summary(depen_cons)] # Quelques paramètres de tendances centrales

# Normalisation des valeurs aberrantes

# Calcul de l'intervalle interquartile
Q1 <- quantile(cereales3$qtty_cons_kg, 0.25)
Q3 <- quantile(cereales3$qtty_cons_kg, 0.75)
IQR <- Q3 - Q1

# Détermination limites pour les valeurs aberrantes
upper_bound <- Q3 + 1.5 * IQR
lower_bound <- Q1 - 1.5 * IQR

#valeurs aberrantes
cereales3 <- cereales3[cereales3$qtty_cons_kg >= lower_bound 
                       & cereales3$qtty_cons_kg <= upper_bound, ]

