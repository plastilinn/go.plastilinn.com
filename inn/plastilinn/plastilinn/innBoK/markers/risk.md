alias:: risk
icon:: 🔥
- Is this something I should prioritize ($$$$$)?
- Is this something urgent but not the most urgent ($)?
- ### 🔥🔥🔥🔥🔥 (!!!!!) risk
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "!!!!!"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🔥🔥🔥🔥 (!!!!) risk
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "!!!!"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🔥🔥🔥 (!!!) risk
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "!!!"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🔥🔥 (!!) risk
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "!!"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🔥 (!) risk
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "!"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

