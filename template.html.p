<!DOCTYPE html>

◊(define lang (select-from-metas 'lang metas))
◊(define prev-page (previous here))
◊(define next-page (next here))
◊(define prev-page-title (and prev-page (select 'h1 prev-page)))
◊(define next-page-title (and next-page (select 'h1 next-page)))

<html lang="◊lang">
<head>
  <meta charset="UTF-8">
  <title>◊(select 'h1 doc)</title>
  <link rel="stylesheet" href="/styles.css">
</head>
<body>
    <header>
        <nav>
            ◊when/splice[prev-page]{<a href="/◊prev-page">&larr;&nbsp;◊|prev-page-title|</a>}
            ◊when/splice[next-page]{<a href="/◊next-page">◊|next-page-title|&nbsp;&rarr;</a>}
        </nav>
        <hr>
    </header>
    ◊(->html doc)
    <footer>
        <hr>
        <nav>
            ◊when/splice[prev-page]{<a href="/◊prev-page">&larr;&nbsp;◊|prev-page-title|</a>}
            ◊when/splice[next-page]{<a href="/◊next-page">◊|next-page-title|&nbsp;&rarr;</a>}
        </nav>
        <hr>
        <div class="license">
            Guillaume Savaton, 2021<br>
            ◊(case lang
                [("fr")
                 "Ce document est mis à disposition selon les termes de la <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/deed.fr\">Licence Creative Commons Attribution - Partage dans les Mêmes Conditions 4.0 International (CC-BY-SA 4.0)</a>."]
                [else
                 "This work is licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License (CC-BY-SA 4.0)</a>."])
        </div>
    </footer>
</body>
</html>
