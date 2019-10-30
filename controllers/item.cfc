component output = false {

	public void function add() {

		// Redirect
		redirect("item.list")
	}

	public void function list() {

		// Fetch Items
		//var itemList = database

		// Render View
		request.itemList = []
		// TEMP
	}

}