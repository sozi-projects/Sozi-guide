#lang pollen

◊(define chapter-font "PT Sans")
◊(define heading-font "PT Sans Narrow")
◊(define text-font "PT Serif")
◊(define mono-font "JetBrains Mono")

◊(define hr-color   "#aaa")
◊(define link-color "#26a")

@import "/assets/normalize.css";
@import "/fonts/PT-Sans/stylesheet.css";
@import "/fonts/PT-Sans-Narrow/stylesheet.css";
@import "/fonts/PT-Serif/stylesheet.css";
@import "/fonts/JetBrains-Mono/stylesheet.css";
@import "/fonts/Fork-Awesome-1.1.7/css/fork-awesome.min.css";

html {
    font-family: ◊text-font;
    font-size: large;
}

body {
    text-align: justify;
    word-wrap: break-word;
    hyphens: auto;

    margin: 1rem 1rem;

    background:
	    linear-gradient(to bottom, transparent, transparent 0.7rem, rgba(255, 255, 255, 0.6) 0.7rem, white 23rem),
		repeating-linear-gradient(to right, transparent, transparent 2rem, rgba(255, 102, 0, 0.1) 2rem, rgba(255, 102, 0, 0.1) 3.5rem, transparent 3.5rem, transparent 13rem),
		repeating-linear-gradient(to right, transparent, transparent 4rem, rgba(204, 255, 0, 0.5) 4rem, rgba(204, 255, 0, 0.5) 10rem, transparent 10rem, transparent 11rem),
		repeating-linear-gradient(to right, transparent, transparent 0.5rem, rgba(221, 175, 233, 0.5) 0.5rem, rgba(221, 175, 233, 0.5) 4.5rem, transparent 4.5rem, transparent 7rem),
		repeating-linear-gradient(to right, rgb(128, 230, 255), rgb(128, 230, 255) 1rem, rgb(255, 230, 128) 1rem, rgb(255, 230, 128) 3rem);
    background-repeat: no-repeat;
}

@media (min-width: 58.5rem) { /* 52rem when root font size is applied */
    body {
        margin: 1rem calc(50vw - 25rem);
    }
}

h1, h2, h3 {
    font-family: ◊heading-font;
    font-weight: normal;
	text-shadow: 0px 1px 2px rgba(0, 0, 0, 0.4);
}

h1.chapter {
    font-family: ◊chapter-font;
    font-size: 270%;
    text-align: center;
    margin: 5rem 0 5rem 0;
}

h2.section {
    font-size: 170%;
    margin: 2.5rem 0 1.5rem 0;
}

h3.subsection {
    font-size: 130%;
}

h3.subsection:before {
    content: "\203a\2002";
    color: #aaa;
}

a {
    color: ◊link-color;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

pre, code {
    font-family: ◊mono-font;
    font-variant-ligatures: none;
}

p {
    margin: 0.25rem 0;
}

main p + p {
    text-indent: 1em;
}

p, li {
    line-height: 1.4;
}

ul.itemize {
    list-style: none;
    padding-left: 1.5em;
}

ul.itemize li {
    text-indent: -1.5em;
    padding-left: 1em;
}

ul.itemize li:before {
    content: "\2014\2002";
}

nav.chapter {
    margin: 0 auto 5rem auto;
}

nav.chapter > div {
    text-align: center;
}

nav.chapter ul {
    display: table;
    margin: 0 auto;
    list-style: none;
    padding: 0.5rem 0;
}

nav.chapter li {
    margin: 0.5rem 0;
}

header, footer {
    text-align: center;
}

header {
    margin-top: 3rem;
}

footer {
    margin-top: 3rem;
}

footer .license {
    font-size: 80%;
}

nav {
    display: table;
    width: 100%;
    margin: 0 auto;
}

nav a {
    display: table-cell;
    width: 50%;
}

nav a.previous {
    text-align: left;
}

nav a.previous:before {
    content: "←\00A0";
}

nav a.next {
    text-align: right;
}

nav a.next:after {
    content: "\00A0→"
}

hr {
    max-width: 30rem;
    height: 1px;
    border: none;
    background: ◊hr-color;
}

footer hr {
    margin-top: 2rem;
    margin-bottom: 0.5rem;
}
