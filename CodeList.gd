extends ItemList

func update_recorder(Recorder):
	$RecorderNumber.text = str(Global.recorder)

func update_suitcase(Suitcase):
	$SuitcaseNumber.text = str(Global.suitcase)

func update_files(Files):
	$FilesNumber.text = str(Global.files)

func update_message(Message):
	$MessagesNumber.text = str(Global.message)