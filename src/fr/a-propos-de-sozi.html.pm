#lang pollen

◊define-meta[lang]{fr}

◊chapter{À propos de Sozi}

◊section{Que peut-on faire avec Sozi ?}

Sozi est un logiciel de création de présentations animées. Il est généralement utilisé pour réaliser des supports visuels pour des cours, des conférences, des réunions. Avec Sozi, une présentation n'est pas organisée comme une séquence de diapos, mais plutôt comme une succession de ◊em{points de vues} sur une ◊em{carte} que l'on ◊em{explore}.

◊; TODO Ajouter un exemple de carte

Sozi est assez polyvalent. Certains l'ont déjà utilisé pour d'autres usages, par exemple pour créer des ◊em{infographies} animées, des sites web ou des histoires interactives. Mais avant de vous lancer dans un tel projet, prenez le temps d'explorer les possibilités de Sozi et de connaître ses limites. Voici quelques indications :

◊subsection{Sozi n'est pas un logiciel de dessin}

Ou plus généralement, l'éditeur de présentations Sozi ne propose aucun outil pour créer du contenu. Le point de départ d'une présentation Sozi est un document graphique que vous devez créer avec un autre logiciel, typiquement un logiciel de dessin vectoriel comme ◊link["https://inkscape.org/"]{Inkscape} ou un éditeur de ◊em{cartes mentales} (◊em{mind maps}). Consultez le chapitre ◊link["notions.html"]{Notions de base} pour plus d'explications.

◊subsection{Sozi n'est pas un logiciel d'animation généraliste}

Son interface n'est pas conçue pour gérer facilement l'animation d'un grand nombre d'objets indépendants. Les seuls mouvements autorisés sont des transformations géométriques simples (translations, rotations, zooms) et la gestion du temps ne propose qu'un nombre limité d'options. Selon vos besoins, un logiciel d'animation comme ◊link["https://www.synfig.org/"]{Synfig Studio} pourra être plus adapté.

◊subsection{Sozi n'est pas un éditeur de sites web}

Sozi autorise la création de présentations ◊em{non linéaires}, dans lesquelles vous pouvez insérer des liens pour naviguer entre les vues. C'est donc un moyen très efficace pour créer des pages web animées que l'on pourra héberger en lieu et place d'un site web traditionnel. Il y a quelques années, on aurait utilisé ◊link["https://fr.wikipedia.org/wiki/Adobe_Flash"]{Adobe Flash} pour atteindre un résultat similaire.

Cependant, un tel site a toutes les chances d'être peu accessible aux déficients visuels. Jusqu'à présent, aucun effort n'a été fait pour faciliter le respect des ◊link["https://www.w3.org/WAI/standards-guidelines/wcag/"]{recommandations du W3C pour l'accessibilité} dans les présentations Sozi, et la prise en charge des lecteurs d'écrans n'a pas été étudiée.


◊section{Qui développe Sozi ?}

Je m'appelle Guillaume Savaton. Je travaille comme ingénieur et enseignant-chercheur dans les domaines de l'électronique numérique, des systèmes embarqués et du traitement numérique du signal. J'utilise Sozi régulièrement dans le cadre de mes activités professionnelles mais son développement ne fait pas partie de mes missions. Il s'agit d'un projet personnel que je mène sur mon temps libre.

Sozi n'est donc pas un ◊em{produit} commercial. Il n'est développé ni par une entreprise, ni par une équipe organisée. Il n'existe ni ◊em{feuille de route}, ni ◊em{stratégie} de domination mondiale. Gagner des ◊em{parts de marché} ne fait pas non plus partie de mes préoccupations.

Même si j'en suis le principal auteur, de nombreuses personnes ont contribué à l'amélioration et à la promotion de Sozi, chacune à sa manière : ◊link["https://github.com/sozi-projects/Sozi/issues"]{en signalant des problèmes} et en m'aidant à les résoudre ; en proposant, et parfois en réalisant de nouvelles fonctionnalités ; ◊link["https://hosted.weblate.org/projects/sozi/translations/"]{en traduisant l'interface utilisateur de l'éditeur} et sa documentation dans différentes langues ; en répondant à des questions sur ◊link["https://sozi.baierouge.fr/community/"]{le forum des utilisateurs} ; en publiant des articles et des tutoriels.


◊section{Pourquoi avoir développé Sozi ?}

La réponse courte tient en trois points :

◊itemize{
    Parce que je réalise de nombreuses présentations sur des sujets techniques, illustrées par des schémas compliqués.

    Parce que j'étais frustré par les limites du format ◊em{diaporama} pour afficher et explorer ces schémas.

    Pour relever un défi, apprendre et pratiquer des langages de programmation différents de ceux que j'utilise dans mes activités professionnelles.
}

Et voici une réponse plus détaillée et chronologique, un cheminement en trois étapes :

◊subsection{Une présentation qui serait aussi un document de référence}

Mon métier m'amène à réaliser de nombreuses présentations, aussi bien pour l'enseignement que pour la recherche : cours, conférences scientifiques, réunions d'avancement de projets... Des années 1990 à la fin des années 2000, j'ai ainsi eu l'occasion d'utiliser différents outils, commerciaux ou libres, pour créer des diaporamas : Microsoft PowerPoint, ◊link["https://www.openoffice.org/"]{OpenOffice}/◊link["https://fr.libreoffice.org/"]{LibreOffice} ◊link["https://fr.libreoffice.org/discover/impress/"]{Impress}, ◊link["http://www.ctan.org/tex-archive/macros/latex/contrib/beamer/doc/beameruserguide.pdf"]{Beamer}.

Au cours de cette période, le style de mes présentations a profondément évolué. J'ai commencé par adopter une pratique fréquente dans l'enseignement, qui consiste à projeter un diaporama pendant le cours et à en distribuer une version imprimée aux élèves. Ce document, éventuellement annoté par les élèves, devait contenir assez d'informations pour être utilisable en autonomie après la séance de cours, par exemple pendant des activités pratiques ou des révisions.

◊subsection{Une présentation pour illustrer un discours}

Au fil du temps, j'ai réalisé que mes diaporamas ne constituaient ni de bons supports de présentation, car trop denses, ni de bons ◊em{manuels de référence}, par manque de structure. Pour chacune des matières que j'enseignais, j'ai donc décidé de créer deux sortes de documents : des présentations, où les diapos servaient uniquement à illustrer un discours oral, et des ◊em{manuels} (PDF ou web) structurés comme des livres, auquels les élèves pouvaient se référer pendant les activités pratiques.

C'est là que j'ai commencé à percevoir les limites du format diaporama. Comme j'enseigne des matières techniques, j'ai besoin de présenter des figures parfois complexes, par exemple des diagrammes expliquant le fonctionnement ou l'architecture de systèmes électroniques ou informatiques. Et pour ne pas perdre mon auditoire, je me suis souvent efforcé de présenter ces schémas de manière progressive, en passant alternativement d'une vue d'ensemble à une vue détaillée de chaque partie. On peut le faire dans un diaporama mais cela demande beaucoup de travail.

◊subsection{Une présentation comme une carte à explorer}

En 2009, une société appelée ◊link["https://prezi.com/"]{Prezi} a lancé un nouvel outil de présentation en ligne. Rompant avec le modèle du diaporama, Prezi proposait d'organiser une présentation comme une succession de vues dans un plan infini où l'utilisateur était libre de disposer les éléments graphiques de son choix. J'ai tout de suite vu ce que je pourrais faire avec un tel outil, mais ses conditions d'utilisation ne me convenaient pas. En effet, à l'époque, Prezi proposait une plate-forme fermée dans laquelle l'édition, le stockage, la publication et le visionnage des présentations devaient obligatoirement passer par leurs services en ligne.

La première version de Sozi a été écrite en un week-end. Ce n'était pas un projet sérieux. Il s'agissait juste de relever un défi : montrer qu'il était possible de créer des documents animés sur le même principe que Prezi, mais en utilisant uniquement des formats ouverts et des logiciels libres. Après avoir développé un prototype très rudimentaire, il s'est écoulé presqu'un an avant que je me décide à en faire un véritable outil utilisable au quotidien.


◊section{Pourquoi ce nom "Sozi" ?}

Le nom "Sozi" vient du mot français "Sosie", qui désigne une personne ayant une forte ressemblance avec une autre, au point qu'on peut les confondre. Le choix de ce nom semble suggérer que Sozi est une imitation fidèle de Prezi, mais ce n'est pas le cas.

Certes, Sozi emprunte l'idée de base de Prezi : une présentation se déroule comme une succession de vues dans un plan plutôt que comme une succession de diapos. Mais l'imitation s'arrête là. N'ayant moi-même jamais utilisé Prezi, je ne connais pas ses autres fonctionnalités et je n'ai donc jamais cherché à les reproduire. Aujourd'hui, je n'ai aucune idée précise des points communs et des différences entre les deux outils.

En choisissant ce nom, j'ai également négligé le sens qu'il pouvait prendre dans d'autres langues. Par exemple, en allemand, "Sozi" est un terme familier, voire désobligeant, qui désigne un partisan du socialisme ou de la social-démocratie. Je l'ai compris par hasard en découvrant que le hashtag ◊link["https://twitter.com/hashtag/sozi"]{#Sozi} sur Twitter donnait de très nombreux résultats en allemand, visiblement sans rapport avec mon logiciel. Pour les éventuels lecteurs germanophones de ce livre, je tiens donc à préciser que le choix du nom "Sozi" n'a pas de connotation politique.


◊section{Que signifient les numéros de version de Sozi ?}

Les numéros de versions suivent une logique purement chronologique. Ils se présentent sous la forme "AA.MM.JJ-T" où :

◊itemize{
    "AA" correspond aux chiffres des dizaines et unités de l'année de publication,

    "MM" est le numéro du mois (01 à 12),

    "JJ" est le numéro du jour du mois (01 à 31),

    "T" identifie la révision du code source qui a été utilisée pour construire cette version (techniquement, il s'agit du ◊em{timestamp} du ◊em{commit} correspondant à cette révision, mais si vous ne savez pas de quoi il s'agit, ce n'est pas important).
}

Sozi ne respecte pas les principes de ◊link["https://semver.org/lang/fr/"]{gestion sémantique de version}. Le passage d'un numéro de version à un autre ne reflète pas l'importance des changements qui ont eu lieu entre ces versions.


◊section{Quelles sont les conditions d'utilisation de Sozi ?}

Sozi est un ◊link["https://fr.wikipedia.org/wiki/Logiciel_libre"]{logiciel libre}. Cela signifie que sa licence vous offre les quatre libertés suivantes :

◊enumerate{
    La liberté d'utiliser Sozi sans limite d'usage.

    La liberté d'étudier son fonctionnement.

    La liberté de le redistribuer.

    La liberté de le modifier et de partager vos modifications.
}

La plupart des gens seront surtout intéressés pas la première de ces quatre libertés mais il est important de savoir que les trois autres existent. Elles permettent à toute personne qui a les compétences nécessaires de corriger des problèmes ou d'ajouter de nouvelles fonctionnalités sans me demander la permission. Elles permettent également au projet Sozi de continuer à ◊em{vivre} même si je cesse de m'en occuper.

Le code source de Sozi est disponible ◊link["https://github.com/sozi-projects/Sozi"]{dans un dépôt public chez GitHub}. Il est publié selon les termes de la ◊link["https://www.mozilla.org/en-US/MPL/2.0/"]{Licence Publique Mozilla 2.0}. Sozi intègre également des bibliothèques logicielles et des ressources (comme par exemple les icônes et les fontes) soumises à d'autres licences libres.
