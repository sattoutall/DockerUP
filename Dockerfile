# Utilisez une image Java 17 comme image de base
FROM openjdk:17-oracle
# Crée un volume temporaire dans le conteneur,
VOLUME /tmp
#Cette ligne copie le fichier JAR généré de votre application Spring Boot
#vers le répertoire de travail du conteneur
COPY target/*.jar app.jar
# Définit la commande par défaut à exécuter quand le conteneur démarre.
ENTRYPOINT ["java", "-jar", "app.jar"]
