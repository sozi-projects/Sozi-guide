<!DOCTYPE html>

◊(define ptree (get-pagetree "index.ptree"))
◊(define lang  (select-from-metas 'lang  metas))
◊(define title (get-title doc))
◊(define prev-page (previous here ptree))
◊(define next-page (next     here ptree))
◊(define home-page (cadr (children (car (children 'pagetree-root ptree)) ptree)))
◊(define prev-page-title (and prev-page (get-title prev-page)))
◊(define next-page-title (and next-page (get-title next-page)))
◊(define home-page-title (and home-page (not (memq home-page (list prev-page next-page here))) (get-title home-page)))

◊(define (make-nav)
    ◊nav{
        ◊when/splice[prev-page]{◊link[(to-url ◊prev-page) #:class "previous"]{◊prev-page-title}}
        ◊when/splice[home-page-title]{◊link[(to-url ◊home-page) #:class "home"]{◊home-page-title}}
        ◊when/splice[next-page]{◊link[(to-url ◊next-page) #:class "next"]{◊next-page-title}}
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
<body>
    <header>
        ◊(->html (make-nav))
    </header>
    ◊(case (select-from-metas 'toc metas)
        [("root") (->html (make-toc doc))]
        [("here") (->html (make-toc doc here))]
        [else     (->html doc)])
    <footer>
        ◊(->html (make-nav))
        <hr>
        ◊(->html (make-license))
    </footer>
</body>
</html>
