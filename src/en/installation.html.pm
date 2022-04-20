#lang pollen

◊define-meta[lang]{en}

◊chapter{Software installation}

◊draft{This chapter is still a draft. Please come back in a few days to read a more complete version.}

◊section{Which software do we need to install?}

To use Sozi, we will need three programs:

◊itemize{
    To draw the graphic content of a presentation: a vector drawing program that can write files in the SVG format. I recommend the free software ◊link["https://inkscape.org"]{Inkscape}, available for GNU/Linux, Windows and macOS.

    To organize a presentation: the Sozi presentation editor. Its installation process is explained below.

    To play a presentation: a web browser. I usually recommend ◊link["https://www.mozilla.org/en-US/firefox/new/"]{Firefox} but a non-resolved bug produces blurry images after some animations in Sozi presentations. The list of usable browsers includes ◊link["https://www.chromium.org/Home/"]{Chromium} and ◊link["https://en.wikipedia.org/wiki/Chromium_(web_browser)#Active"]{its derivatives} (◊link["https://www.google.com/chrome/"]{Google Chrome}, ◊link["https://www.microsoft.com/en-us/edge"]{Microsoft Edge}, ◊link["https://vivaldi.com/"]{Vivaldi}, ◊link["https://brave.com/"]{Brave}), ◊link["https://wiki.gnome.org/Apps/Web"]{GNOME Web}, ◊link["https://www.apple.com/safari/"]{Safari}.
}

◊section{Where can we find the latest version of Sozi?}

◊warning{The ◊link["https://github.com/sozi-projects/Sozi"]{Sozi projet on GitHub} is the only official source to download Sozi.}

◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{Open this link in a new tab} to show the download page for the latest release. Scroll to the ◊em{Assets} section and locate the file that corresponds to your operating system:

◊table{
    ◊th{Operating system} ◊th{File to download}

    ◊td{Windows} ◊td{◊code{Sozi.Setup.VERSION.exe}}

    ◊td{macOS} ◊td{◊code{Sozi-VERSION-mac.tar.xz}}

    ◊td{Debian, Ubuntu and derivatives} ◊td{◊code{sozi_VERSION_amd64.deb}}

    ◊td{Fedora, OpenSUSE} ◊td{◊code{sozi-VERSION.x86_64.rpm}}

    ◊td{Archlinux, Manjaro (see note below)} ◊td{◊code{sozi-VERSION.pacman}}

    ◊td{Any GNU/Linux distribution} ◊td{◊code{Sozi-VERSION.AppImage}}
}

◊blockquote{
    In this table, ◊code{VERSION} represents the Sozi version number. Refer to section ◊link["about-sozi.html#sec-6"]{What do Sozi version numbers mean?} for details.
}

Users of Archlinux-based distributions can also install Sozi from the AUR (◊em{Archlinux User Repository}). Two installation options are available: ◊link["https://aur.archlinux.org/packages/sozi"]{sozi} builds Sozi from its source repository; ◊link["https://aur.archlinux.org/packages/sozi-bin"]{sozi-bin} downloads and installs the official ◊code{.pacman} file.

◊warning{
    Sozi is only available for the x86-64 architecture.
}

◊section{How to install Sozi...}

◊subsection{... on Windows}

In the ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{Sozi download page}, choose the file with extension ◊code{.exe}.
Open your ◊code{Downloads} folder and double-click the file ◊code{Sozi.Setup.VERSION.exe}.

◊warning{
    If you get the message "Windows protected your PC...", choose ◊em{More info} and press the button ◊em{Run anyway}.
}

At the end of the setup process, Sozi can be run from the application menu.

◊blockquote{Now let's go to the next chapter and ◊link["first-presentation.html"]{create our first presentation}.}

◊subsection{... on macOS}

In the ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{Sozi download page}, choose the file whose name ends with ◊code{-mac.tar.xz}.
In your ◊code{Downloads} folder, double-click the file ◊code{Sozi-VERSION-mac.tar.xz} to unarchive it. You should get a folder ◊code{Sozi.app}.
Drag and drop it to your ◊code{Applications} folder.

◊blockquote{Sozi is ready to ◊link["first-presentation.html"]{create your first presentation}.}

◊subsection{... on Debian, Ubuntu and their derivatives}

In the ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{Sozi download page}, choose the file with extension ◊code{.deb} and save it to your ◊code{Downloads} folder.
Open a terminal and run the following command, replacing ◊code{VERSION} with the actual version number:

◊pre{
    sudo dpkg -i $HOME/Downloads/sozi_VERSION_amd64.deb
}

If the command succeeded, you can launch Sozi from the application menu, or by typing ◊code{sozi} in a terminal.

◊blockquote{What are we waiting for? Let us ◊link["first-presentation.html"]{create our first presentation} now!}

◊subsection{... on Fedora}

In the ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{Sozi download page}, choose the file with extension ◊code{.rpm} and save it to your ◊code{Downloads} folder.
Open a terminal and run the following command, replacing ◊code{VERSION} with the actual version number:

◊pre{
    sudo dnf install $HOME/Downloads/sozi-VERSION.x86_64.rpm
}

If the command succeeded, you can launch Sozi from the application menu, or by typing ◊code{/opt/Sozi/sozi} in a terminal.

◊blockquote{It's the right time to ◊link["first-presentation.html"]{create our first presentation}.}

◊subsection{... on OpenSUSE}

In the ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{Sozi download page}, choose the file with extension ◊code{.rpm}.
When the download process is complete, open the file with YaST.

◊warning{
    If you get the message "nothing provides 'libuuid' ...", choose: "break sozi-VERSION.x86_64 by ignoring some of its dependencies". Then press the button ◊em{OK - Try Again}.
    If you get the message "Package Sozi is broken, integrity check has failed.", press the button ◊em{Ignore}.
}

If the installation succeeded, you can launch Sozi from the application menu, or by typing ◊code{/opt/Sozi/sozi} in a terminal.

◊blockquote{Let's celebrate and ◊link["first-presentation.html"]{create our first presentation}.}

◊subsection{... on Archlinux or Manjaro}

In the ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{Sozi download page}, choose the file with extension ◊code{.pacman} and save it to your ◊code{Downloads} folder.
Open a terminal and run the following command, replacing ◊code{VERSION} with the actual version number:

◊pre{
    sudo pacman -U $HOME/Downloads/sozi-VERSION.pacman
}

If the command succeeded, you can launch Sozi from the application menu, or by typing ◊code{sozi} in a terminal.

◊blockquote{Without further ado, let's go ◊link["first-presentation.html"]{create our first presentation}.}

◊subsection{... on GNU/Linux, from an AppImage package}

In the ◊link["https://github.com/sozi-projects/Sozi/releases/latest"]{Sozi download page}, choose the file with extension ◊code{.AppImage} and save it to your ◊code{Downloads} folder.
Open a terminal and run the following command, replacing ◊code{VERSION} with the actual version number:

◊pre{
    chmod u+x $HOME/Downloads/Sozi-VERSION.AppImage
}

To launch Sozi, you can simply run the AppImage file. Type the following line in a terminal:

◊pre{
    $HOME/Downloads/Sozi-VERSION.AppImage
}

◊blockquote{All conditions are met to allow us to ◊link["first-presentation.html"]{create our first presentation}.}

◊draft{Would you like to help me improve the Sozi Guide? Join the ◊link["https://github.com/sozi-projects/Sozi-guide/discussions/5"]{discussion about this chapter in the forum} and add a comment.}
