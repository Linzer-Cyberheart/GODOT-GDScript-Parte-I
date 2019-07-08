extends Popup


func set_text(combination):
	$RichTextLabel.bbcode_text =  (" Door Access Code: " + PoolStringArray(combination).join("") + ""
	+ "                                                                                                                                                               Welcome and remember to stay safe  soldier.")
	