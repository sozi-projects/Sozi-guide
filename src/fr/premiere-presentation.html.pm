#lang pollen

◊define-meta[lang]{fr}

◊chapter{Ma première présentation}

◊warning{Ce chapitre est encore à l'état de brouillon. Revenez dans quelques jours pour lire une version plus aboutie.}

La première présentation que nous allons construire ensemble s'intitule "Grandes idées". Pour vous mettre en appétit, je vous montre tout de suite le résultat que vous allez obtenir si vous suivez mes instructions.
Cliquez n'importe où dans l'image ci-dessous et laissez la présentation se dérouler.

◊sozi["../assets/fr/grandes-idees/grandes-idees.sozi.html"]

◊section{Télécharger et ouvrir le document de base}

Cette présentation s'appuie sur un document SVG que j'ai créé pour vous avec le logiciel ◊link["https://inkscape.org/fr/"]{Inkscape}. Suivez le lien ci-dessous pour le télécharger et enregistrez-le à l'emplacement de votre choix. Je vous recommande de l'enregistrer dans un nouveau dossier ◊code{sozi-grandes-idees} qui regroupera tous les fichiers de cette présentation.

◊itemize-icons{
    ◊link["../assets/fr/grandes-idees/grandes-idees.svg" #:download #t]{◊item-icon["download"]◊code{grandes-idees.svg}}
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-dossier-initial.png" #:alt "Le document de base grandes-idees.svg dans son dossier sozi-grandes-idees"]

Une fois le téléchargement terminé, vous pouvez ouvrir le document ◊code{grandes-idees.svg} avec Inkscape pour examiner son contenu et le modifier selon vos goûts. Dans la suite de ce chapitre, nous aurons l'occasion de faire des modifications afin d'observer les interactions entre Inkscape et Sozi.

◊image["../assets/fr/grandes-idees-images/grandes-idees-inkscape.png" #:alt "Le document de base grandes-idees.svg ouvert dans Inkscape"]

◊section{Se repérer dans l'interface de Sozi}

Ouvrez à présent le document ◊code{grandes-idees.svg} avec Sozi. La figure ci-dessous met en évidence les principales régions de l'interface utilisateur.

◊itemize{
    Le ◊em{panneau de prévisualisation} affiche la vue courante de la présentation. Lors de la première ouverture d'un document SVG, elle affiche le document entier.

    Le ◊em{panneau des propriétés} permet d'éditer les paramètres de la présentation, des vues sélectionnées et des transitions entre vues.

    La ◊em{barre d'outils} permet de sélectionner le mode d'édition de la vue courante et d'effectuer différentes opérations : annuler/refaire la dernière action, enregistrer la présentation, etc. Survolez chaque bouton avec la souris pour afficher une bulle d'aide.

    La ◊em{chronologie de la présentation} affiche la séquence des vues. Elle permet d'ajouter ou de supprimer des vues, de les sélectionner, de les réordonner.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-sozi-interface.svg" #:alt "Le document de base grandes-idees.svg ouvert dans Sozi"]

◊section{Organiser la présentation}

◊subsection{Choisir le format de l'écran}

Par défaut, le format de la zone de prévisualisation est 4:3. Pour cette présentation, je vous propose de travailler avec un format de 16:10, plus "cinématographique".
Dans la barre d'outils, éditez le champ ◊em{Format} en saisissant "16" à gauche et "10" à droite.

◊warning{Au moment de concevoir une nouvelle présentation, nous ne savons pas toujours à l'avance sur quel format d'écran elle sera affichée. Le champ ◊em{Format} permet de prévisualiser votre présentation pour un format donné, en garantissant que la région affichée sera toujours entièrement visible quel que soit l'écran utilisé.}

◊subsection{Première vue : "Fait amusant"}

Créez une nouvelle vue en pressant le bouton ◊key{+} en bas à gauche de la fenêtre. Une nouvelle colonne apparaît dans la chronologie avec le titre "New frame".
Dans le panneau des propriétés, éditez le champ ◊em{Titre} et remplacez son contenu par "Fait amusant".
Dans le panneau de prévisualisation, utilisez la souris pour positionner la caméra sur la région représentée sur la capture d'écran ci-dessous. Les actions que vous pouvez effectuer sont :

◊itemize{
    Déplacer la caméra : presser le bouton gauche de la souris dans la zone de prévisualisation ; déplacer la souris en maintenant le bouton pressé ; relâcher le bouton lorsque la position souhaitée est atteinte.

    Zoom avant ou arrière : faire tourner la molette de la souris, vers l'avant ou vers l'arrière, au-dessus de la zone de prévisualisation.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-fait-amusant.png" #:alt "La première vue de la présentation : Fait amusant"]

◊warning{Dans la suite de ce chapitre, j'utiliserai le terme "cliquer-glisser" pour désigner la séquence :

◊enumerate{
    Presser le bouton gauche de la souris.

    Déplacer la souris en maintenant le bouton gauche pressé.

    Relâcher le bouton gauche de la souris.
}}

◊subsection{Deuxième vue : "Déclaration controversée"}

Créez une nouvelle vue en pressant le bouton ◊key{+}. Dans le panneau des propriétés, donnez-lui le titre "Déclaration controversée".
Dans le panneau de prévisualisation, positionnez la caméra pour reproduire la capture d'écran ci-dessous. Je vous propose de procéder dans cet ordre :

◊enumerate{
    Déplacez la caméra : ◊em{cliquez-glissez} vers la gauche jusqu'à ce que le texte "Déclaration controversée" soit entièrement visible. Tout en déplaçant la souris, vous pouvez presser la touche ◊key{Ctrl} du clavier pour que le déplacement soit parfaitement horizontal.

    Faites tourner la caméra de 180 degrés : pressez et maintenez la touche ◊key{⇧ Maj} du clavier tout en faisant tourner la molette de la souris jusqu'à obtenir l'orientation souhaitée.

    Ajustez l'échelle en actionnant la molette de la souris seule.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-declaration-controversee.png" #:alt "La deuxième vue de la présentation : Déclaration controversée"]

◊subsection{Troisième vue : "Point important"}

L'interface de Sozi offre d'autres modes d'utilisation de la souris pour positionner la caméra. L'action ◊em{cliquer-glisser} dans le panneau de prévisualisation aura un effet différent selon le mode dans lequel on se trouve. Le choix du mode s'effectue à l'aide de trois boutons de la barre d'outils, éventuellement associés à certaines touches du clavier :

◊itemize{
    Mode ◊em{translation} (bouton ◊key{◊icon["arrows"]} activé) : ◊em{cliquer-glisser} pour déplacer la caméra.

    Mode ◊em{zoom} (◊key{◊icon["expand"]}, ou ◊key{◊icon["arrows"]}+◊key{Alt}) : ◊em{cliquer-glisser} en s'éloignant du centre pour agrandir, en se rapprochant du centre pour rétrécir.

    Mode ◊em{rotation} (◊key{◊icon["rotate-left"]}, ou ◊key{◊icon["arrows"]}+◊key{⇧ Maj}) : ◊em{cliquer-glisser} pour tourner autour du centre de la vue courante.
}

Créez une nouvelle vue et donnez-lui le titre "Point important". Positionnez la caméra de manière à reproduire la capture d'écran ci-dessous.

◊image["../assets/fr/grandes-idees-images/grandes-idees-point-important.png" #:alt "La troisième vue de la présentation : Point important"]


◊subsection{Quatrième vue : "Vue d'ensemble"}

Créez une nouvelle vue et donnez-lui le titre "Vue d'ensemble".

◊subsection{Cinquième vue : "Pensée profonde"}

Créez une nouvelle vue et donnez-lui le titre "Pensée profonde".

◊subsection{Sixième vue : "Idée lumineuse"}

Créez une dernière vue et donnez-lui le titre "Idée lumineuse".
