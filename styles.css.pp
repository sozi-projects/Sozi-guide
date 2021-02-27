#lang pollen

◊(define text-font "PT Serif")
◊(define title-font "Arsenal")
◊(define mono-font "JetBrains Mono")

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

pre, code {
    font-family: ◊mono-font;
    font-variant-ligatures: none;
}

p {
    margin: 0.25rem 0;
}
