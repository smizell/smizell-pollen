◊(define page-title (select-from-metas 'title metas))
◊(define title (format "~a - Stephen Mizell" page-title))
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <link href="https://gmpg.org/xfn/11" rel="profile">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <title>◊|title|</title>
    <link rel="stylesheet" type="text/css" href="/assets/styles.css">
  </head>
  <body>
    <main>
      ◊when/splice[(not (equal? page-title "Home"))]{
        <nav><a rel="home" href="/">Stephen Mizell</a></nav>
      }
      ◊(->html doc)
    </main>
  </body>
</html>
