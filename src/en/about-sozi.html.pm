#lang pollen

◊define-meta[lang]{en}

◊chapter{About Sozi}

◊section{What can you do with Sozi?}

Sozi is a piece of software for creating animated presentations. It is generally used to make visual aids for lectures or meetings. With Sozi, a presentation is not organized as a sequence of slides, but rather as a succession of ◊em{viewpoints} on a ◊em{map} that you ◊em{explore}.

◊; TODO Add an example with a map

Sozi is quite versatile. Some creators have already used it for other purposes, for example to make animated ◊em{infographics}, websites, or interactive fiction. But before you throw yourself into such a project, take the time to explore the possibilities of Sozi and know its limits. Here are some indications:

◊subsection{Sozi is not a drawing application}

Or more generally, the Sozi presentation editor does not offer any tool to create content. The starting point of a Sozi presentation is a graphic document that you must create with other software, typically a vector drawing tool such as ◊link["https://inkscape.org/"]{Inkscape}, or a ◊em{mind map} editor. Read the chapter ◊link["concepts.html"]{Basic concepts} for more explanations.

◊subsection{Sozi is not a general-purpose animation tool}

Its interface is not designed to easily manage the animation of a large number of independent objects. The only allowed movements are simple geometrical transformations (translations, rotations, zooms) and the options for timing control are limited. Depending on your needs, an animation tool such as ◊link["https://www.synfig.org/"]{Synfig Studio} may be more suitable.

◊subsection{Sozi is not a website editor}

Sozi supports the creation of ◊em{non-linear} presentations, in which you can insert links to navigate between views. Therefore it is a very effective way to create animated web pages that you can host in place of a traditional website. A few years ago, ◊link["https://fr.wikipedia.org/wiki/Adobe_Flash"]{Adobe Flash} would have been used to achieve a similar effect.

However, such a website is likely to have poor accessibility for visually impaired persons. So far, no effort has been made to facilitate the creation of Sozi presentations that would comply with the ◊link["https://www.w3.org/WAI/standards-guidelines/wcag/"]{W3C Web Content Accessibility Guidelines}, and screen reader support has not been considered.


◊section{Who develops Sozi?}

My name is Guillaume Savaton. I work as an engineer, teacher and researcher in the fields of digital electronics, embedded systems, and digital signal processing. I use Sozi regularly as part of my professional activities but its development is not part of my job. It is a personal project on which I work in my spare time.

Sozi is not a commercial ◊em{product}. It is not developed by a company or by an organized team. There is no ◊em{roadmap}, no world domination ◊em{strategy}. Gaining ◊em{market shares} is not part of my concerns either.

Although I am its main author, many people have contributed to the improvement and promotion of Sozi in several ways: ◊link["https://github.com/sozi-projects/Sozi/issues"]{reporting issues} and helping me fix them; suggesting, and sometimes implementing new features; ◊link["https://hosted.weblate.org/projects/sozi/translations/"]{translating the user interface of the editor} and its documentation in several languages; answering questions in the ◊link["https://sozi.baierouge.fr/community/"]{user forum}; publishing articles and tutorials.


◊section{Why did I create Sozi?}

The short answer can be written in three points:

◊itemize{
    Because I make a lot of presentations on technical topics, illustrated by intricate diagrams.

    Because I was frustrated by the limitations of the ◊em{slideshow} format to display and explore those diagrams.

    To set myself a challenge, learn and practice programming languages that I don't use in my day job.
}

And here is a more detailed and chronological answer, a journey in three stages:

◊subsection{A presentation as a reference document}

Part of my job consists in making and showing presentations, for teaching as well as research: lectures, scientific conferences, project meetings... From the 1990s to the end of the 2000s, I have used several free or commercial slideshow creation tools: Microsoft PowerPoint, ◊link["https://www.openoffice.org/"]{OpenOffice}/◊link["https://www.libreoffice.org/"]{LibreOffice} ◊link["https://www.libreoffice.org/discover/impress/"]{Impress}, ◊link["http://www.ctan.org/tex-archive/macros/latex/contrib/beamer/doc/beameruserguide.pdf"]{Beamer}.

During this period, the style of my presentations has changed significantly. I began by adopting a common practice in education, where the same slideshow is played during the lecture, and handed out in printed form to the students. This document, possibly annotated by the students, had to contain enough information to be usable alone after the lecture, for example during practical work or revision.

