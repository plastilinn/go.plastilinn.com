alias:: fact
icon:: ✅
- Have I verified this in the real world?
- Is this a fact I have experimentally verified?
- Is this a statement I can prove with objective facts and data?
- ### ✅✅✅✅✅ (=====) fact
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "====="]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### ✅✅✅✅ (====) fact
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "===="]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### ✅✅✅ (===) fact
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "==="]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### ✅✅ (==) fact
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "=="]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

- ### ✅ (=) fact
  - #+BEGIN_QUERY
    {:query [:find (pull ?b [*])
      :where
      [?p :block/name "="]
      [?b :block/refs ?p]]
    :breadcrumb-show? false
    :table-view? false
    }
    #+END_QUERY

