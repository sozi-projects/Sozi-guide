#lang pollen

◊define-meta[lang]{fr}

◊chapter{Première présentation : mettons en valeur nos Grandes Idées}

◊warning{Ce chapitre est encore à l'état de brouillon. Revenez dans quelques jours pour lire une version plus aboutie.}

La première présentation que nous allons construire ensemble s'intitule "Grandes idées". Pour vous mettre en appétit, je vous montre tout de suite le résultat que vous allez obtenir si vous suivez mes instructions.
Cliquez n'importe où dans l'image ci-dessous et laissez la présentation se dérouler.

◊sozi["../assets/fr/grandes-idees/grandes-idees.sozi.html"]

◊section{Découvrons le document de base}

Cette présentation s'appuie sur un document SVG que j'ai créé pour vous avec le logiciel ◊link["https://inkscape.org/fr/"]{Inkscape}. Suivez le lien ci-dessous pour le télécharger et enregistrez-le à l'emplacement de votre choix. Je vous recommande de l'enregistrer dans un nouveau dossier ◊code{sozi-grandes-idees} qui regroupera tous les fichiers de cette présentation.

◊itemize-icons{
    ◊link["../assets/fr/grandes-idees/grandes-idees.svg" #:download #t]{◊item-icon["download"]◊code{grandes-idees.svg}}
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-dossier-initial.png" #:alt "Le document de base grandes-idees.svg dans son dossier sozi-grandes-idees"]

Une fois le téléchargement terminé, vous pouvez ouvrir le document ◊code{grandes-idees.svg} avec Inkscape pour examiner son contenu et le modifier selon vos goûts. Dans la suite de ce chapitre, nous aurons l'occasion de faire des modifications afin d'observer les interactions entre Inkscape et Sozi.

◊image["../assets/fr/grandes-idees-images/grandes-idees-inkscape.png" #:alt "Le document de base grandes-idees.svg ouvert dans Inkscape"]

◊section{Prenons nos repères dans l'interface de Sozi}

Ouvrez à présent le document ◊code{grandes-idees.svg} avec Sozi. La figure ci-dessous met en évidence les principales régions de l'interface utilisateur.

◊itemize{
    Le ◊em{panneau de prévisualisation} affiche ce que voit la caméra. Lors de la première ouverture d'un document SVG, elle affiche le document entier.

    Le ◊em{panneau des propriétés} permet d'éditer les paramètres de la présentation, des vues sélectionnées et des transitions entre vues.

    La ◊em{barre d'outils} permet de sélectionner le mode d'édition de la vue courante et d'effectuer différentes opérations : annuler/refaire la dernière action, enregistrer la présentation, etc. Survolez chaque bouton avec la souris pour afficher une bulle d'aide.

    La ◊em{chronologie de la présentation} affiche la séquence des vues. Elle permet d'ajouter ou de supprimer des vues, de les sélectionner, de les réordonner.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-sozi-interface.svg" #:alt "Le document de base grandes-idees.svg ouvert dans Sozi"]

◊; TODO Lien vers le manuel de référence.

◊section{Mettons de l'ordre dans nos "grandes idées"}

◊subsection{Délimitons le cadre}

Par défaut, le format de la zone de prévisualisation est 4:3. C'est un format passe-partout qui convient à de nombreux usages. Mais pour que cette première présentation soit à la mesure de nos ◊em{grandes idées}, je vous propose d'élargir notre champ de vision avec un format de 16:10.
Dans la barre d'outils, éditez le champ ◊em{Format} en saisissant "16" à gauche et "10" à droite.

◊block-quote{Au moment de concevoir une nouvelle présentation, nous ne savons pas toujours à l'avance sur quel format d'écran elle sera affichée. Le champ ◊em{Format} permet de prévisualiser votre présentation pour un format donné, en garantissant que la région affichée sera toujours entièrement visible quel que soit l'écran utilisé.}

◊subsection{Suscitons l'intérêt en commençant par un "Fait amusant"}

Créez une nouvelle vue en pressant le bouton ◊key{+} en bas à gauche de la fenêtre. Une nouvelle colonne apparaît dans la chronologie avec le titre "New frame".
Dans le panneau des propriétés, éditez le champ ◊em{Titre} et remplacez son contenu par "Fait amusant".
Dans le panneau de prévisualisation, utilisez la souris pour positionner la caméra sur la région représentée sur la capture d'écran ci-dessous. Les déplacements que vous pouvez effectuer dans cette étape sont :

◊itemize{
    Translation : pressez le bouton gauche de la souris dans la zone de prévisualisation ; déplacez la souris en maintenant le bouton pressé ; relâchez le bouton lorsque la position souhaitée est atteinte.

    Zoom avant ou arrière : faites tourner la molette de la souris, vers l'avant ou vers l'arrière, au-dessus de la zone de prévisualisation.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-01-fait-amusant.png" #:alt "La première vue de la présentation : Fait amusant"]

◊block-quote{Dans la suite de ce chapitre, j'utiliserai le terme "cliquer-glisser" pour désigner la séquence :

◊enumerate{
    Presser le bouton gauche de la souris.

    Déplacer la souris en maintenant le bouton gauche pressé.

    Relâcher le bouton gauche de la souris.
}}

◊subsection{Ouvrons le débat avec une "Déclaration controversée"}

Créez une nouvelle vue en pressant le bouton ◊key{+}. Dans le panneau des propriétés, donnez-lui le titre "Déclaration controversée".
Dans le panneau de prévisualisation, positionnez la caméra pour reproduire la capture d'écran ci-dessous. Je vous propose de procéder dans cet ordre :

◊enumerate{
    Déplacez la caméra : ◊em{cliquez-glissez} vers la gauche jusqu'à ce que le texte "Déclaration controversée" soit entièrement visible. Tout en déplaçant la souris, vous pouvez presser la touche ◊key{Ctrl} du clavier pour que le déplacement soit parfaitement horizontal.

    Faites tourner la caméra de 180 degrés : pressez et maintenez la touche ◊key{⇧ Maj} du clavier tout en faisant tourner la molette de la souris jusqu'à obtenir l'orientation souhaitée.

    Ajustez l'échelle en actionnant la molette de la souris seule.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-02-declaration-controversee.png" #:alt "La deuxième vue de la présentation : Déclaration controversée"]

Prévisualisez la transition entre les deux premières vues : cliquez successivement dans la première et la seconde colonne de la chronologie de la présentation, ou pressez les touches ◊key{←} et ◊key{→} du clavier pour passer d'une vue à l'autre.

◊block-quote{La disposition des objets graphiques, et les mouvements de caméra qui en découlent, peuvent servir différents propos. Dans certains cas, on cherchera à obtenir des effets visuels ◊em{percutants}, au risque de donner le vertige aux spectateurs ! On pourra également mettre cette disposition au service du discours.

Dans cet exemple, je joue sur la transformation du "i" (pour "information") en un point d'exclamation. Le renversement de l'image fait écho au mot "controversée".

En pratique, je n'utilise presque jamais de rotations dans mes présentations. Il y a deux raisons à cela : d'abord parce que cela rend l'édition du document de base plus laborieuse, mais surtout parce que cela présente peu d'intérêt pour le type de contenu que je dois présenter.}

◊subsection{Recentrons le discours sur un "Point important"}

L'interface de Sozi offre d'autres modes d'utilisation de la souris pour positionner la caméra. L'action ◊em{cliquer-glisser} dans le panneau de prévisualisation aura un effet différent selon le mode dans lequel on se trouve. Le choix du mode s'effectue à l'aide de trois boutons de la barre d'outils, éventuellement associés à certaines touches du clavier :

◊itemize{
    Mode ◊em{translation} (bouton ◊key{◊icon["arrows"]} activé) : ◊em{cliquer-glisser} pour déplacer la caméra.

    Mode ◊em{zoom} (◊key{◊icon["expand"]}, ou ◊key{◊icon["arrows"]}+◊key{Alt}) : ◊em{cliquer-glisser} en s'éloignant du centre pour agrandir, en se rapprochant du centre pour rétrécir.

    Mode ◊em{rotation} (◊key{◊icon["rotate-left"]}, ou ◊key{◊icon["arrows"]}+◊key{⇧ Maj}) : ◊em{cliquer-glisser} pour tourner autour du centre de la vue courante.
}

Créez une nouvelle vue et donnez-lui le titre "Point important".
Entraînez-vous à passer d'un mode à l'autre et positionnez la caméra de manière à reproduire la capture d'écran ci-dessous.

◊image["../assets/fr/grandes-idees-images/grandes-idees-03-point-important.png" #:alt "La troisième vue de la présentation : Point important"]

◊subsection{Prenons du recul et considérons la "Vue d'ensemble"}

Parfois, nous avons du mal à nous repérer pour positionner la vue suivante. Il est utile de réinitialiser la caméra pour qu'elle affiche l'intégralité du document source.
Créez une nouvelle vue et donnez-lui le titre "Vue d'ensemble".
Dans le panneau des propriétés, sous le titre ◊em{Calque}, pressez le bouton ◊key{◊icon["eraser"]}. Utilisez ensuite les actions que vous connaissez pour reproduire la capture d'écran ci-dessous.

◊image["../assets/fr/grandes-idees-images/grandes-idees-04-vue-densemble.png" #:alt "La quatrième vue de la présentation : Vue d'ensemble"]

◊subsection{Méditons cette "Pensée profonde" pour faire éclore une "Idée lumineuse"}

Créez deux nouvelles vues intitulées "Pensée profonde" et "Idée lumineuse". Pour chacune de ces deux vues, positionnez la caméra en respectant les captures d'écran ci-dessous.

◊image["../assets/fr/grandes-idees-images/grandes-idees-05-pensee-profonde.png" #:alt "La cinquième vue de la présentation : Pensée profonde"]

◊image["../assets/fr/grandes-idees-images/grandes-idees-06-idee-lumineuse.png" #:alt "La sixième vue de la présentation : Idée lumineuse"]

◊block-quote{La vue "Idée lumineuse" exploite le zoom avant afin de focaliser l'attention sur un élément précis de la vue précédente.
Dans la vue intitulée "Vue d'ensemble", au contraire, nous avons utilisé le zoom arrière pour faire la synthèse de plusieurs vues précédentes.}

◊section{Enregistrons la présentation et contemplons le résultat}

◊warning{Cette section est en cours de rédaction}

Par défaut, Sozi enregistre la présentation à chaque fois que la fenêtre d'édition perd le ◊em{focus}, c'est-à-dire à chaque fois que nous basculons vers une autre fenêtre, ou au moment de quitter l'application. Vous pouvez modifier ce comportement dans les préférences de Sozi. ◊; TODO Lien vers le manuel de référence.

En cas de doute, vous pouvez presser le bouton ◊key{◊icon["download"]} de la barre d'outils. S'il est grisé, c'est que la présentation a déjà été enregistrée.

◊section{Acquérons la maîtrise du temps et de l'espace}

◊warning{Cette section est en cours de rédaction}

À cette étape, on gère la durée des transitions, les fonctions de temps et le clipping.

◊section{Reprenons le contrôle}

◊warning{Cette section est en cours de rédaction}

À cette étape, on définit des transitions automatiques et on désactive les actions à la souris.
