extends Node

var logFile


func _ready():
	logFile = FileAccess.open("user://log.txt", FileAccess.WRITE)


func _exit_tree():
	logFile.close()


func print_msg(message, source):
	var current_time = Time.get_time_dict_from_system()
	logFile.write_line("%s (%s:%s:%s): %s" % [source, current_time.hour, current_time.minute, current_time.second, message])
