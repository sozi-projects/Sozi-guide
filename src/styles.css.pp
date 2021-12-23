#lang pollen

◊(define book-font    "PT Sans")
◊(define chapter-font "PT Sans")
◊(define heading-font "PT Sans Narrow")
◊(define text-font    "PT Serif")
◊(define mono-font    "JetBrains Mono")
◊(define key-font     "PT Sans")

/* Adjust font size of JetBrains Mono to PT Serif */
◊(define mono-font-size "90%")

◊(define hr-color         "#aaa")
◊(define link-color       "rgb(0, 120, 150)")
◊(define chapter-color    "rgb(0, 204, 255)")
◊(define section-color    "rgb(255, 102, 0)")
◊(define subsection-color "rgb(255, 204, 0)")
◊(define warning-color    "rgb(221, 175, 233)")
◊(define warning-bg-color "rgb(247, 235, 250)")
◊(define quote-color      "rgb(204, 204, 204)")
◊(define code-bg-color    "rgba(0, 0, 0, 7%)")
◊(define key-border-color "rgba(0, 0, 0, 50%)")
◊(define key-bg-color     "rgba(0, 0, 0, 7%)")


◊(define (with-border color)
    (format "margin-left: -1rem; padding-left: 0.5rem; border-left: 0.5rem solid ~a;" color))

@import "/assets/normalize.css";
@import "/fonts/PT-Sans/stylesheet.css";
@import "/fonts/PT-Sans-Narrow/stylesheet.css";
@import "/fonts/PT-Serif/stylesheet.css";
@import "/fonts/JetBrains-Mono/stylesheet.css";
@import "/fonts/Fork-Awesome/css/fork-awesome.min.css";

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

h1.book  {
    font-family: ◊book-font;
    font-size: 270%;
}

h1.chapter, h1.toc {
    font-family: ◊chapter-font;
    font-size: 270%;
    margin: 0;
}

.subtitle {
    font-size: 75%;
}

h2.section {
    font-size: 170%;
    margin-top: 2.5rem;
    margin-bottom: 1.5rem;
    ◊with-border[◊section-color]
}

h3.subsection {
    font-size: 130%;
    margin-top: 1.5rem;
    margin-bottom: 1rem;
    ◊with-border[◊subsection-color]
}

a {
    color: ◊link-color;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

iframe.sozi {
    width: 100%;
    height: 50vh;
    border: none;
    margin: 1rem 0;
}

pre, code {
    font-family: ◊mono-font;
    font-variant-ligatures: none;
    font-size: ◊mono-font-size;
}

code {
    background: ◊code-bg-color;
    padding: 0 0.25rem;
}

p {
    margin: 0.25rem 0;
}

main p + p {
    text-indent: 1rem;
}

p, li, aside, blockquote {
    line-height: 1.4;
}

br {
    margin-bottom: 0.25rem;
}

ol, ul.itemize {
    margin-top: 0.5rem;
}

ul.itemize {
    list-style: none;
    padding-left: 1.5rem;
}

ul.itemize li {
    text-indent: -1.5rem;
    padding-left: 1rem;
}

ul.itemize li:before {
    content: "\2014\2002";
}

nav.toc {
    margin-top: 5rem;
    margin-bottom:  5rem;
    ◊with-border[◊chapter-color]
    padding-left: 1.5rem; /* Overrides with-border */
}

nav.toc ul {
    list-style: none;
    padding: 0;
    margin: 0 0 0 1rem;
}

nav.toc > ul {
    margin-top: 2rem;
}

nav.toc li {
    margin: 0.5rem 0;
}

nav.toc li:last-child {
    margin-bottom: 0;
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
    text-align: left;
    width: 33%;
}

nav a.previous:before {
    content: "←\00A0";
}

nav a.home {
    text-align: center;
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

.cover {
    margin-top: 2rem;
}

.cover h1, .cover h2, .cover p, .cover address {
    text-align: center;
}

.cover .author {
    font-style: normal;
    font-size: 120%;
}

blockquote {
    font-style: italic;
    margin-right: 0;
    ◊with-border[◊quote-color]
}

blockquote em {
    font-style: normal;
}

aside.warning {
    background: ◊warning-bg-color;
    padding: 0.5rem;
    margin-top: 0.5rem;
    margin-bottom: 0.5rem;
    ◊with-border[◊warning-color]
}

aside.warning p {
    text-align: justify;
}

img {
    max-width: 100%;
    display: block;
    text-indent: 0;
    margin: 1rem auto;
}

.key {
    font-family: ◊key-font;
    border: 1px solid ◊key-border-color;
    background: ◊key-bg-color;
    border-radius: 0.25rem;
    padding: 0 0.3rem;
    text-indent: initial;
}
