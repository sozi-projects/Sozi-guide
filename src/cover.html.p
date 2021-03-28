<!DOCTYPE html>

◊(define lang  (select-from-metas 'lang  metas))
◊(define title (get-title doc))
◊(define prev-page (previous here "index.ptree"))
◊(define next-page (next     here "index.ptree"))
◊(define prev-page-title (and prev-page (get-title prev-page)))
◊(define next-page-title (and next-page (get-title next-page)))

◊(define start-link-text
    ◊(case lang
        [("fr") "Commencer"]
        [else   "Start"]))

◊(define other-lang-url
    ◊(case lang
        [("fr") "/en"]
        [else   "/fr"]))

◊(define other-lang-link-text
    ◊(case lang
        [("fr") "Read this book in English"]
        [else   "Lire ce livre en français"]))

◊(define (make-nav)
    ◊nav{
        ◊link[◊other-lang-url]{◊other-lang-link-text}
        ◊when/splice[next-page]{◊link[(to-url ◊next-page) #:class "next"]{◊start-link-text}}
    }
)

◊(define (make-license)
    ◊div[#:class "license"]{
        ◊p{Guillaume Savaton, 2021}
        ◊(case lang
            [("fr")
             ◊p{Ce document est mis à disposition selon les termes de la ◊link["http://creativecommons.org/licenses/by-sa/4.0/deed.fr" #:rel "license"]{Licence Creative Commons Attribution - Partage dans les Mêmes Conditions 4.0 International (CC-BY-SA 4.0)}.}]
            [else
             ◊p{This work is licensed under a ◊link["http://creativecommons.org/licenses/by-sa/4.0/" #:rel "license"]{Creative Commons Attribution-ShareAlike 4.0 International License (CC-BY-SA 4.0)}.}])
    }
)

<html lang="◊lang">
<head>
  <meta charset="UTF-8">
  <title>◊|title|</title>
  <link rel="stylesheet" href="/styles.css">
</head>
<body class="cover">
    ◊(->html doc)
    <footer>
        ◊(->html (make-nav))
        <hr>
        ◊(->html (make-license))
    </footer>
    <script>
        window.onload = () => {
            const img        = document.querySelector("img");
            const hr         = document.querySelector("footer hr");
            const delta      = window.innerHeight - hr.offsetTop;
            img.style.height = (img.clientHeight + delta) + "px";
        };
    </script>
</body>
</html>
