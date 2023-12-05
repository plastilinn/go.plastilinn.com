## build instance reference
	- #### template
	  template:: build-instance-reference
		- aaa
	- #### example
		- aaa
-
- {{renderer :view, "c.page.props.name"}}
-
-
- https://github.com/stdword/logseq13-full-house-plugin/discussions/21
-
- template:: pages-tagged-with
	- ```jsx
	  ``{ !
	  /** 🏛view v1
	   *  required 🏛 Full House Templates plugin v2.5.1 or newer
	   *  https://github.com/stdword/logseq13-full-house-plugin/discussions/21
	   */
	  
	  function getRelatedPages(relationName, relationValue) {
	    const query = `[:find ?name
	     :where
	        [?p :block/original-name ?name]
	        [?p :block/properties ?ps]
	        [(get ?ps :${relationName}) ?pv]
	        [(contains? ?pv "${relationValue}")]
	    ]`
	    const result = top.logseq.api.datascript_query(query)
	    if (!result || result.length === 0)
	        return null
	    return result.flat()
	  }
	  
	  const property = c.args.prop || 'tags'
	  const relation = c.page.name
	  const pages = getRelatedPages(property, relation)
	  if (!pages)
	    return `There are no pages with property <b><i>${property}</i></b> and relation [[${relation}]]`
	  _}``
	  Pages with ``{ dev.toHTML(ref(property)) }`` containing ``{ dev.toHTML(ref(relation)) }``
	  ``{ '<ul>' + pages.sort().map((p) => `<li>${dev.toHTML(ref(p))}</li>`).join('') + '</ul>' }``
	  ```
-
-
- template:: inn-pages-tagged-with
	- ```jsx
	  ``{ !
	  /** 🏛view v1
	   *  required 🏛 Full House Templates plugin v2.5.1 or newer
	   *  https://github.com/stdword/logseq13-full-house-plugin/discussions/21
	   */
	  
	  function getRelatedPages(relationName, relationValue) {
	    const query = `[:find ?name
	     :where
	        [?p :block/original-name ?name]
	        [?p :block/properties ?ps]
	        [(get ?ps :${relationName}) ?pv]
	        [(contains? ?pv "${relationValue}")]
	    ]`
	    const result = top.logseq.api.datascript_query(query)
	    if (!result || result.length === 0)
	        return null
	    return result.flat()
	  }
	  
	  const property = c.args.prop || 'tags'
	  const relation = c.page.name
	  const pages = getRelatedPages(property, relation)
	  if (!pages)
	    return `There are no pages with property <b><i>${property}</i></b> and relation [[${relation}]]`
	  _}``
	  Pages with ``{ dev.toHTML(ref(property)) }`` containing ``{ dev.toHTML(ref(relation)) }``
	  ``{ '<ul>' + pages.sort().map((p) => `<li>${dev.toHTML(ref(p))}</li>`).join('') + '</ul>' }``
	  ```
	-