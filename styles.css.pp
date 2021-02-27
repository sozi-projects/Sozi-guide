#lang pollen

◊(define text-font "PT Serif")
◊(define title-font "Arsenal")
◊(define mono-font "JetBrains Mono")

◊(define hr-color   "#aaa")
◊(define link-color "#26a")

@import "/node_modules/@fontsource/arsenal/index.css";
@import "/node_modules/@fontsource/pt-serif/index.css";
@import "/node_modules/@fontsource/jetbrains-mono/index.css";

body {
    font-family: ◊text-font;
    font-size: 14pt;

    text-align: justify;
    word-wrap: break-word;
    hyphens: auto;

    margin: 1rem 1rem;

    background:
	    linear-gradient(to bottom, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0) 0.5rem, rgba(255, 255, 255, 0.6) 0.7rem, white 5rem),
		repeating-linear-gradient(to right, transparent, transparent 2rem, rgba(255, 102, 0, 0.1) 2rem, rgba(255, 102, 0, 0.1) 3.5rem, transparent 3.5rem, transparent 13rem),
		repeating-linear-gradient(to right, transparent, transparent 4rem, rgba(204, 255, 0, 0.5) 4rem, rgba(204, 255, 0, 0.5) 10rem, transparent 10rem, transparent 11rem),
		repeating-linear-gradient(to right, transparent, transparent 0.5rem, rgba(221, 175, 233, 0.5) 0.5rem, rgba(221, 175, 233, 0.5) 4.5rem, transparent 4.5rem, transparent 7rem),
		repeating-linear-gradient(to right, rgb(128, 230, 255), rgb(128, 230, 255) 1rem, rgb(255, 230, 128) 1rem, rgb(255, 230, 128) 3rem);

}

@media (min-width: 60rem) {
    body {
        margin: 1rem calc(50vw - 30rem);
    }
}

h1, h2, h3 {
    font-family: ◊title-font;
    font-weight: normal;
}

h1.chapter {
    text-align: center;
    margin: 4rem 0 3rem 0;
}

h2.section {
    margin: 2.5rem 0 1.5rem 0;
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

footer {
    margin-top: 1rem;
    text-align: center;
    font-size: 80%;
}

footer hr {
    max-width: 30rem;
    height: 1px;
    border: none;
    background: ◊hr-color;
    margin-bottom: 0.5rem;
}
