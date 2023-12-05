alias:: positive
icon:: 🔋
- Is this something that contributes to the belief that the project will be successful?
- Is this a unique and special feature of my project that gives an advantage (+++++)?
- ### 🔋🔋🔋🔋🔋 (+++++) positive
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "+++++"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🔋🔋🔋🔋 (++++) positive
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "++++"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🔋🔋🔋 (+++) positive
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "+++"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🔋🔋 (++) positive
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "++"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🔋 (+) positive
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "+"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

