component output = "false" {

	public String function render(String header, String content) {

		// Create Buffer
		var buffer = []
	
		// Create Panel
		buffer.add('<div class = "panel">');
		buffer.add('<table width = "100%" height = "100%">');
		buffer.add('<tr height = "20">');
		buffer.add('<td width = "*">');
		buffer.add(header);
		buffer.add('</td>');
		buffer.add('</tr>');
		buffer.add('<tr height = "*">');
		buffer.add('<td>');
		buffer.add(content);
		buffer.add('</td>');
		buffer.add('</tr>');
		buffer.add('</table>');
		buffer.add('</div>');
	
		// Return Value
		return arrayToList(buffer, "")
	}

}