◊subsection{A presentation to illustrate a speech}

Over time, I realized that my slideshows were neither good lecture material, because they were too dense, nor good ◊em{reference manuals}, for lack of structure. For each of the subjects I was teaching, I therefore decided to create two kinds of documents: presentations, where the slides were used only to illustrate an oral speech, and ◊em{manuals} (PDF or web) structured like books, that students could refer to during hands-on activities.

At this point, I started to see the limits of the slideshow format. As I teach technical subjects, I need to show diagrams with varying degrees of detail. Many of these diagrams explain how electronic or computing systems work, or how they are structured. And so as not to lose my audience, I have tried to display these diagrams in a progressive way, alternating between the ◊em{big picture}, and detailed views of each part. You can do it in a slideshow but it takes a lot of work.

◊subsection{A presentation as a map to explore}

In 2009, a company called ◊link["https://prezi.com/"]{Prezi} launched a new online presentation tool. Breaking with the slideshow model, Prezi proposed to organize a presentation as a succession of views in an infinite plane where users could freely arrange the graphic elements of their choice. I immediately saw what I could do with such a tool, but its terms of use did not suit me. In fact, at the time, Prezi offered a closed platform in which editing, storing, publishing, and viewing presentations had to be done through their online services.

I wrote the first version of Sozi in a week-end. It was not a serious project. I had merely set myself a challenge: to show that it was possible to create animated documents on the same principle as Prezi, but using only open formats and free software. After developing a very basic prototype, almost a year passed before I decided to make it a real tool that could be used on a daily basis.


◊section{Why the name "Sozi"?}

The name "Sozi" comes from the French word "Sosie", which designates a person having a strong resemblance to another, to the point that one can be mistaken for the other. An English word for that is "doppelganger". Choosing that name seems to suggest that Sozi is a faithful replica of Prezi, but it is not.

Admittedly, Sozi borrows Prezi's basic concept: a presentation is composed as as a succession of views in a plane rather than a succession of slides. But the imitation stops here. Having never used Prezi myself, I am unfamiliar with its other features, so I have never sought to replicate them. Today, I have no clear idea of the similarities and differences between both tools.

When I chose that name, I also neglected its possible meanings in other languages. For example, in German, "Sozi" is a colloquial, even derogatory, term for a supporter of socialism or social democracy. I figured it out by chance when I discovered that the hashtag ◊link["https://twitter.com/hashtag/sozi"]{# Sozi} on Twitter gave a lot of results in German, obviously unrelated to my software. For German-speaking readers of this book, I want to point out that the choice of the name "Sozi" has no political connotation.


◊section{What are the terms of use for Sozi?}

Sozi is ◊link["https://en.wikipedia.org/wiki/Free_software"]{free software}. It means that its license guarantees the following freedoms to its users:

◊enumerate{
    The freedom to use Sozi for any purpose.

    The freedom to study how it works.

    The freedom to share it.

    The freedom to modify it and share your modifications.
}

Most people will feel especially concerned by the first of these four freedoms, but it is important to know that the other three exist. They allow anyone with the appropriate skills to fix issues or add new features without asking my permission. They also allow the Sozi project to continue to ◊em{live} even if I stop maintaining it.

The source code of Sozi is available ◊link["https://github.com/sozi-projects/Sozi"]{in a public GitHub repository}. It is released under the terms of the ◊link["https://www.mozilla.org/en-US/MPL/2.0/"]{Mozilla Public License 2.0}. Sozi also includes software libraries and resources (such as icons and fonts) subject to other free licences.


◊section{What do Sozi version numbers mean?}

Version numbers follow a purely chronological pattern. They take the form "YY.MM.DD-T" where:

◊itemize{
    "YY" is the last two digits of the publication year,

    "MM" is the month number (01 the 12),

    "DD" is the day of the month (01 à 31),

    "T" identifies the source code revision that was used to build this version (technically, it is the ◊em{timestamp} of the ◊em{commit} for this revision, but it is not important if you don't know what it is).
}

Sozi does not comply with the ◊link["https://semver.org/"]{semantic versioning} convention. Changing from one version number to another does not reflect the significance of the changes that happened between those versions.
