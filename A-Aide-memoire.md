[← Chapitre précédent](07-Import-et-librairies.md) · [Sommaire](Readme.md)

# Aide-mémoire

La syntaxe des trois langages du cours, concept par concept.

## Les images du cours

| Concept | L'image | Ce qu'elle fait comprendre |
|---|---|---|
| Variable | une boîte étiquetée | le nom est l'étiquette, la valeur le contenu ; une seule valeur à la fois |
| Constante | une boîte scellée, une étiquette cousue sur un sac | on lit sans modifier ; le lien est fixé, pas forcément le contenu |
| Type | boîte à forme ou boîte universelle | typage statique ou dynamique |
| Chaîne de caractères | des perles sur un fil | une liste de caractères, numérotés à partir de 0 |
| Liste | une colonne de tableur | des valeurs rangées par position, l'indice |
| Tableau associatif | deux colonnes de tableur, `RECHERCHEV` | des valeurs retrouvées par clé |
| Références partagées | deux étiquettes sur le même sac | affecter ne copie pas |
| Objet | un compte en banque | un état et un comportement |
| Égalité, identité | deux exemplaires du même livre | même contenu, ou même objet |
| JSON | un relevé de compte | l'état en texte, sans le comportement |
| Classe, instance | la classe des mammifères, Félix | la description, et l'individu |
| Encapsulation | le guichet de la banque | l'état ne change qu'au travers de méthodes qui vérifient |
| Héritage | chat, chien, humain sont des mammifères | « est un » : hériter, redéfinir, ajouter |
| Polymorphisme | le recensement | même question, chacun répond à sa façon |
| Import | emprunter *Le Petit Prince* à la bibliothèque | réutiliser un passage écrit ailleurs, en citant sa source |

## Variables, constantes, types

| Concept | Python | JavaScript | Java |
|---|---|---|---|
| Variable | `age = 30` | `let age = 30;` | `int age = 30;` ou `var age = 30;` |
| Constante | `TAUX: Final = 0.2` (convention) | `const TAUX = 0.2;` | `final double TAUX = 0.2;` |
| Entier, décimal | `int`, `float` | `number` (`bigint`) | `int`, `long`, `double` |
| Booléen | `True`, `False` | `true`, `false` | `true`, `false` |
| Texte | `"Ada"` (`str`) | `"Ada"` (`string`) | `"Ada"` (`String`) |
| Caractère | chaîne de longueur 1 | chaîne de longueur 1 | `'A'` (`char`) |
| Longueur d'un texte | `len(s)` | `s.length` | `s.length()` |
| Caractère en position `i` | `s[i]` | `s[i]` | `s.charAt(i)` |
| Morceau de `i` à `j` (exclu) | `s[i:j]` | `s.slice(i, j)` | `s.substring(i, j)` |
| Absence de valeur | `None` | `null`, `undefined` | `null` |
| Connaître le type | `type(x)` | `typeof x` | écrit dans le code ; `x instanceof T` |
| Texte → nombre | `int("42")`, `float("1.5")` | `Number("42")` | `Integer.parseInt("42")` |
| Nombre → texte | `str(42)` | `String(42)` | `String.valueOf(42)` |
| Division entière | `7 // 2` | `Math.trunc(7 / 2)` | `7 / 2` (entre deux `int`) |
| Comparer des valeurs | `==` | `===` | `==` (primitifs), `.equals()` (objets) |

## Tableaux et listes

| Opération | Python | JavaScript | Java |
|---|---|---|---|
| Créer | `l = [1, 2, 3]` | `const l = [1, 2, 3];` | `List<Integer> l = new ArrayList<>(List.of(1, 2, 3));` |
| Lire | `l[0]`, `l[-1]` | `l[0]`, `l.at(-1)` | `l.get(0)`, `l.getLast()` |
| Taille | `len(l)` | `l.length` | `l.size()` |
| Ajouter | `l.append(4)` | `l.push(4)` | `l.add(4)` |
| Retirer le dernier | `l.pop()` | `l.pop()` | `l.removeLast()` |
| Contient ? | `4 in l` | `l.includes(4)` | `l.contains(4)` |
| Parcourir | `for x in l:` | `for (const x of l)` | `for (int x : l)` |
| Filtrer | `[x for x in l if x > 1]` | `l.filter((x) => x > 1)` | `l.stream().filter(x -> x > 1).toList()` |
| Copier | `l.copy()` | `[...l]` | `new ArrayList<>(l)` |

