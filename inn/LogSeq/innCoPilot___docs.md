icon:: 🛎️
color:: grey

- [[innCoPilot/docs/installation]]
  collapsed:: true
	- [[innCoPilot/docs/download and install LogSeq]]
	- [[innCoPilot/docs/download and add innCoPilot graph]]
- [[innCoPilot/docs/user interface]]
  collapsed:: true
	- [[innCoPilot/docs/opening pages in the right panel]]
	- [[innCoPilot/docs/slides]]
- [[innCoPilot/docs/project cycle]]
	- [[innCoPilot/docs/design]]
		- La fase de diseño de un modelo de negocio
		- [[innCoPilot/docs/classes]]
		- [[innCoPilot/docs/artifacts]]
			- [[innCoPilot/docs/artifact content]]
			- [[innCoPilot/docs/artifact workflow]]
			- [[innCoPilot/docs/artifact status]]
			- [[innCoPilot/docs/artificial intelligence]]
			- [[innCoPilot/docs/renaming]]
			  id:: 6512f010-7169-4376-830e-5fe357987022
	- [[innCoPilot/docs/analysis]]
		- [[innCoPilot/docs/markers]]
		- [[innCoPilot/docs/risks]]
	- [[innCoPilot/docs/validation]]
		- [[innCoPilot/docs/experiments]]
- [[innCoPilot/docs/business model navigator]]
- [[innCoPilot/docs/guide]]
	- [[innCoPilot/docs/guide/tasks]]
	- [[innCoPilot/docs/guide/topics]]
	- [[innCoPilot/docs/guide/resources]]
	- [[innCoPilot/docs/business model editor]]
	- [[innCoPilot/docs/business model viewer]]
- [[innCoPilot/docs/comments]]
- [[innCoPilot/docs/presentations]]
- [[innCoPilot/docs/whiteboards]]
- [[innCoPilot/docs/exporting content]]
- [[innCoPilot/docs/version control and back-up]]
- [[innCoPilot/dev]]
	- [[innCoPilot/dev/prompts]]
		- [[innCoPilot/dev/prompts/risk]]
	- [[innCoPilot/dev/plugins/awesome-content]]
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