#lang pollen/markup

◊(define-meta title "Archive")

◊h1{Archive}

◊p{◊a[#:href "/"]{Home}}

◊p{Past writings archived here for now.}

◊(define ps '(("Why People Like GraphQL" "/micro/2019/02/why-graphql-thinks-people-should-like-graphql/")
              ("Why GraphQL Thinks People Should Like GraphQL" "/micro/2019/02/why-graphql-thinks-people-should-like-graphql/")
              ("API Design and Beginners" "/micro/2019/03/api-design-and-beginners/")
              ("Application Driven API Design" "/micro/2019/03/application-driven-api-design/")
              ("Using GraphQL with REST APIs" "/micro/2019/03/using-graphql-with-rest-apis/")
              ("Test Coverage is a Lie" "/writing/test-coverage-lie/")
              ("Working Remotely" "/writing/working-remotely/")
              ("Hypermedia Design" "/weblog/2016/hypermedia-design")
              ("Verbose Hypermedia Format" "/weblog/2014/verbose-hypermedia-format")
              ("Solving FizzBuzz with Hypermedia" "/weblog/2014/solving-fizzbuzz-with-hypermedia")
              ("Hyperextend: Extending Hypermedia" "/weblog/2014/hyperextend-extending-hypermedia")
              ("HTML, Hypermedia API, and a Decoupled UI" "/weblog/2014/html-hypermedia-api-decoupled-ui")
              ("Converting Between Hypermedia Types" "/weblog/2014/converting-between-hypermedia-types")
              ("Coding the Hypermedia Elements of a Message" "/weblog/2014/coding-the-hypermedia-elements-message")
              ("Rails Really Isn't RESTful" "/weblog/2013/rails-isn-t-really-restful.html")
              ("RESTful Static Site" "/weblog/2013/restful-static-site")))

◊(list-links ps)
