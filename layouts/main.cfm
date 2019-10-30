<!DOCTYPE html>
<html>
	<head>
		<title>KraQL Lucee</title>
		<link href = "resources/styles/main.css" rel = "stylesheet" type = "text/css" />
	</head>
	<body>
		<table class = "expand">
			<tr>
				<td colspan = "3">
					<cfoutput>#request.renderPartial("header")#</cfoutput>
				</td>
			</tr>
			<tr>
				<td width = "15"></td>
				<td>
					<cfoutput>#request.renderView()#</cfoutput>
				</td>
				<td width = "15"></td>
			</tr>
		</table>
	</body>
</html>