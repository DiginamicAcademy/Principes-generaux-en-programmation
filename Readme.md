<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/Logo-diginamic-color-blk.png">
    <img src="assets/Logo-diginamic-color.svg" alt="Diginamic Formation" width="358">
  </picture>
</p>

# Concepts généraux en programmation

Les langages changent, les concepts restent. Variables, types, listes, objets, classes, héritage, imports : on les retrouve dans presque tous les langages, sous des syntaxes différentes. Ce cours les présente un par un : d'abord **l'idée, sans code**, à l'aide d'une image du quotidien ; ensuite le code, dans trois langages côte à côte, pour apprendre à reconnaître le concept derrière la syntaxe.

## 🎯 Objectifs pédagogiques

À la fin de ce cours, vous saurez :

1. Déclarer et utiliser des variables et des constantes, et les nommer correctement.
2. Reconnaître les types de base, manipuler un texte comme une suite de caractères, distinguer typage statique et dynamique, convertir une valeur.
3. Manipuler des tableaux, des listes et des tableaux associatifs : accès, ajout, retrait, parcours, copie.
4. Expliquer ce qu'est un objet, et distinguer l'égalité de l'identité.
5. Écrire une classe avec constructeur, attributs et méthodes, en protégeant son état.
6. Utiliser l'héritage et le polymorphisme, et savoir quand leur préférer la composition.
7. Découper un programme en modules et utiliser des librairies, standard ou tierces.

## ❔ Pourquoi ce cours ?

Apprendre un premier langage, c'est apprendre à la fois des concepts et une syntaxe, sans toujours savoir distinguer l'un de l'autre. Apprendre le deuxième est beaucoup plus rapide quand on sait que `let`, `final` et une majuscule en Python répondent tous à la même question. Ce cours sert de socle commun aux cours de développement, quel que soit le langage qu'ils utilisent.

C'est pourquoi chaque chapitre commence **sans une ligne de code**. Une variable y est d'abord une boîte étiquetée, une liste une colonne de tableur, une classe la classe des mammifères, un import l'emprunt d'un livre en bibliothèque. Des schémas accompagnent chaque idée. Le code ne vient qu'ensuite, quand on sait déjà ce qu'il exprime.

## Prérequis

- Savoir ouvrir un terminal et y lancer une commande.
- Avoir installé au moins l'un des trois langages ci-dessous, ou disposer d'un environnement en ligne.
- Aucune connaissance préalable en programmation n'est exigée, mais avoir déjà écrit quelques lignes de code aide.

## Les trois langages des exemples

Chaque concept est illustré en **Python**, **JavaScript** et **Java**. Ils couvrent les grandes familles : typage dynamique ou statique, langage interprété ou compilé, objets par classes ou par prototypes. Inutile de maîtriser les trois : suivez celui qui vous concerne, et jetez un œil aux autres pour voir ce qui change et ce qui reste.

| Langage | Version de référence | Lancer un fichier |
|---|---|---|
| Python | 3.14 | `python exemple.py` |
| JavaScript (Node.js) | Node.js 24 LTS | `node exemple.mjs` |
| Java | Java 25 LTS | `java Exemple.java` |

Les exemples Java utilisent les **fichiers source compacts** de Java 25 : un fichier qui contient simplement `void main() { … }` se lance directement, sans classe à déclarer autour ni compilation préalable.

Tous les exemples du cours ont été exécutés avec ces versions le 7 octobre 2026, et produisent les résultats indiqués en commentaire.

## Le parcours

Chaque étape est un fichier. On les suit **dans l'ordre** : chacune s'appuie sur la base laissée par la précédente.

| # | Étape | L'image | Ce qu'on y fait |
|---|---|---|---|
| [01](01-Variables-et-constantes.md) | Variables et constantes | des boîtes étiquetées, un sac | affectation, déclaration, constantes, conventions de nommage |
| [02](02-Types.md) | Types | des perles sur un fil, des boîtes à forme | types de base, chaînes de caractères, typage statique ou dynamique, fort ou faible, conversions, pièges |
| [03](03-Tableaux-et-listes.md) | Tableaux et listes | une feuille de tableur | indices, ajout et retrait, parcours, références partagées, tableaux associatifs |
| [04](04-Objets.md) | Objets | un compte en banque | état et comportement, notation pointée, égalité et identité, JSON |
| [05](05-Classes.md) | Classes | la classe des mammifères | classe et instance, constructeur, méthodes, encapsulation, membres de classe |
| [06](06-Heritage.md) | Héritage | chat, chien, humain | « est un », redéfinition, `super`, polymorphisme, abstraction, composition |
| [07](07-Import-et-librairies.md) | Import et librairies | *Le Petit Prince*, emprunté à la bibliothèque | modules, bibliothèque standard, gestionnaires de paquets, choisir une librairie |
| [A](A-Aide-memoire.md) | Aide-mémoire | | les images du cours, et la syntaxe des trois langages, concept par concept |
