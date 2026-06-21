extends Control
#IDEAS: Use carry weight stat from STR to create a party wide Encumbrance pool.
#Place in Encumbrance all "Luggage" items (i.e. kegs, chests, barrels of javelins/extra quivers, tent/bedroll, extra packs)
#Pack Animals also add to Encumbrance

func _ready():
	Racial_Identity()
	Class_Identity()
	$"Stat Scores/STR_Score".text = str(GD.PC["STR"])
	$"Stat Scores/DEX_Score".text = str(GD.PC["DEX"])
	$"Stat Scores/CON_Score".text = str(GD.PC["CON"])
	$"Stat Scores/INT_Score".text = str(GD.PC["INT"])
	$"Stat Scores/WIS_Score".text = str(GD.PC["WIS"])
	$"Stat Scores/CHR_Score".text = str(GD.PC["CHR"])
	$"Level/Level Variable".text = str(GD.PC["Level"])
	$"Experience Variables/EXP to Level Variable".text = str(GD.PC["XP_To_Level"])
	$"Experience Variables/EXP Variable".text = str(GD.PC["Current_XP"])
	print(GD.PC["Race"])

var Stat_Point_Pool = 18

func _process(_delta):

	if Stat_Point_Pool < 1:
		$"Add Stat Point2/STR Add".visible = false
		$"Add Stat Point2/DEX Add".visible = false
		$"Add Stat Point2/CON Add".visible = false
		$"Add Stat Point2/INT Add".visible = false
		$"Add Stat Point2/WIS Add".visible = false
		$"Add Stat Point2/CHR Add".visible = false
	if Stat_Point_Pool > 0:
		$"Add Stat Point2/STR Add".visible = true
		$"Add Stat Point2/DEX Add".visible = true
		$"Add Stat Point2/CON Add".visible = true
		$"Add Stat Point2/INT Add".visible = true
		$"Add Stat Point2/WIS Add".visible = true
		$"Add Stat Point2/CHR Add".visible = true
