#lang pollen

◊define-meta[lang]{fr}

◊chapter{Installation des logiciels}

Pour utiliser Sozi, vous aurez besoin de trois logiciels :

◊itemize{
    Pour dessiner le contenu graphique d'une présentation : un logiciel de dessin vectoriel capable d'enregistrer au format SVG. Je recommande le logiciel libre ◊link["https://inkscape.org/fr/?switchlang=fr"]{Inkscape}, disponible pour GNU/Linux, Windows et macOS.

    Pour organiser une présentation : l'éditeur de présentation Sozi, dont l'installation est détaillée ci-après.

    Pour jouer une présentation : un navigateur web. D'ordinaire, je conseille ◊link["https://www.mozilla.org/fr/firefox/new/"]{Firefox} mais un bug encore non résolu rend l'affichage flou après certaines animations dans les présentations Sozi. La liste des navigateurs utilisables comprend ◊link["https://www.chromium.org/Home/"]{Chromium} et ◊link["https://en.wikipedia.org/wiki/Chromium_(web_browser)#Active"]{ses dérivés} (◊link["https://www.google.com/chrome/"]{Google Chrome}, ◊link["https://www.microsoft.com/fr-fr/edge"]{Microsoft Edge}, ◊link["https://vivaldi.com/fr/"]{Vivaldi}, ◊link["https://brave.com/fr/"]{Brave}), ou encore ◊link["https://wiki.gnome.org/Apps/Web"]{GNOME Web} et ◊link["https://www.apple.com/safari/"]{Safari}.
}

◊section{Où trouver la dernière version de Sozi ?}

La seule source officielle pour télécharger Sozi est le dépôt GitHub du projet : ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{ouvrez ce lien dans un nouvel onglet pour accéder à la page de téléchargement de la dernière version}. Descendez jusqu'à la section ◊em{Assets} et repérez le fichier qui correspond à votre système d'exploitation :

