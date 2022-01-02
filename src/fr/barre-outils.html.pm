#lang pollen

◊define-meta[lang]{fr}

◊chapter{La barre d'outils}

◊draft{Ce chapitre est encore à l'état de brouillon. Revenez dans quelques jours pour lire une version plus aboutie.}

La barre d'outils est composée de plusieurs groupes.

◊section{Format de l'affichage}

Le réglage du ◊em{Format} définit le ◊em{rapport d'aspect} du panneau de prévisualisation. Il permet de prévisualiser votre présentation pour le format d'écran de votre choix. En pratique, la région affichée sera toujours entièrement visible, même sur un écran de format différent.

Le rapport d'aspect est exprimé sous la forme d'une fraction ◊em{Largeur:Hauteur} et correspond aux deux champs situés après le mot ◊em{Format} dans la barre d'outils. Voici quelques exemples de tailles d'écrans pour les trois formats les plus courants :

◊table{
    ◊th{Rapport} ◊th{Dimensions (pixels)}

    ◊td{4:3}     ◊td{1024×768}

    ◊td{16:10}   ◊td{1920×1200}

    ◊td{16:9}    ◊td{1920×1080}
}

Sozi propose par défaut le format 4:3. Bien que ce format soit considéré comme obsolète pour les écrans d'ordinateur et les téléviseurs, de nombreux vidéoprojecteurs encore en service utilisent le standard XGA (1024×768 pixels).

◊section{Mode d'interaction avec le panneau de prévisualisation}

Les boutons ci-dessous sélectionnent le mode d'utilisation de la souris dans le panneau de prévisualisation. Ils définissent l'effet de l'action ◊em{cliquer-glisser}, éventuellement associée à une touche du clavier, dans le panneau de prévisualisation :

◊table{
    ◊th{Bouton} ◊th{+ Touche} ◊th{Mode}

    ◊td{◊key{◊icon["arrows"]}} ◊td{} ◊td{Translation}

    ◊td{◊key{◊icon["arrows"]}} ◊td{◊key{Alt}} ◊td{Zoom}

    ◊td{◊key{◊icon["arrows"]}} ◊td{◊key{Ctrl}} ◊td{Rotation}

    ◊td{◊key{◊icon["expand"]}} ◊td{} ◊td{Zoom}

    ◊td{◊key{◊icon["rotate-left"]}} ◊td{} ◊td{Rotation}

    ◊td{◊key{◊icon["crop"]}} ◊td{} ◊td{Édition du rectangle de rognage}
}

◊section{Annuler et refaire}

Ces deux boutons permettent de reculer ou d'avancer dans l'historique des modifications :

◊table{
    ◊th{Bouton} ◊th{Raccourci clavier} ◊th{Effet}

    ◊td{◊key{◊icon["reply"]}} ◊td{◊key{Ctrl} + ◊key{Z}} ◊td{Annuler la modification précédente}

    ◊td{◊key{◊icon["share"]}} ◊td{◊key{Ctrl} + ◊key{Y}} ◊td{Refaire la modification annulée}
}

◊section{Opérations sur la fenêtre de l'éditeur}

Ce bouton bascule l'interface en mode plein écran ou en mode fenêtré :

◊table{
    ◊th{Bouton} ◊th{Raccourci clavier} ◊th{Effet}

    ◊td{◊key{◊icon["desktop"]}} ◊td{◊key{F11}} ◊td{Activer ou quitter le mode plein écran}
}

◊section{Opérations sur les fichiers}

Par défaut, Sozi est configuré pour effectuer les opérations sur les fichiers automatiquement :

◊itemize{
    La présentation est enregistrée à chaque fois que la fenêtre d'édition perd le ◊em{focus}, c'est-à-dire à chaque fois que nous basculons vers une autre fenêtre, ou au moment de quitter l'application.

    Le document SVG est rechargé à chaque fois qu'il est modifié. Par exemple, si nous l'avons édité dans Inkscape et réenregistré.
}

Ces comportements sont modifiables dans les ◊link["preferences.html"]{préférences de l'application}. Lorsque ces opérations sont configurées en mode ◊em{manuel}, ou si vous voulez forcer leur exécution, vous pouvez utiliser les deux premiers boutons ci-dessous :

◊table{
    ◊th{Bouton} ◊th{Raccourci clavier} ◊th{Effet}

    ◊td{◊key{◊icon["download"]}} ◊td{◊key{Ctrl} + ◊key{S}} ◊td{Enregistrer la présentation}

    ◊td{◊key{◊icon["refresh"]}} ◊td{◊key{F5}} ◊td{Recharger le document SVG}

    ◊td{◊key{◊icon["file"]}} ◊td{} ◊td{Ouvrir ou fermer ◊link["conversion.html"]{l'outil de conversion}}
}

Le troisième bouton bascule le contenu du ◊em{panneau des propriétés} pour afficher ◊link["conversion.html"]{l'outil de conversion de présentations} vers d'autres formats de documents. Pressez à nouveau ce bouton pour revenir dans le mode d'édition des ◊link["proprietes.html"]{paramètres de la présentation}.

◊section{Préférences et informations sur l'application}

Le premier bouton ci-dessous bascule le contenu du ◊em{panneau des propriétés} pour permettre l'édition des ◊link["preferences.html"]{préférences de Sozi}. Pressez à nouveau ce bouton pour revenir dans le mode d'édition des ◊link["proprietes.html"]{paramètres de la présentation}.

◊table{
    ◊th{Bouton} ◊th{Effet}

    ◊td{◊key{◊icon["sliders"]}} ◊td{Ouvrir ou fermer ◊link["preferences.html"]{le panneau des préférences}}

    ◊td{◊key{◊icon["info"]}} ◊td{Afficher le numéro de version de Sozi}
}

Le second bouton affiche une notification en haut de la fenêtre avec le numéro de la version de Sozi que vous utilisez.
