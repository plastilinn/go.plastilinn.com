color:: red
icon:: 🗣️

- #minimal-query
  #+BEGIN_QUERY
    {:query (and "#comment"  (not (page-property :exclude-from-graph-view "true")))
      :breadcrumb-show? false
     }
  #+END_QUERY
-