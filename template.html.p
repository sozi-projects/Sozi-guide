<html lang="◊(select-from-metas 'lang metas)">
<head>
  <meta charset="UTF-8">
  <title>◊(select 'h1 doc)</title>
  <link rel="stylesheet" href="/styles.css">
</head>
<body>
    ◊(->html doc)
    <footer>
        <hr>
        Guillaume Savaton, 2021<br>
        ◊(case (select-from-metas 'lang metas)
            [("fr")
             "Ce document est mis à disposition selon les termes de la <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/deed.fr\">Licence Creative Commons Attribution - Partage dans les Mêmes Conditions 4.0 International (CC-BY-SA 4.0)</a>."]
            [else
             "This work is licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License (CC-BY-SA 4.0)</a>."])
    </footer>
</body>
</html>
