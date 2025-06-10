extends Control

const OnScreenKeyboard := preload("res://addons/onscreenkeyboard/onscreen_keyboard.gd")

onready var line_edit: LineEdit = $LineEdit
onready var keyboard: OnScreenKeyboard = $OnscreenKeyboard

func _ready() -> void:
	keyboard.targetLineEdit = line_edit
	
	line_edit.connect("focus_entered", keyboard, "show")