◊table{
    ◊th{Systèmes d'exploitation} ◊th{Extension du fichier à télécharger}

    ◊td{Windows}                                     ◊td{◊code{.exe}}

    ◊td{macOS}                                       ◊td{◊code{-mac.tar.xz}}

    ◊td{Debian, Ubuntu et dérivées}                  ◊td{◊code{.deb}}

    ◊td{Fedora, OpenSUSE}                            ◊td{◊code{.rpm}}

    ◊td{Archlinux, Manjaro (voir remarque plus bas)} ◊td{◊code{.pacman}}

    ◊td{Toutes distributions GNU/Linux}              ◊td{◊code{.AppImage}}
}

Les utilisateurs d'Archlinux ou d'une distribution dérivée peuvent aussi installer Sozi depuis le dépôt AUR (◊em{Archlinux User Repository}). Il existe deux paquets : ◊link["https://aur.archlinux.org/packages/sozi"]{sozi} s'installe à partir des fichiers sources ; ◊link["https://aur.archlinux.org/packages/sozi-bin"]{sozi-bin} installe le fichier ◊code{.pacman} officiel.

◊warning{
    Sozi est uniquement disponible pour l'architecture x86-64.
}

◊section{Installons Sozi sous Windows}

Dans la ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{page de téléchargement de Sozi}, choisissez le fichier dont l'extension est ◊code{.exe}. Une fois téléchargé, vous devrez peut-être signaler ce fichier comme fiable avant de pouvoir l'enregistrer.

Ouvrez votre dossier ◊code{Téléchargements} et double-cliquez sur le fichier ◊code{Sozi.Setup.VERSION.exe}, où ◊code{VERSION} est le numéro de la version de Sozi à installer.

◊warning{
    Si vous obtenez le message "Windows a protégé votre ordinateur...", choisissez ◊em{Informations complémentaires}, et pressez le bouton ◊em{Exécuter quand même}.
}

À la fin de l'installation, Sozi peut être lancé à partir du menu des applications.

◊section{Installons Sozi sous macOS}

Dans la ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{page de téléchargement de Sozi}, choisissez le fichier dont le nom se termine par ◊code{-mac.tar.xz}.

Dans votre dossier de téléchargements, double-cliquez sur le fichier ◊code{Sozi-VERSION-mac.tar.xz} pour le désarchiver. Vous devez obtenir un dossier ◊code{Sozi.app}. Faites-le glisser dans votre dossier d'applications.

◊section{Installons Sozi sous Debian, Ubuntu et leurs dérivées}

Dans la ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{page de téléchargement de Sozi}, choisissez le fichier dont l'extension est ◊code{.deb} et enregistrez-le dans votre dossier ◊code{Téléchargements}. Ouvrez un terminal et exécutez la commande suivante, en remplaçant ◊code{VERSION} par le numéro de version qui figure dans le nom du fichier :

◊pre{
    sudo dpkg -i $HOME/Téléchargements/sozi_VERSION_amd64.deb
}

Si tout s'est bien passé, vous pouvez démarrer Sozi à partir du menu des applications ou en tapant ◊code{sozi} dans un terminal.

◊section{Installons Sozi sous Fedora}

Dans la ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{page de téléchargement de Sozi}, choisissez le fichier dont l'extension est ◊code{.rpm} et enregistrez-le dans votre dossier ◊code{Téléchargements}. Ouvrez un terminal et exécutez la commande suivante, en remplaçant ◊code{VERSION} par le numéro de version qui figure dans le nom du fichier :

◊pre{
    sudo dnf install $HOME/Téléchargements/sozi-VERSION.x86_64.rpm
}

Si tout s'est bien passé, vous pouvez démarrer Sozi à partir du menu des applications ou en tapant ◊code{/opt/Sozi/sozi} dans un terminal.

◊section{Installons Sozi sous OpenSUSE}

Dans la ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{page de téléchargement de Sozi}, choisissez le fichier dont l'extension est ◊code{.rpm} et ouvrez-le avec YaST.

◊warning{
    Si vous obtenez le message "rien ne fournit 'libuuid' ...", choisissez : "casser sozi-[...].x86_64 en ignorant certaines de ses dépendances". Pressez ensuite le bouton ◊em{OK - Essayer à nouveau}.

    Si vous obtenez le message "Le paquet Sozi est brisé, la vérification d'intégrité a échoué.", pressez le bouton ◊em{Ignorer}.
}

À la fin de l'installation, vous pouvez démarrer Sozi à partir du menu des applications ou en tapant ◊code{/opt/Sozi/sozi} dans un terminal.

◊section{Installons Sozi sous Archlinux ou Manjaro}

Dans la ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{page de téléchargement de Sozi}, choisissez le fichier dont l'extension est ◊code{.pacman} et enregistrez-le dans votre dossier ◊code{Téléchargements}. Ouvrez un terminal et exécutez la commande suivante, en remplaçant ◊code{VERSION} par le numéro de version qui figure dans le nom du fichier :

◊pre{
    sudo pacman -U $HOME/Téléchargements/sozi-VERSION.pacman
}

Si tout s'est bien passé, vous pouvez démarrer Sozi à partir du menu des applications ou en tapant ◊code{sozi} dans un terminal.

◊section{Installons Sozi à partir d'un paquet au format AppImage}

Dans la ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{page de téléchargement de Sozi}, choisissez le fichier dont l'extension est ◊code{.AppImage} et enregistrez-le dans votre dossier ◊code{Téléchargements}. Ouvrez un terminal et exécutez la commande suivante, en remplaçant ◊code{VERSION} par le numéro de version qui figure dans le nom du fichier :

◊pre{
    chmod u+x $HOME/Téléchargements/Sozi-VERSION.AppImage
}

Pour démarrer Sozi, il suffit d'exécuter le fichier AppImage, par exemple en tapant la ligne suivante dans un terminal :

◊pre{
    $HOME/Téléchargements/Sozi-VERSION.AppImage
}

◊draft{Voulez-vous m'aider à améliorer le guide de Sozi ? Faites-moi part de vos remarques dans ◊link["https://github.com/sozi-projects/Sozi-guide/discussions/4"]{la conversation dédiée à ce chapitre sur le forum de discussion}.}
