extends Control


const OnScreenKeyboard := preload("res://addons/onscreenkeyboard/onscreen_keyboard.gd")


onready var line_edit: LineEdit = $LineEdit
onready var keyboard: OnScreenKeyboard = $OnscreenKeyboard


func _ready() -> void:
	keyboard.targetLineEdit = line_edit
	keyboard.connect("visibilityChanged", self, "on_keyboard_visibilityChanged")
	
	line_edit.connect("focus_entered", keyboard, "show")


func on_keyboard_visibilityChanged(keyboard_visible: bool) -> void:
	if not keyboard_visible:
		keyboard.targetLineEdit.release_focus()
