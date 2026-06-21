extends Resource
class_name Character

#IDEAS: Use carry weight stat from STR to create a party wide Encumbrance pool.
#Place in Encumbrance all "Luggage" items (i.e. kegs, chests, barrels of javelins/extra quivers, tent/bedroll, extra packs)
#Pack Animals also add to Encumbrance
#var Tutor_Level = 0 Change "Learn" to "Teach" past level 9. 10+ allows Wizard to tutor 1st+ spells. Tomes w/ mats
#var Learn_Spell_Mod = 0 Create function to change Chance_to_Lrn_Sp by relative check of Spell Level to Tome Level, 5% per
#var INT_Spell_Immunity = 0 Might be able to add digits here to an array from both INT & WIS simultaneously.

@export var Experience = {"Level":1, "Current_XP":0, "XP_To_Level":2000}

@export var Combat_Stats = {"Current_HP":4, "Max_HP":4, "AC":10, "THAC0":20}

@export var Ability_Scores = {"STR":9, "DEX":9, "CON":9, "INT":9, "WIS":9, "CHR":9,}

@export var Saving_Throws = {"Poison_Save":16, "Death_Save":16, "Paralyzation_Save":16, "Petrification_Polymorph_Save":17, "Rod_Staff_Wand_Save":18, "Breath_Weapon_Save":20, "Spell_Save":19}

@export var Race = "String" #Is this also an array? Do I set a series of numbers to Attribute mods, number them, and select from them?

@export var Class = "String"


@export var Proficiency = {"Agriculture":0, "Ancient History":0, "Animal Handling":0, "Animal Lore":0, "Animal Training":0, "Appraisal":0, "Armorer":0, "Artistic Ability":0, "Astrology":0,
"Blacksmithing":0, "Blind_Fighting":0, "Bowyer_Fletcher":0, "Brewing":0,
"Carpentry":0, "Charioteering":0, "Cobbling":0, "Cooking":0,
"Dancing":0, "Direction_Sense":0, "Disguise":0, "Endurance":0, "Engineering":0, "Etiquette":0,
"Fire_Building":0, "Fishing":0, "Forgery":0, "Gaming":0, "Gem_Cutting":0,
"Healing":0, "Heraldry":0, "Herbalism":0, "Hunting":0, "Juggling":0, "Jumping":0,
"Languages_Ancient":0, "Leatherworking":0, "Local_History":0, "Mining":0, "Mountaineering":0, "Musical_Instrument":0,
"Navigation":0, "Pottery":0, "Reading_Lips":0, "Reading_Writing":0, "Religion":0, "Riding":0, "Rope_Use":0, "Running":0,
"Seamanship":0, "Set_Snares":0, "Singing":0, "Spellcraft":0, "Stonemasonry":0, "Swimming":0, "Survival":0,
"Tailor_Seamstress":0, "Tightrope_Walking":0, "Tracking":0, "Tumbling":0,
"Ventriloquism":0, "Weaponsmithing":0, "Weather_Sense":0, "Weaving":0}

@export var XP_To_Level: int:
	get:
		return Calculate_XP_To_Level(Class, Experience["Level"])

var XP_Table = {"Fighter": [2000, 4000, 7000, 12000, 20000, 35000, 60000, 100000],
"Paladin": [2250, 4500, 8000, 14000, 24000, 40000, 66000, 107000],
"Ranger": [250, 4500, 8000, 14000, 24000, 40000, 66000, 107000],
"Thief": [1250, 2500, 5000, 9000, 15000, 28000, 50000, 80000],
"Bard": [1250, 2500, 5000, 9000, 15000, 28000, 50000, 80000],
"Priest": [1500, 3000, 5500, 10500, 17000, 32000, 55000, 87000],
"Cleric": [1500, 3000, 5500, 10500, 17000, 32000, 55000, 87000],
"Druid": [2000, 4000, 7000, 12000, 20000, 35000, 60000, 100000],
"Mage": [2500, 5000, 9000, 16000, 28000, 45000, 72000, 115000],
"Wizard": [2500, 5000, 9000, 16000, 28000, 45000, 72000, 115000],}

func Calculate_XP_To_Level(Class: String, Level: int) -> int:
	if XP_Table.has(Class):
		var Levels = XP_Table[Class]
		if Level > 0 and Level <= Levels.size():
			return Levels[Level - 1]
	return 0
	print("XP_Calculated")

@export var To_Hit_Adj: int:
	get:
		return Calculate_To_Hit_Adj(Ability_Scores["STR"])
func Calculate_To_Hit_Adj(STR: int) -> int:
	if STR <= 1:
		return -5
	if STR <= 3:
		return -3
	if STR <= 5:
		return -2
	if STR <= 7:
		return -1
	if STR <= 15:
		return 0
	if STR <= 18:
		return 1
	if STR <= 21:
		return 2
	if STR <= 24:
		return 3
	else:
		return 4

