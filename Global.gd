extends Node

var Player
var Paxton
var Enemy
var EnemyZ
var navigation
var navigationz
var navigationc
var citynavigation
var destinations
var destinationsz
var destinationsc
var citydestinations
var Car
var roof
var Horror_Secret
var combi = []
var popup
var pc
var Phone1 = false
var Phone2 = false
var Phone3 = false
var Phone4 = false
var Phone5 = false
var lantern = false
var message = 0
var suitcase = 0
var recorder = 0
var files = 0
var patrol = false
var deadtype = false
var skin = false
var rifle = false
var laseron = false
var sword = false
var bullet
var camera = false
var Camera2D2

var gameover = false
var tuto = false
var intro = false
var prologo = false
var level1 = false
var level2 = false
var level3 = false
var epilogo = false
var final = false

var level1a = false
var level2a = false
var level3a = false
var epilogoa = false

var Contact3 = false
var Contact2 = false
var Archives = false
var Zerado

#File Links - MANUALLY CHANGE

var tutorial_messages = "res://Scenes/Levels/TutorialMessages.json"
var welcome_messages = "res://Scenes/Levels/WelcomeMessages.json"
var contact_messages = "res://Scenes/Levels/ContactMessages.json"
var ContactLevel2 = "res://Scenes/Levels/ContactLevel2.json"
var ContactLevel3 = "res://Scenes/Levels/ContactLevel3.json"

#Assets Links - MANUALLY CHANGE

var nightvision_on_sfx = "res://SFX/nightvision.wav"
var nightvision_off_sfx = "res://SFX/nightvision_off.wav"
var house_vision_sfx = "res://SFX/housealma.wav"

var red_light = "res://GFX/Interface/PNG/dotRed.png"
var green_light = "res://GFX/Interface/PNG/dotGreen.png"

var box_sprite = "res://GFX/PNG/Tiles/tile_129.png"
var player_sprite = "res://GFX/PNG/Man Red/manRed_stand2.png"
var motocicle_sprite = "res://GFX/PNG/Moto/moto_run_0.png"
var lantern_sprite = "res://GFX/PNG/Man Red/withlantern.png"

var box_occluder = "res://Scenes/Characters/BoxOccluder.tres"
var player_occluder = "res://Scenes/Characters/Character_Occluder.tres"
var moto_occluder = "res://Scenes/Characters/Moto_Occluder.tres"
var lantern_occluder = "res://Scenes/Characters/Character_Occluder.tress"

var box_shape = "res://Scenes/Characters/BoxShape.tres"
var player_shape = "res://Scenes/Characters/Character_Shape.tres"
var moto_shape = "res://Scenes/Characters/Moto_Shape.tres"
var lantern_shape = "res://Scenes/Characters/Character_Shape.tres"

#Collectables - MANUALLY CHANGE

var suitcase_sprite = "res://GFX/Loot/case_case_0.png"
var files_sprite = "res://GFX/Loot/folders_Folder_0.png"
var recorder_sprite = "res://GFX/PNG/Tiles/rec_Animation 1_0.png"
var lantern_icon_sprite = "res://GFX/Loot/lantern_Animation 1_0.png"
var motocicle_icon_sprite = "res://GFX/PNG/Moto/motonone.png"
var knife_icon_sprite = "res://GFX/PNG/ZombieArea/Knife_Knife_0.png"
var gun_icon_sprite = "res://GFX/PNG/Armored/Weapon_Animation 1_0.png"
var armor_icon_sprite = "res://GFX/PNG/Armored/Collet_Animation 1_0.png"
var medkit_icon_sprite = "res://GFX/PNG/Armored/Medkit_Medkit_0.png"
var skin_icon_sprite = "res://GFX/PNG/Armored/SkinLoot_Animation 1_0.png"
var rifle_icon_sprite = "res://GFX/PNG/Armored/RiflePickUP_Animation 1_0.png"
var laseron_icon_sprite = "res://GFX/PNG/Armored/Laseron_Animation 1_0.png"
var sword_icon_sprite = "res://GFX/PNG/Armored/Sword_PickUP_Animation 1_0.png"