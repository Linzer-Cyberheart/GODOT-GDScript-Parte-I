extends TextureProgress

func updatehealthmeter(value):
	$HealthMeter.texture_progress = load("res://GFX/Interface/PNG/greenbar.png")
	if value < 60:
		$HealthMeter.texture_progress = load("res://GFX/Interface/PNG/yellowbar.png")
	if value < 25:
		$HealthMeter.texture_progress = load("res://GFX/Interface/PNG/redbar.png")
	if value < 100:
		$HealthMeter.show()
	$HealthMeter.value = value