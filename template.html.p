<html lang="◊(select-from-metas 'lang metas)">
<head>
  <meta charset="UTF-8">
  <title>◊(select 'h1 doc)</title>
  <link rel="stylesheet" href="/styles.css">
</head>
<body>
    ◊(->html doc)
</body>
</html>
