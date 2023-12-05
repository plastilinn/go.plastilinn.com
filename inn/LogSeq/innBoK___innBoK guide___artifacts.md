-
- query-table:: false
  collapsed:: true
  #+BEGIN_QUERY
  {
  :title [:b "select and exclude blocks with block properties"]
  :query [:find (pull ?block [*])
  :where
  [?block :block/content ?blockcontent]
  [?block :block/page ?page]
  [?page :block/name ?pagename]
  (property ?block :inncopilot-type "artifact")
  ]
  :collapsed? true
  :group-by-page? false
  :remove-block-children? true
  }
  #+END_QUERY
-
-
- {{query (and [[innBoK/innBoK guide]] (property :inncopilot-type [[artifact]]))}}
  query-table:: false
  query-properties:: [:block]