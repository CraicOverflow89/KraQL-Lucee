<cfscript>

	// Partial Logic
	request.renderPartial = function(name) {
		var viewString = "views/partials/" & name & ".cfm"
		include viewString
	}

	// View Logic
	request.render = function() {

		// Default Event
		var event = function() {

			// Default Event
			var event = {
				"controller" : "item",
				"action"     : "list"
			}
	
			// Bespoke Event
			if(structKeyExists(url, "event") && reFind("[A-Za-z0-9]+\.[A-Za-z0-9]+", url.event)) {
				var eventSplit = listToArray(url.event, ".")
				event = {
					"controller" : eventSplit[1],
					"action"     : eventSplit[2]
				}
			}
	
			// Return Event
			return event
		}()

		// Invoke Event
		invoke(createObject("component", "controllers/" & event.controller), event.action)

		// Render Content
		var viewString = "views/" & event.controller & "/" & event.action & ".cfm"
		include viewString
	}

	// Panel Decorator
	//request.decorators
	// NOTE: change this to map of decorators based on files in decorators directory
	request.panel = createObject("component", "decorators/panel")

	// Redirect Logic
	redirect = function(String event) {
		location("index.cfm?event=" & event)
	}

	// Render Layout
	include "layouts/main.cfm"

</cfscript>