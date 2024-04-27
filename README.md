****Résumé des exposés par Ahmadou Niass
Traitement des valeurs manquantes et des valeurs aberrantes en utilisant R
Les valeurs aberrantes et manquantes peuvent compromettre l'analyse statistique, nécessitant des approches spécifiques pour les détecter et les traiter. Les méthodes de traitement varient en fonction du contexte et des objectifs de l'étude afin de maintenir la qualité et la précision des résultats.

Traitement des valeurs manquantes
Trois types de valeurs manquantes sont identifiés :
• MCAR (Donnée Manquante Complètement Aléatoire)
• MAR (Donnée Manquante Aléatoire Conditionnelle)
• MNAR (Donnée Manquante Non Aléatoire At Random)

Les méthodes suivantes sont utilisées pour traiter ces valeurs manquantes :
• Suppression des observations
• Imputation par la moyenne
• Imputation par la médiane
• Imputation par régression
• Imputation par HOT DECK
• Imputation par KNN
• Imputation par LOCF

Traitement des valeurs aberrantes
Trois groupes de méthodes sont utilisés pour détecter les valeurs aberrantes :
• Détection basée sur le domaine des valeurs
• Détection graphique
• Autres méthodes statistiques de détection

Les méthodes suivantes sont appliquées pour traiter les valeurs aberrantes :
• Suppression des valeurs aberrantes
• Transformation des valeurs aberrantes :
• Méthodes d'imputation
• Transformation logarithmique
• Méthode de winsorisation

Limitations à considérer
• Risque de biais
• Perte d'information
• Difficulté d'interprétation
• Dépendance du choix de la méthode
• Complexité accrue

Statistiques descriptives et visualisation des variables catégorielles avec ggplot2()
La visualisation des données est essentielle en analyse, et ggplot2 de R simplifie ce processus. Ce package, faisant partie du tidyverse, offre une grammaire graphique permettant de créer des graphiques variés et intuitifs. Développé par Hadley Wickham en 2006 et amélioré en 2007, ggplot2 est un outil incontournable dans le domaine de l'analyse de données.

Les composantes principales de ggplot()
1. Composante esthétique (aes)
• Ajout d'éléments de base (titre)
• Mappage des couleurs
• Mappage des formes
• Mappage des tailles
• Mappage des opacités
• Mappage des remplissages

2. Composante thème
• Utilisation des thèmes prédéfinis
• Personnalisation des éléments de thème
• Utilisation des fonctions pour modifier les éléments

3. Composante geom
ANOVA et tests non paramétriques
L'ANOVA compare les moyennes de plusieurs groupes, tandis que les tests non paramétriques sont utilisés lorsque les données ne suivent pas une distribution normale. R offre des outils précis et efficaces pour effectuer ces analyses dans divers contextes.

Différents types d'ANOVA
ANOVA à 1 facteur
ANOVA à 2 facteurs
Tests non paramétriques
Ces tests ne requièrent pas de distribution spécifique des données, utilisant des statistiques basées sur l'ordre ou des tableaux de contingence. Ils sont utiles lorsque les hypothèses des tests paramétriques ne sont pas satisfaites.

Types de tests non paramétriques :
• Test de rang signé de Wilcoxon
• Test du khi-carré pour la qualité d’ajustement
• Test U de Mann-Whitney (Wilcoxon/Mann-Whitney)
• Test de Kruskal-Wallis






