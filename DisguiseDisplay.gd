extends ItemList

func update_diguises(number):
	clear()
	for x in range(number):
		add_icon_item(load(Global.box_sprite), false)
		