@export var Dam_Adj: int:
	get:
		return Calculate_Dam_Adj(Ability_Scores["STR"])
func Calculate_Dam_Adj(STR: int) -> int:
	if STR <= 1:
		return -4
	if STR <= 2:
		return -2
	if STR <= 5:
		return -1
	if STR <= 13:
		return 0
	if STR <= 16:
		return 1
	if STR <= 17:
		return 2
	if STR <= 19:
		return 3
	if STR <= 21:
		return 4
	if STR <= 23:
		return 5
	if STR <= 25:
		return 6
	else:
		return 7

@export var Bench: int:
	get:
		return Calculate_Bench(Ability_Scores["STR"])
func Calculate_Bench(STR: int) -> int:
	print("Bench")
	if STR <= 4:
		return (STR * 5) + 5
	if STR <= 7:
		return (STR * 10) - 15
	if STR <= 9:
		return (STR * 10) - 10
	if STR <= 11:
		return (STR * 10)
	if STR <= 15:
		return (STR * 10) + 15
	else: 
		return (STR * (STR - 4))

@export var Force_Door: int:
	get:
		return Calculate_Force_Door(Ability_Scores["STR"])
func Calculate_Force_Door(STR: int) -> int:
	if STR <= 15:
		return floor(STR / 2) + 1
	else: 
		return (STR - 7)

@export var BBLG: int:
	get:
		return Calculate_BBLG(Ability_Scores["STR"])
func Calculate_BBLG(STR: int) -> int:
	if STR <= 7:
		return 0
	if STR <= 15:
		return (STR - 7)
	if STR <= 18:
		return ((STR-16)*3)+10
	else:
		return ((STR-19)*5)+20

@export var Carry_Weight: int:
	get:
		return Calculate_Carry_Weight(Ability_Scores["STR"])
func Calculate_Carry_Weight(STR: int) -> int:
	if STR <= 4:
		return (STR - 1) + 1
	if STR <= 15:
		return (STR * 5) - 15
	if STR <= 17:
		return (STR * 10) - 90
	if STR <= 21:
		return (STR * 20) - 260
	else:
		return (STR * 30) - 450

@export var Rxn_Adj: int:
	get:
		return Calculate_Rxn_Adj(Ability_Scores["DEX"])
func Calculate_Rxn_Adj(DEX: int) -> int:
	if DEX <= 1:
		return -6
	if DEX <= 2:
		return -5
	if DEX <= 3:
		return -4
	if DEX <= 4:
		return -3
	if DEX <= 5:
		return -2
	if DEX <= 7:
		return -1
	if DEX <= 14:
		return 0
	if DEX <= 16:
		return 1
	if DEX <= 18:
		return 2
	if DEX <= 20:
		return 3
	if DEX <= 23:
		return 4
	else:
		return 5

@export var Ranged_Adj: int:
	get:
		return Calculate_Ranged_Adj(Ability_Scores["DEX"])
func Calculate_Ranged_Adj(DEX: int) -> int:
	if DEX <= 1:
		return -6
	if DEX <= 2:
		return -5
	if DEX <= 3:
		return -4
	if DEX <= 4:
		return -3
	if DEX <= 5:
		return -2
	if DEX <= 7:
		return -1
	if DEX <= 14:
		return 0
	if DEX <= 16:
		return 1
	if DEX <= 18:
		return 2
	if DEX <= 20:
		return 3
	if DEX <= 23:
		return 4
	else:
		return 5

@export var AC_Adj: int:
	get:
		return Calculate_AC_Adj(Ability_Scores["DEX"])
func Calculate_AC_Adj(DEX: int) -> int:
	if DEX <= 2:
		return 5
	if DEX <= 3:
		return 4
	if DEX <= 4:
		return 3
	if DEX <= 5:
		return 2
	if DEX <= 6:
		return 1
	if DEX <= 13:
		return 0
	if DEX <= 14:
		return -1
	if DEX <= 15:
		return -2
	if DEX <= 17:
		return -3
	if DEX <= 19:
		return -4
	if DEX <= 22:
		return -5
	if DEX <= 24:
		return -6
	else:
		return -7

@export var HP_Adj: int:
	get:
		return Calculate_HP_Adj(Ability_Scores["CON"])
func Calculate_HP_Adj(CON: int) -> int:
	if CON <= 1:
		return -3
	if CON <= 4:
		return -2
	if CON <= 6:
		return -1
	if CON <= 14:
		return 0
	if CON <= 15:
		return 1
	if CON <= 17:
		return 2
	if CON <= 19:
		return 3
	if CON <=22:
		return 4
	else:
		return 5

@export var System_Shock: int:
	get:
		return Calculate_System_Shock(Ability_Scores["CON"])
func Calculate_System_Shock(CON: int) -> int:
	if CON <= 7:
		return CON * 3
	if CON <= 18:
		return (CON * 5) - 15
	else:
		return 75 + ((CON - 18) * 3)