## Tableaux associatifs

| Opération | Python | JavaScript | Java |
|---|---|---|---|
| Créer | `d = {"Ada": 36}` | `const d = new Map([["Ada", 36]]);` | `Map<String, Integer> d = new HashMap<>(Map.of("Ada", 36));` |
| Lire | `d["Ada"]` | `d.get("Ada")` | `d.get("Ada")` |
| Ajouter, modifier | `d["Alan"] = 41` | `d.set("Alan", 41)` | `d.put("Alan", 41)` |
| Retirer | `del d["Alan"]` | `d.delete("Alan")` | `d.remove("Alan")` |
| La clé existe ? | `"Alan" in d` | `d.has("Alan")` | `d.containsKey("Alan")` |
| Valeur par défaut | `d.get("Zoé", 0)` | `d.get("Zoé") ?? 0` | `d.getOrDefault("Zoé", 0)` |
| Parcourir | `for k, v in d.items():` | `for (const [k, v] of d)` | `for (var e : d.entrySet())` |
| Clé absente | `KeyError` | `undefined` | `null` |

## Objets et classes

| Concept | Python | JavaScript | Java |
|---|---|---|---|
| Déclarer une classe | `class Compte:` | `class Compte { }` | `class Compte { }` |
| Constructeur | `def __init__(self, x):` | `constructor(x) { }` | `Compte(int x) { }` |
| L'instance courante | `self` | `this` | `this` |
| Créer une instance | `Compte(1)` | `new Compte(1)` | `new Compte(1)` |
| Attribut privé | `_solde` (convention) | `#solde` | `private double solde;` |
| Membre de classe | attribut défini dans la classe | `static` | `static` |
| Classe de données | `@dataclass` | littéral `{ x: 1 }` | `record Point(int x, int y) {}` |
| Même objet ? | `a is b` | `a === b` | `a == b` |
| Même contenu ? | `a == b` | à écrire soi-même | `a.equals(b)` |
| Objet → JSON | `json.dumps(o)` | `JSON.stringify(o)` | librairie (Jackson…) |

## Héritage

| Concept | Python | JavaScript | Java |
|---|---|---|---|
| Hériter | `class Chat(Mammifere):` | `class Chat extends Mammifere` | `class Chat extends Mammifere` |
| Constructeur parent | `super().__init__(nom)` | `super(nom);` | `super(nom);` |
| Méthode parente | `super().communiquer()` | `super.communiquer()` | `super.communiquer()` |
| Redéfinition | (décorateur `@override` facultatif) | — | `@Override` |
| Est une instance de ? | `isinstance(x, Mammifere)` | `x instanceof Mammifere` | `x instanceof Mammifere` |
| Abstraction | `ABC`, `@abstractmethod` | — | `abstract class`, `interface` |

## Imports et librairies

| Concept | Python | JavaScript | Java |
|---|---|---|---|
| Importer | `import math`, `from math import sqrt` | `import { x } from "./m.mjs";` | `import java.time.LocalDate;` |
| Exporter | tout est importable | `export function f() { }` | `public` |
| Registre | PyPI | npm | Maven Central |
| Installer | `pip install nom` | `npm install nom` | dépendance dans `pom.xml` |
| Fichier de dépendances | `pyproject.toml` | `package.json` | `pom.xml`, `build.gradle` |

## Références

- Python : [docs.python.org/fr/3](https://docs.python.org/fr/3/)
- JavaScript : [developer.mozilla.org/fr/docs/Web/JavaScript](https://developer.mozilla.org/fr/docs/Web/JavaScript)
- Node.js : [nodejs.org/docs](https://nodejs.org/docs/latest/api/)
- Java : [dev.java/learn](https://dev.java/learn/)

---

[← Chapitre précédent](07-Import-et-librairies.md) · [Sommaire](Readme.md)
