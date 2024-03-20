source("cours6.R")
library(readxl)
table_conversion_phase_2 <- read_excel(
  "C:/lenovo/pc/Downloads/Table de conversion phase 2.xlsx")

table_conversion_phase_2$colonne_8 <- NULL
table_conversion_phase_2$colonne_9 <- NULL
View(table_conversion_phase_2)

colnames(table_conversion_phase_2)[1:6] <- c("id_cereales","Nom_produit",
                                             "Unite_consommation","Nom_unite",
                                             "Taille_consommation","Nom_taille")

fusion <- merge(cereales, table_conversion_phase_2, 
                by = c("id_cereales", "Unite_consommation", "Taille_consommation"), all.x = TRUE)
