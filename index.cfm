<cfscript>

	// View Logic
	request.renderView = function() {

		// Default Event
		var event = function() {

			// Default Event
			var event = {
				"group" : "items",
				"page"  : "list"
			}
	
			// Bespoke Event
			if(structKeyExists(url, "event") && reFind("[A-Za-z0-9]+\.[A-Za-z0-9]+", url.event)) {
				var eventSplit = listToArray(url.event, ".")
				event = {
					"group" : eventSplit[1],
					"page"  : eventSplit[2]
				}
			}
	
			// Return Event
			return event
		}()

		// Include View
		var viewString = arrayToList(["views", event.group, event.page], "/") & ".cfm"
		include viewString
	}

	// Render Layout
	include "layouts/main.cfm"

</cfscript>