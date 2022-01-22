#lang pollen

◊define-meta[lang]{fr}

◊chapter{Première présentation : mettons en valeur nos Grandes Idées}

◊draft{Ce chapitre est encore à l'état de brouillon. Revenez dans quelques jours pour lire une version plus aboutie.}

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
    Le ◊link["previsualisation.html"]{panneau de prévisualisation} affiche ce que voit la caméra. Lors de la première ouverture d'un document SVG, elle affiche le document entier.

    Le ◊link["proprietes.html"]{panneau des propriétés} permet d'éditer les paramètres de la présentation, des vues sélectionnées et des transitions entre vues.

    La ◊link["barre-outils.html"]{barre d'outils} permet de sélectionner le mode d'édition de la vue courante et d'effectuer différentes opérations : annuler/refaire la dernière action, enregistrer la présentation, etc. Survolez chaque bouton avec la souris pour afficher une bulle d'aide.

    La ◊link["chronologie.html"]{chronologie de la présentation} affiche la séquence des vues. Elle permet d'ajouter ou de supprimer des vues, de les sélectionner, de les réordonner.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-sozi-interface.svg" #:alt "Le document de base grandes-idees.svg ouvert dans Sozi"]

◊block-quote{Le contenu de ces régions est expliqué en détail dans la partie ◊link["editeur.html"]{Interface de l'éditeur de présentations} de ce livre. La lecture de cette partie n'est pas nécessaire pour comprendre la suite.}

◊section{Mettons de l'ordre dans nos "grandes idées"}

◊subsection{Délimitons le cadre}

Par défaut, le format de la zone de prévisualisation est 4:3. C'est un format passe-partout qui convient à de nombreux usages. Mais pour que cette première présentation soit à la mesure de nos ◊em{grandes idées}, je vous propose d'élargir notre champ de vision avec un format de 16:10.
Dans la barre d'outils, éditez les champs situés après le mot ◊em{Format} en saisissant "16" à gauche et "10" à droite.

◊block-quote{Au moment de concevoir une nouvelle présentation, nous ne savons pas toujours à l'avance sur quel format d'écran elle sera affichée. Le réglage du ◊em{Format} permet de prévisualiser votre présentation pour un format donné, en garantissant que la région affichée sera toujours entièrement visible quel que soit l'écran utilisé.}

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

    Mode ◊em{rotation} (◊key{◊icon["rotate-left"]}, ou ◊key{◊icon["arrows"]} + ◊key{⇧ Maj}) : ◊em{cliquer-glisser} pour tourner autour du centre de la vue courante.
}

Créez une nouvelle vue et donnez-lui le titre "Point important".
Entraînez-vous à passer d'un mode à l'autre et positionnez la caméra de manière à reproduire la capture d'écran ci-dessous.

◊image["../assets/fr/grandes-idees-images/grandes-idees-03-point-important.png" #:alt "La troisième vue de la présentation : Point important"]

◊subsection{Prenons du recul et considérons la "Vue d'ensemble"}

Parfois, nous avons du mal à nous repérer pour positionner la vue suivante. Il est utile de réinitialiser la caméra pour qu'elle affiche l'intégralité du document source.
Créez une nouvelle vue et donnez-lui le titre "Vue d'ensemble".
Dans la section ◊em{Calque} du panneau des propriétés, pressez le bouton ◊key{◊icon["eraser"]}. Utilisez ensuite les actions que vous connaissez pour reproduire la capture d'écran ci-dessous.

◊image["../assets/fr/grandes-idees-images/grandes-idees-04-vue-densemble.png" #:alt "La quatrième vue de la présentation : Vue d'ensemble"]

◊subsection{Méditons cette "Pensée profonde" pour faire éclore une "Idée lumineuse"}

Créez deux nouvelles vues intitulées "Pensée profonde" et "Idée lumineuse". Pour chacune de ces deux vues, positionnez la caméra en respectant les captures d'écran ci-dessous.

◊image["../assets/fr/grandes-idees-images/grandes-idees-05-pensee-profonde.png" #:alt "La cinquième vue de la présentation : Pensée profonde"]

◊image["../assets/fr/grandes-idees-images/grandes-idees-06-idee-lumineuse.png" #:alt "La sixième vue de la présentation : Idée lumineuse"]

◊block-quote{La vue "Idée lumineuse" exploite le zoom avant afin de focaliser l'attention sur un élément précis de la vue précédente.
Dans la vue intitulée "Vue d'ensemble", au contraire, nous avons utilisé le zoom arrière pour faire la synthèse de plusieurs vues précédentes.}

◊section{Enregistrons la présentation et contemplons le résultat}

Par défaut, Sozi enregistre la présentation automatiquement à chaque fois que la fenêtre d'édition perd le ◊em{focus}, c'est-à-dire à chaque fois que nous basculons vers une autre fenêtre, ou au moment de quitter l'application. Ce comportement est modifiable dans les ◊link["preferences.html"]{préférences de Sozi}.

En cas de doute, nous pouvons forcer l'enregistrement en pressant le bouton ◊key{◊icon["download"]} de la barre d'outils. S'il est grisé, c'est que la présentation a déjà été enregistrée.

Notre dossier de travail contient à présent quatre documents :

◊itemize{
    ◊code{grandes-idees.svg} est le document graphique de base.

    ◊code{grandes-idees.sozi.json} contient les données de la présentation.

    ◊code{grandes-idees.sozi.html} contient la présentation complète affichable dans un navigateur web. Il rassemble une copie du document SVG de base, les données de la présentation, le programme de visionnage.

    ◊code{grandes-idees-presenter.sozi.html} contient la ◊link["console-presentateur.html"]{console du présentateur}. Son utilisation est facultative et ne sera pas abordée pour le moment.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-dossier-final.png" #:alt "Le contenu final du dossier sozi-grandes-idees"]

◊warning{Les fichiers ◊code{.svg} et ◊code{.json} sont les fichiers ◊em{sources} de la présentation. Si l'un de ces deux fichiers est perdu ou altéré, Sozi ne pourra pas restaurer votre présentation.}

Les fichiers ◊code{.html} sont produits par Sozi à partir des deux précédents. Dans l'exemple que nous venons de construire, le résultat est entièrement contenu dans le fichier ◊code{grandes-idees.sozi.html} qui peut être utilisé de différentes manières : on peut l'ouvrir dans un navigateur web pour visionner la présentation ; on peut le partager avec d'autres personnes qui le visionneront chacune de son côté ; on peut l'héberger comme n'importe quelle page web.

Ouvrez le document ◊code{grandes-idees.sozi.html} dans votre navigateur web préféré. Faites avancer la présentation en cliquant dans la fenêtre ou en pressant la touche ◊key{Espace} (pour une description détaillée des actions possibles, consultez le chapitre ◊link["visionnage-direct.html"]{Affichage direct d’une présentation}).

◊image["../assets/fr/grandes-idees-images/grandes-idees-chromium.png" #:alt "La présentation ouverte dans le navigateur Chromium"]

◊block-quote{Souvenez-vous que nous avons choisi d'afficher les vues avec un format de 16:10 dans Sozi. Que se passe-t-il si, au moment du visionnage, la fenêtre du navigateur a un format différent ?

Redimensionnez la fenêtre et comparez son contenu avec la vue affichée dans Sozi. Vous devez observer que la fenêtre du navigateur affiche toujours l'intégralité de la vue courante, en élargissant le champ de vision verticalement ou horizontalement, mais sans jamais la tronquer.

Comme dans la capture d'écran ci-dessus, cela peut faire apparaître des éléments que nous ne souhaitions pas afficher. Nous allons maintenant apprendre comment les cacher.}

◊section{Acquérons la maîtrise de l'espace et du temps}

Revenez dans Sozi en gardant ouverte la fenêtre du navigateur web. Au cours des étapes suivantes, nous ferons régulièrement des allers-retours entre les deux logiciels.

◊subsection{Ajustons le champ de vision}

La fonction ◊em{Rogner} permet de limiter le champ de la caméra à une région rectangulaire de notre choix. Par défaut, cette région correspond à la totalité du panneau de prévisualisation de Sozi mais il est possible de la modifier.

Dans cette présentation, nous allons simplement activer le rognage pour que la région affichée dans le navigateur soit exactement celle affichée dans Sozi :

◊enumerate{
    Dans la chronologie de la présentation, cliquez sur la case ◊em{Par défaut}. Cette action sélectionne toutes les vues.

    Dans la section ◊em{Calque} du panneau des propriétés, pressez le bouton ◊key{◊icon["crop"]}. Le rognage est maintenant activé sur toutes les vues sélectionnées.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-rogner.png" #:alt "Activer le rognage sur toutes les vues"]

Revenez dans la fenêtre du navigateur et rafraîchissez la page. Le champ de la caméra respecte désormais le format de 16:10 que nous avons réglé dans Sozi, même si la fenêtre a un format différent :

◊image["../assets/fr/grandes-idees-images/grandes-idees-rogner-chromium.png" #:alt "Effet du rognage après ouverture dans Chromium"]

◊block-quote{Il existe deux boutons ◊key{◊icon["crop"]} dans l'interface de Sozi et cela peut être une source de confusion :

◊itemize{
    Le bouton que vous venez d'utiliser, dans le panneau des propriétés, sert à activer ou à désactiver le rognage sur les vues sélectionnées.

    Le bouton situé dans la barre d'outils permet de passer en mode ◊em{Édition de la région à rogner}. Dans ce mode, vous pouvez utiliser la souris dans la fenêtre de prévisualisation pour redimensionner le rectangle de rognage.
}}

◊subsection{Automatisons les transitions}

Dans la présentation affichée en haut de cette page, seul le passage de la première à la deuxième vue nécessite une action de l'utilisateur. À partir de la deuxième vue, les transitions se font automatiquement toutes les trois secondes.

Pour obtenir ce résultat, nous devons régler un ◊em{délai} sur les vues 2 à 6 de la présentation :

◊enumerate{
    Dans la chronologie de la présentation, cliquez sur la colonne 2 pour sélectionner la vue "Déclaration controversée".

    Maintenez la touche ◊key{⇧ Maj} pressée et cliquez sur la colonne 6 pour étendre la sélection jusqu'à la vue "Idée lumineuse".

    Dans le panneau des propriétés, pressez le bouton ◊key{◊icon["clock-o"]} pour activer le passage automatique à la vue suivante après un délai.

    Saisissez la valeur "3" dans le champ ◊em{Délai (secondes)}.
}

◊image["../assets/fr/grandes-idees-images/grandes-idees-delai.png" #:alt "Réglage des transitions automatiques"]

Revenez dans la fenêtre du navigateur, revenez sur la première vue de la présentation et rafraîchissez la page. Cliquez dans la fenêtre ou pressez la touche ◊key{Espace} pour passer à la deuxième vue ; ensuite, vous pouvez laisser la présentation se dérouler. Vous pouvez également passer d'une vue à la suivante manuellement en cliquant ou en pressant la touche ◊key{Espace} avant la fin du délai.

◊block-quote{En activant une transition automatique après la dernière vue, nous obtenons une présentation qui tourne en boucle.}

◊subsection{Ajoutons un effet d'accélération et de décélération}

◊draft{Cette section est en cours de rédaction}

◊section{Reprenons le contrôle}

◊draft{Cette section est en cours de rédaction}

À cette étape, on définit des transitions automatiques et on désactive les actions à la souris.
