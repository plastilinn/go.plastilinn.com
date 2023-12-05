- {{embed [[plastilinn console menu]]}}
- #minimal-query
  query-table:: false
  #+BEGIN_QUERY
  { :query (and (property key-weight) (page [[business model]]) (sort-by key-weight desc))
  :breadcrumb-show? false
  :result-transform (fn [result] 
    (sort-by 
      (fn [d] (get d :block/key-weight))
    ) 
  )
  }
  #+END_QUERY
-