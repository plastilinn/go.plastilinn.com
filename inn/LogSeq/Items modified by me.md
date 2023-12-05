query-properties:: [:page :created-at :updated-at]
#+BEGIN_QUERY
{ :query [:find (pull ?p [*])
         :in $ ?start ?today
         :where
         [?p :block/updated-at ?d]
         [(>= ?d ?start)]
         [(<= ?d ?today)]
         [?b :block/page ?p]
         ]
 :inputs [:7d-before-ms :end-of-today-ms]
}
#+END_QUERY

-