class_name UserPreferences extends Resource

@export_range(0, 1, 0.01) var master_v: float = 1.0
@export_range(0, 1, 0.01) var music_v: float = 1.0
@export_range(0, 1, 0.01) var sfx_v: float = 1.0

func save() -> void:
	ResourceSaver.save(self, "res://saves/user_prefs.tres")


static func load_or_create() -> UserPreferences:
	var res: UserPreferences = load("res://saves/user_prefs.tres") as UserPreferences
	if !res:
		res = UserPreferences.new()
	return res
