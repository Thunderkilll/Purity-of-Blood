player = obj_player;
//shut down all object in room save technicals
instance_deactivate_all(1);
instance_activate_object(obj_combo_cache);
	
//reset start input
global.startInput = 0;

//format menus
menu_main[0, 0] = "Inventory";
menu_main[0, 1] = "Combos";
menu_main[0, 2] = "Status";
menu_main[0, 3] = "Options";
menu_main[0, 4] = "Return to main menu";

menu_inventory[0, 0] = "Items"
menu_inventory[0, 1] = "Weapons"
menu_inventory[0, 2] = "Offhand Equipment"

menu_combos[0, 0] = "weapon 1"
menu_combos[0, 1] = "weapon 2"
menu_combos[0, 2] = "equipment"

menu_status[0, 0] = "OPTION 1"

menu_options[0, 0] = "Lighting"
menu_options[0, 1] = "Blood"
menu_options[0, 2] = "Rain"
menu_options[0, 3] = "Fog"
menu_options[0, 4] = "V-Sync"

menu_offhand_equipment[0, 0] = "blork"	// fill this horizontally with all owned offhands

//initialize
current_menu = "main menu";
current_menu_options = menu_main;
sX = 0;
sY = 0;
sExpY = 0;
moveTimer = 0;
movedH = 0;
slotExpanded = 0;