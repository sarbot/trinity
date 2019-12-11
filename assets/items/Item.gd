extends Node
class_name Item

# class constants
#const SLOTS = ["", "OFFHAND", "HEAD", "CHEST", "PANTS", "BOOTS", "TRINKET"]
#enum SLOTS {MAINHAND, OFFHAND, HEAD}
# editable parameters
#export(String) var item_id
export(String) var item_name = "Gegenstand"
export(String) var item_alias = "item"
export(float) var item_weight = 0
export(float) var item_price = 0  # <0 = not sellable
export(String, MULTILINE) var item_text = "Beschreibung"
export(Texture) var item_icon
export(PackedScene) var item_body


# initials
#var slot_keys = SLOTS.keys()
var body = null

onready var stats = get_node('Stats')

func _ready():
	var item_db = get_node('/root/Global').item_db
	#data = item_db[self.item_id]
	#print('item ready')


func create_body():
	#var body_res = load('res://assets/item/' + data['type'] + data['fname'] + 'body.tscn')
	#body = body_res.instance()
	pass

func interact():
	#print('item collect itself')
	var inventory = get_node('/root/World/Ui/GameMenu/TabContainer/Inventar/Inventory')
	inventory.add_item(self.item_id)
	self.queue_free()