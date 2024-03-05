datah_frame<-data.frame(
  varnum = c(1,2,3,4,5,6),
  caracte = c("Ahmadou","PAN","Malick","Ameth","Tamsir","Jeanne"),
  juss = c("Niass", "Niang", "Sene","faye","Ndoye","de la Fleche"),
  stringsAsFactors = FALSE,
  logiq = c(TRUE,FALSE,FALSE,TRUE,FALSE,TRUE),
  varr = c(10,20,30,40,50,60),
  sexe = factor(c("Homme", "Femme", "Homme", "Femme","Homme", "Femme"), levels = c("Homme", "Femme"))
)
print(datah_frame)
View(datah_frame)


bonne_matrice <- as.matrix(datah_frame)
colnames(datah_frame)<-c("Identifiant", "Prenoms", "Nom","LOGIQUE","Age","Sexe")
rownames(bonne_matrice)<-c("eleve1","eleve2","eleve3","eleve4")
print(bonne_matrice)


moyenneage <- mean(datah_frame$varr)
moyenneidentifiant <- mean(datah_frame$varnum)
print("La moyenne d'age est ", moyenneage)
print("La moyenne des identifiants est ", moyenneidentifiant)

maxagee <- max(datah_frame$varr)
maxidentifiant <- max(datah_frame$varnum)
cat("L'âge maximum est : ", maxagee, "\n")
cat("L'identifiant maximum est : ", maxidentifiant, "\n")


qvarr <- quantile(datah_frame$varr)
cat("Quartile de la variable age ", qvarr)

summary(datah_frame$varr)

#Autre méthode 
summary(datah_frame[c("varr", "varnum")])


# Calcul des fréquences de la variable sexe
frequences <- table(datah_frame$sexe)

# Calcul des proportions de la variable sexe
proportions <- prop.table(frequences)

# Construction du camembert et de l'histogramme
pie(proportions, labels = names(proportions), main = "Répartition des sexes", col = c("blue", "pink"))
barplot(frequences, names.arg = names(frequences), main = "Répartition des sexes", col = c("blue", "pink"))

#Resolution du probleme d'optimisation