func _on_str_deduct_pressed():
	if GD.PC["STR"] > 3:
		GD.PC["STR"] = GD.PC["STR"]- 1
		Stat_Point_Pool = Stat_Point_Pool + 1
	$"Stat Scores/STR_Score".text = str(GD.PC["STR"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_str_add_pressed():
	if GD.PC["STR"] < 18:
		GD.PC["STR"] = GD.PC["STR"] + 1
		Stat_Point_Pool = Stat_Point_Pool - 1
	$"Stat Scores/STR_Score".text = str(GD.PC["STR"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_dex_deduct_pressed():
	if GD.PC["DEX"] > 3:
		GD.PC["DEX"] = GD.PC["DEX"] - 1
		Stat_Point_Pool = Stat_Point_Pool + 1
	$"Stat Scores/DEX_Score".text = str(GD.PC["DEX"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_dex_add_pressed():
	if GD.PC["DEX"] < 18:
		GD.PC["DEX"] = GD.PC["DEX"] + 1
		Stat_Point_Pool = Stat_Point_Pool - 1
	$"Stat Scores/DEX_Score".text = str(GD.PC["DEX"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_con_deduct_pressed():
	if GD.PC["CON"] > 3:
		GD.PC["CON"] = GD.PC["CON"] - 1
		Stat_Point_Pool = Stat_Point_Pool + 1
	$"Stat Scores/CON_Score".text = str(GD.PC["CON"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_con_add_pressed():
	if GD.PC["CON"] < 18:
		GD.PC["CON"] = GD.PC["CON"] + 1
		Stat_Point_Pool = Stat_Point_Pool - 1
	$"Stat Scores/CON_Score".text = str(GD.PC["CON"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_int_deduct_pressed():
	if GD.PC["INT"] > 3:
		GD.PC["INT"] = GD.PC["INT"] - 1
		Stat_Point_Pool = Stat_Point_Pool + 1
	$"Stat Scores/INT_Score".text = str(GD.PC["INT"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_int_add_pressed():
	if GD.PC["INT"] < 18:
		GD.PC["INT"] = GD.PC["INT"] + 1
		Stat_Point_Pool = Stat_Point_Pool - 1
	$"Stat Scores/INT_Score".text = str(GD.PC["INT"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_wis_deduct_pressed():
	if GD.PC["WIS"] > 3:
		GD.PC["WIS"] = GD.PC["WIS"] - 1
		Stat_Point_Pool = Stat_Point_Pool + 1
	$"Stat Scores/WIS_Score".text = str(GD.PC["WIS"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_wis_add_pressed():
	if GD.PC["WIS"] < 18:
		GD.PC["WIS"] = GD.PC["WIS"] + 1
		Stat_Point_Pool = Stat_Point_Pool - 1
	$"Stat Scores/WIS_Score".text = str(GD.PC["WIS"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_chr_deduct_pressed():
	if GD.PC["CHR"] > 3:
		GD.PC["CHR"] = GD.PC["CHR"] - 1
		Stat_Point_Pool = Stat_Point_Pool + 1
	$"Stat Scores/CHR_Score".text = str(GD.PC["CHR"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)
func _on_chr_add_pressed():
	if GD.PC["CHR"] < 18:
		GD.PC["CHR"] = GD.PC["CHR"] + 1
		Stat_Point_Pool = Stat_Point_Pool - 1
	$"Stat Scores/CHR_Score".text = str(GD.PC["CHR"])
	$"Stat_Point_Pool_Value".text = str(Stat_Point_Pool)

func Racial_Identity():
	if GD.PC["Race"] == 0:
		$"Race/GD PC Race".text = str("Human")
	if GD.PC["Race"] == 1:
		$"Race/GD PC Race".text = str("Elf")
		GD.PC["DEX"] = GD.PC["DEX"] + 1
		GD.PC["CON"] = GD.PC["CON"] - 1
	if GD.PC["Race"] == 2:
			$"Race/GD PC Race".text = str("Half-Elf")
	if GD.PC["Race"] == 3:
		$"Race/GD PC Race".text = str("Dwarf")
		GD.PC["CON"] = GD.PC["CON"] + 1
		GD.PC["CHR"] = GD.PC["CHR"] - 1
	if GD.PC["Race"] == 4:
		$"Race/GD PC Race".text = str("Halfling")
		GD.PC["DEX"] = GD.PC["DEX"] + 1
		GD.PC["STR"] = GD.PC["STR"] - 1
	if GD.PC["Race"] == 5:
		$"Race/GD PC Race".text = str("Orc")
		GD.PC["STR"] = GD.PC["STR"] + 2
		GD.PC["CON"] = GD.PC["CON"] + 1
		GD.PC["INT"] = GD.PC["INT"] - 1
		GD.PC["CHR"] = GD.PC["CHR"] - 2
	if GD.PC["Race"] == 6:
		$"Race/GD PC Race".text = str("Kobold")
		GD.PC["DEX"] = GD.PC["DEX"] + 2
		GD.PC["INT"] = GD.PC["INT"] - 2
	if GD.PC["Race"] == 7:
		$"Race/GD PC Race".text = str("Bugbear")
		GD.PC["STR"] = GD.PC["STR"] + 2
		GD.PC["CON"] = GD.PC["CON"] + 2
		GD.PC["INT"] = GD.PC["INT"] - 2
		GD.PC["WIS"] = GD.PC["WIS"] - 1
		GD.PC["CHR"] = GD.PC["CHR"] - 2
	if GD.PC["Race"] == 8:
		$"Race/GD PC Race".text = str("Gnome")
		GD.PC["INT"] = GD.PC["INT"] + 1
		GD.PC["WIS"] = GD.PC["WIS"] - 1

func Class_Identity():
	if GD.PC["Class"] == 0:
		$"Class/GD PC Class".text =str("Fighter")
		GD.PC["Poison_Save"] = 14
		GD.PC["Paralyzation_Save"] = 14
		GD.PC["Death_Save"] = 14
		GD.PC["Petrification_Polymorph_Save"] = 15
		GD.PC["Rod_Staff_Wand_Save"] = 16
		GD.PC["Breath_Weapon_Save"] = 17
		GD.PC["Spell_Save"] = 17
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

	if GD.PC["Class"] == 1:
		$"Class/GD PC Class".text =str("Paladin")
		GD.PC["Poison_Save"] = 14
		GD.PC["Paralyzation_Save"] = 14
		GD.PC["Death_Save"] = 13
		GD.PC["Petrification_Polymorph_Save"] = 15
		GD.PC["Rod_Staff_Wand_Save"] = 16
		GD.PC["Breath_Weapon_Save"] = 17
		GD.PC["Spell_Save"] = 18
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

	if GD.PC["Class"] == 2:
		$"Class/GD PC Class".text =str("Ranger")
		GD.PC["Poison_Save"] = 14
		GD.PC["Paralyzation_Save"] = 14
		GD.PC["Death_Save"] = 14
		GD.PC["Petrification_Polymorph_Save"] = 15
		GD.PC["Rod_Staff_Wand_Save"] = 16
		GD.PC["Breath_Weapon_Save"] = 17
		GD.PC["Spell_Save"] = 17
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

	if GD.PC["Class"] == 3:
		$"Class/GD PC Class".text =str("Thief")
		GD.PC["Poison_Save"] = 13
		GD.PC["Paralyzation_Save"] = 13
		GD.PC["Death_Save"] = 13
		GD.PC["Petrification_Polymorph_Save"] = 12
		GD.PC["Rod_Staff_Wand_Save"] = 14
		GD.PC["Breath_Weapon_Save"] = 16
		GD.PC["Spell_Save"] = 15
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

	if GD.PC["Class"] == 4:
		$"Class/GD PC Class".text =str("Bard")
		GD.PC["Poison_Save"] = 13
		GD.PC["Paralyzation_Save"] = 13
		GD.PC["Death_Save"] = 13
		GD.PC["Petrification_Polymorph_Save"] = 12
		GD.PC["Rod_Staff_Wand_Save"] = 14
		GD.PC["Breath_Weapon_Save"] = 16
		GD.PC["Spell_Save"] = 15
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

	if GD.PC["Class"] == 5:
		$"Class/GD PC Class".text =str("Priest")
		GD.PC["Poison_Save"] = 10
		GD.PC["Paralyzation_Save"] = 10
		GD.PC["Death_Save"] = 10
		GD.PC["Petrification_Polymorph_Save"] = 13
		GD.PC["Rod_Staff_Wand_Save"] = 14
		GD.PC["Breath_Weapon_Save"] = 16
		GD.PC["Spell_Save"] = 15
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

	if GD.PC["Class"] == 6:
		$"Class/GD PC Class".text =str("Cleric")
		GD.PC["Poison_Save"] = 10
		GD.PC["Paralyzation_Save"] = 10
		GD.PC["Death_Save"] = 10
		GD.PC["Petrification_Polymorph_Save"] = 13
		GD.PC["Rod_Staff_Wand_Save"] = 14
		GD.PC["Breath_Weapon_Save"] = 16
		GD.PC["Spell_Save"] = 15
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

	if GD.PC["Class"] == 7:
		$"Class/GD PC Class".text =str("Druid")
		GD.PC["Poison_Save"] = 10
		GD.PC["Paralyzation_Save"] = 10
		GD.PC["Death_Save"] = 10
		GD.PC["Petrification_Polymorph_Save"] = 13
		GD.PC["Rod_Staff_Wand_Save"] = 14
		GD.PC["Breath_Weapon_Save"] = 16
		GD.PC["Spell_Save"] = 15
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

	if GD.PC["Class"] == 8:
		$"Class/GD PC Class".text =str("Mage")
		GD.PC["Poison_Save"] = 14
		GD.PC["Paralyzation_Save"] = 14
		GD.PC["Death_Save"] = 14
		GD.PC["Petrification_Polymorph_Save"] = 13
		GD.PC["Rod_Staff_Wand_Save"] = 11
		GD.PC["Breath_Weapon_Save"] = 15
		GD.PC["Spell_Save"] = 12
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

	if GD.PC["Class"] == 9:
		$"Class/GD PC Class".text =str("Wizard") #Every good Wizard has a magic sword.
		GD.PC["Poison_Save"] = 14
		GD.PC["Paralyzation_Save"] = 14
		GD.PC["Death_Save"] = 14
		GD.PC["Petrification_Polymorph_Save"] = 13
		GD.PC["Rod_Staff_Wand_Save"] = 11
		GD.PC["Breath_Weapon_Save"] = 15
		GD.PC["Spell_Save"] = 12
		$"Saving Throw Scores/Spell Score".text = str(GD.PC["Spell_Save"])
		$"Saving Throw Scores/Paralyzation Score".text = str(GD.PC["Paralyzation_Save"])
		$"Saving Throw Scores/Rod Staff Wand Score".text = str(GD.PC["Rod_Staff_Wand_Save"])
		$"Saving Throw Scores/Petrify Poly Score".text = str(GD.PC["Petrification_Polymorph_Save"])
		$"Saving Throw Scores/Breath Wpn Score".text = str(GD.PC["Breath_Weapon_Save"])
		$"Saving Throw Scores/Poison Score".text = str(GD.PC["Poison_Save"])
		$"Saving Throw Scores/Death Score".text = str(GD.PC["Death_Save"])

var Proficiency = 1
 # Called when the node enters the scene tree for the first time.
# Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