@export var Resurrection_Survival: int:
	get:
		return Calculate_Resurrection_Survival(Ability_Scores["CON"])
func Calculate_Resurrection_Survival(CON: int) -> int:
	if CON <= 7:
		return 19 + (CON * 3)
	if CON <= 18:
		return (CON * 4) + 8
	else:
		return 80 + ((CON - 18) * 3)

@export var Poison_Save: int:
	get:
		return Calculate_Poison_Save(Ability_Scores["CON"])
func Calculate_Poison_Save(CON: int) -> int:
	if CON <= 1:
		return -2
	if CON <= 4:
		return -1
	if CON <= 17:
		return 0
	if CON <= 19:
		return 1
	if CON <= 21:
		return 2
	if CON <= 24:
		return 3
	else:
		return 4

@export var Number_of_Languages: int:
	get:
		return Calculate_Number_of_Languages(Ability_Scores["INT"])
func Calculate_Number_of_Languages(INT: int) -> int:
	if INT <= 8:
		return 1
	if INT <= 10:
		return 2
	if INT <= 12:
		return 3
	if INT <= 14:
		return 4
	if INT <= 24:
		return INT - 10
	else:
		return 20

@export var Number_of_Proficiencies: int:
	get:
		return Calculate_Number_of_Proficiencies(Ability_Scores["INT"])
func Calculate_Number_of_Proficiencies(INT: int) -> int:
	if INT <= 8:
		return 1
	if INT <= 10:
		return 2
	if INT <= 12:
		return 3
	if INT <= 14:
		return 4
	if INT <= 24:
		return INT - 10
	else:
		return 20

@export var Spell_Level: int:
	get:
		return Calculate_Spell_Level(Ability_Scores["INT"])
func Calculate_Spell_Level(INT: int) -> int:
	if INT <= 8:
		return 0
	if INT <= 9:
		return 1
	if INT <= 10:
		return 2
	else:
		return (INT - 6) / 2

@export var Chance_to_Learn: int:
	get: #Includes Learning Skills/Proficiencies?
		return Calculate_Chance_to_Learn(Ability_Scores["INT"])
func Calculate_Chance_to_Learn(INT: int) -> int:
	if INT <= 8:
		return 0
	else:
		return (INT - 2) * 5

@export var Max_Number_of_Spells: int:
	get: #Different Kinds of Spells in Spellbook for Day
		return Calculate_Max_Number_of_Spells(Ability_Scores["INT"])
func Calculate_Max_Number_of_Spells(INT: int) -> int:
	if INT <= 8:
		return 0
	else:
		return (INT - 1)

@export var Magic_Defense_Adj: int:
	get:
		return Calculate_Magic_Defense_Adj(Ability_Scores["WIS"])
func Calculate_Magic_Defense_Adj(WIS: int) -> int:
	if WIS <= 1:
		return -6
	if WIS <= 4:
		return WIS - 6
	if WIS <= 7:
		return -1
	if WIS <= 14:
		return 0
	if WIS <= 17:
		return WIS - 14
	else:
		return 4

@export var Bonus_Spells: int:
	get:
		return Calculate_Bonus_Spells(Ability_Scores["WIS"])
func Calculate_Bonus_Spells(WIS: int) -> int:
	if WIS <= 12:
		return 0
	else:
		return WIS - 12

@export var Spell_Fail: int:
	get:
		return Calculate_Spell_Fail(Ability_Scores["WIS"])
func Calculate_Spell_Fail(WIS: int) -> int:
	if WIS <= 3:
		return 100 - ((WIS - 1) * 20)
	if WIS <= 5:
		return 100 - ((WIS + 1) * 10)
	else:
		return 100 - ((WIS + 7) * 5)

@export var Max_Hench: int:
	get:
		return Calculate_Max_Hench(Ability_Scores["CHR"])
func Calculate_Max_Hench(CHR: int) -> int:
	if CHR <= 3:
		return 0
	if CHR <= 5:
		return 1
	if CHR <= 7:
		return 2
	if CHR <= 9:
		return 3
	if CHR <= 11:
		return 4
	if CHR <= 13:
		return 5
	if CHR <= 18:
		return CHR - 10
	if CHR <= 20:
		return ((CHR - 14) * 2)
	else:
		return((CHR - 18) * 5)

@export var Loyalty_Adj: int:
	get:
		return Calculate_Loyalty_Adj(Ability_Scores["CHR"])
func Calculate_Loyalty_Adj(CHR: int) -> int:
	if CHR <= 18:
		return CHR - 9
	else:
		return((CHR - 14) * 2)

@export var CHR_Rxn_Adj: int:
	get:
		return Calculate_CHR_Rxn_Adj(Ability_Scores["CHR"])
func Calculate_CHR_Rxn_Adj(CHR: int) -> int:
	if CHR <= 8:
		return CHR - 8
	if CHR <= 12:
		return 0
	else:
		return CHR - 12
