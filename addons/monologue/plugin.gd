@tool
extends EditorPlugin


func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	add_custom_type("MonologueProcess", "Node", 
		preload("res://addons/monologue/core/monologue_process.gd"), 
		preload("res://addons/monologue/assets/Node.svg")
	)
	
	add_custom_type("MonologueProcessSettings", "Node", 
		preload("res://addons/monologue/core/monologue_process_settings.gd"), 
		preload("res://addons/monologue/assets/Node.svg")
	)

	add_custom_type("MonologueProcessLogic", "Node",
		preload("res://addons/monologue/core/monologue_process_logic.gd"), 
		preload("res://addons/monologue/assets/Node.svg")
	)
	
	add_custom_type("MonologueProcessResult", "Node",
		preload("res://addons/monologue/core/monologue_process_result.gd"), 
		preload("res://addons/monologue/assets/Node.svg")
	)
	
	add_custom_type("MonologueContext", "Node",
		preload("res://addons/monologue/core/monologue_context.gd"), 
		preload("res://addons/monologue/assets/Node.svg")
	)
	
	add_custom_type("MonologueTextBox", "RichTextLabel", 
		preload("res://addons/monologue/layout/monologue_text_box.gd"), 
		preload("res://addons/monologue/assets/RichTextLabel.svg")
	)


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_custom_type("MonologueProcess")
	remove_custom_type("MonologueProcessSettings")
	remove_custom_type("MonologueProcessLogic")
	remove_custom_type("MonologueProcessResult")
	remove_custom_type("MonologueContext")
	remove_custom_type("MonologueTextBox")
