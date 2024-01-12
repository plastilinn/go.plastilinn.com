icon:: 🛎️
color:: grey

- [[plastilinn/docs/installation]]
- [[plastilinn/docs/user interface]]
	- [[plastilinn/docs/editing content]]
	- [[plastilinn/docs/opening pages in the right panel]]
	- [[plastilinn/docs/opening pages in a tab]]
	- [[plastilinn/docs/slides]]
- [[plastilinn/docs/project cycle]]
	- [[plastilinn/docs/design]]
		- La fase de diseño de un modelo de negocio
		- [[plastilinn/docs/artifacts]]
			- [[plastilinn/docs/artifact content]]
			- [[plastilinn/docs/classes]]
			- [[plastilinn/docs/artifact workflow]]
			- [[plastilinn/docs/artifact status]]
			- [[plastilinn/docs/artificial intelligence]]
			- [[plastilinn/docs/renaming]]
			  id:: 6512f010-7169-4376-830e-5fe357987022
	- [[plastilinn/docs/analysis]]
		- [[plastilinn/docs/markers]]
		- [[plastilinn/docs/risks]]
	- [[plastilinn/docs/validation]]
		- [[plastilinn/docs/experiments]]
		- [[inn]]
- [[plastilinn/docs/business model navigator]]
- [[plastilinn/docs/guide]]
	- [[plastilinn/docs/guide/tasks]]
	- [[plastilinn/docs/guide/topics]]
	- [[plastilinn/docs/guide/resources]]
	- [[plastilinn/docs/business model editor]]
	- [[plastilinn/docs/business model viewer]]
- [[plastilinn/docs/comments]]
- [[plastilinn/docs/presentations]]
- [[plastilinn/docs/whiteboards]]
- [[plastilinn/docs/exporting content]]
- [[plastilinn/docs/version control and back-up]]
- [[plastilinn/dev]]
	- [[plastilinn/dev/prompts]]
		- [[plastilinn/dev/prompts/risk]]
	- [[plastilinn/dev/plugins/awesome-content]]
	  collapsed:: true
		- kanban
			- Board name #.kanban
				- [[🟢 low]]
					- 2
				- [[🟡 normal]]
					- ...
					- 1
					- ...
				- [[🔴 high]]
					- ...
					- ...
				- [[🔴 high]]
					- ...
					- ...
				- [[🔴 high]]
					- ...
					- ...
				- [[🔴 high]]
					- ...
					- ...
		- Board name #.grid
			- [[🟢 low]]
				- 2
			- [[🟡 normal]]
				- ...
				- 1
				- ...
			- [[🔴 high]]
				- ...
				- ...
		- admonitions
			- #+BEGIN_TIP
			  HEY
			  #+END_TIP
	- [[instances]]
	  collapsed:: true
		- solution 1 rename
			- {solution 1}
			- solution 1 rename/goals
				- {solution 1/goals}
		- [solution 1 rename]([[solution 1 mia]])
	- [[innCoPilot installation]]
	  collapsed:: true
		- Install logseq
		- Download the innCoPilot graph
		- Import the plugins graph\innCoPilot\config\plugins.edn
		- Add the graph in logseq
	- [[inn]]
		- [[inn-edit text box]]
		- [[plastilinn/Copy block]]
- ### Advanced
	- Sort query
		- #+BEGIN_QUERY
		  { :query (and (property rating) (sort-by rating desc))
		  :breadcrumb-show? false
		  :result-transform (fn [result] 
		    (sort-by 
		      (fn [d] (get d :block/rating))
		    ) 
		  )
		  }
		  #+END_QUERY
- ## Dev
	- Hugo website
		- Created with Decap https://decapcms.org/docs/start-with-a-template/
			- netlify: https://app.netlify.com/sites/vocal-capybara-ab2620/deploys/654ca7c257495a6528d6dabb
		- Editing the website
			- https://vocal-capybara-ab2620.netlify.app/admin
				- https://vocal-capybara-ab2620.netlify.app/admin
			-
		- Adding content from logseq
			- Export content using the Schoedinger plugin
			- Importing that content into the hugo repository