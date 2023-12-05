alias:: weight
icon:: ⭐
- How important is this for the business model?
- If it turns out not to be true... is my business model greatly affected?
- Is this something that could easily change without affecting the business model?
- ### ⭐⭐⭐⭐⭐ (*****) weight
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "*****"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### ⭐⭐⭐⭐ (****) weight
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "****"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### ⭐⭐⭐ (***) weight
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "***"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### ⭐⭐ (**) weight
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "**"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### ⭐ (*) weight
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "*"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

