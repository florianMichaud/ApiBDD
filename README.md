# Users Management API Tests

## 📌 Description

Projet de tests automatisés pour l'API :

https://fakestoreapi.com/users

Ce projet a pour objectif de tester la gestion d’utilisateurs via des fichiers JSON en utilisant une approche BDD avec Cucumber.

Les tests permettent de :

A)Get a user using ID
- Vérifier que l’API est accessible
- Récupérer un utilisateur à partir de son ID
- Vérifier que la réponse contient un identifiant ('firstName')
- Vérifier que la réponse contient un identifiant ('lastname')
- Vérifier que la réponse contient un identifiant ('email')
- Vérifier que la réponse contient un identifiant ('userName')

B)Create a user using a JSON file
- Vérifier que l’API est accessible
- Créer un utilisateur à partir d’un fichier JSON
- Vérifier que la réponse HTTP est valide
- Vérifier que la réponse contient un identifiant (`id`)

---

## 🛠 Technologies utilisées

- Java 17+
- Maven
- Spring RestTemplate
- Cucumber (BDD)
- JUnit 5
- Jackson (lecture JSON)

---


## 🧪 Scénario BDD

Feature: User management

  Scenario Outline: Get a user using ID
    Given I check the API status 200
    Then I get the user by id <id>
    
    Examples:
        #| id |
        #| 1  |
        #| 2  |

  Scenario Outline: Create a user using
    Given I check the API status 200
    Then I create the user from "<fileName>"
    
    Examples:
        | fileName          |
        | user1        |
        | user2        |

---

## 📦 Données de test

Les utilisateurs sont définis dans :

- src/test/java/resources/data/user1.json  
- src/test/java/resources/data/user2.json  

Les fichiers JSON sont lus dynamiquement avec `Files.readAllBytes()` puis envoyés en POST via RestTemplate.

---


## ▶️ Exécution des tests

Pour lancer tous les tests :

mvn clean test

---

## 🚀 Améliorations possibles

- Génération dynamique des emails pour éviter les doublons  
- Centralisation des appels API dans un client dédié  
- Ajout de scénarios négatifs (400, 500, données invalides)  
- Génération de rapports Cucumber HTML  
- Intégration CI/CD (GitHub Actions)

---

## 👤 Auteur

Florian M
