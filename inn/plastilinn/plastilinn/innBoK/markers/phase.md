alias:: phase
icon:: 🗓️
- At what stage is this relevant?
- Is this something to pay attention to at the beginning of the project?
- Can it be postponed for later stages?
- ### 🗓️🗓️🗓️🗓️🗓️ (ppppp) phase
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "ppppp"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🗓️🗓️🗓️🗓️ (pppp) phase
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "pppp"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🗓️🗓️🗓️ (ppp) phase
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "ppp"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🗓️🗓️ (pp) phase
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "pp"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### 🗓️ (p) phase
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "p"]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

