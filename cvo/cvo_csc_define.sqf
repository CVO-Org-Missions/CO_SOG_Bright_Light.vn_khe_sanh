//// DEFINE DEFAULTS

[
    createHashMapFromArray [

        ["normal_mode", "POS"], 
        ["spawn_pos", btc_create_object_point],

        ["box_empty", true],
        ["box_class", "vn_b_ammobox_supply_01"],

        ["airframe_class", "vn_b_air_ch47_03_01"],

        ["airdrop_pos_start", [10981.1,3178.57,150]],
        ["airdrop_pos_end", "RETURN"],


		["ace_cargo_setSize", 1]
    ]
] call cvo_csc_fnc_defaultEntry;

//// DEFINE CRATES

// NIGHT FIGHT

[
    "Night Fight Kit",
	[
		["vn_m79_p", 1],
		["vn_40mm_m583_flare_w_mag", 20],

		["ACE_HandFlare_Yellow",10],
		["ACE_HandFlare_Red",40],
		
		["ACE_Flashlight_KSF1", 10],
		["vn_mx991_red", 5]
	]
] call cvo_csc_fnc_register;

// GENERAL AMMO
[
    "General Ammo Package",
	[

		["vn_type56_mag", 10],
		["vn_type56_t_mag", 10],
        ["vn_carbine_30_mag", 10],
        ["vn_carbine_30_t_mag", 10],
        ["vn_m14_mag", 10],
        ["vn_m14_t_mag", 10],
        ["vn_m16_20_mag", 20],
        ["vn_m16_20_t_mag", 10],
        
        ["vn_m3a1_mag", 10],
        ["vn_m3a1_t_mag", 10],
        ["vn_m45_mag", 10],
        ["vn_m45_t_mag", 10],
        ["vn_sten_mag", 10],
        ["vn_sten_t_mag", 10],
        ["vn_mat49_mag", 10],
        ["vn_mat49_t_mag", 10],
        ["vn_mpu_mag", 10],
        ["vn_mpu_t_mag", 10],
        ["vn_m1897_fl_mag", 10],
        ["vn_m1897_buck_mag", 40],

        ["vn_rpd_125_mag", 20],
        ["vn_m60_100_mag", 20],

        ["vn_m1911_mag", 10],
        ["vn_hp_mag", 10],
        ["vn_hd_mag", 10],

        ["vn_40mm_m381_he_mag", 10],
        ["vn_40mm_m406_he_mag", 10],
        ["vn_40mm_m397_ab_mag", 10],
        ["vn_40mm_m433_hedp_mag", 10],
        ["vn_40mm_m651_cs_mag", 10],
        ["vn_40mm_m583_flare_w_mag", 10],
        ["vn_40mm_m661_flare_g_mag", 10],
        ["vn_40mm_m662_flare_r_mag", 10],
        ["vn_40mm_m695_flare_y_mag", 10],
        ["vn_40mm_m680_smoke_w_mag", 10],
        ["vn_40mm_m682_smoke_r_mag", 10],
        ["vn_40mm_m715_smoke_g_mag", 10],
        ["vn_40mm_m716_smoke_y_mag", 10],
        ["vn_40mm_m716_smoke_y_mag", 10],
        ["vn_40mm_m717_smoke_p_mag", 10],

        ["vn_m14_early_grenade_mag", 10],
        ["vn_m34_grenade_mag", 10],
        ["vn_m61_grenade_mag", 10],
        ["vn_m67_grenade_mag", 10],
        ["vn_m7_grenade_mag", 10],
        ["vn_v40_grenade_mag", 10],
        ["vn_m18_white_mag", 10],
        ["vn_m18_green_mag", 10],
        ["vn_m18_purple_mag", 10],
        ["vn_m18_red_mag", 10],
        ["vn_m18_yellow_mag", 10],

        ["vn_mine_m14_mag", 10],
        ["vn_mine_m16_mag", 10],
        ["vn_mine_m18_range_mag", 10],
        ["vn_mine_m18_mag", 10],
        ["vn_mine_m18_x3_range_mag", 5],
        ["vn_mine_m18_x3_mag", 5],
		
		["vn_m72",5],

		

		["ACE_HandFlare_Yellow",10],
		["ACE_HandFlare_Red",10],
        
		
		["HandGrenade",10],
		["SmokeShell",5],
		["1Rnd_Smoke_Grenade_shell",5],
		
		
		["ACE_SpareBarrel", 2]
	]
] call cvo_csc_fnc_register;


// MEDICAL

[
    "Medical Resupply Package",
	[
		["ACE_surgicalKit", 1],
		// ["ACE_suture", 100],

		["ACE_painkillers", 5],

		["ACE_bodyBag", 25],
		["ACE_personalAidKit", 15],
		
		["ACE_salineIV", 10],
		["ACE_salineIV_500", 20],

		["ACE_fieldDressing",  40],
		["ACE_packingBandage", 40],
		["ACE_elasticBandage", 50],

        ["ACE_Morphine",5],
        ["ACE_Epinephrine",10]

	],
    [],
    createHashMapFromArray [
        ["box_class", "vn_b_ammobox_supply_03"],
        ["ace_medical_facility", true]
    ]
] call cvo_csc_fnc_register;

// Combat Patrol

[
    "Combat Patrol Package",
	[
		["ACE_personalAidKit", 5],
		["ACE_salineIV_500", 5],
		["vn_prop_food_sack_01", 30],
		["ACE_WaterBottle", 25],

		["ACE_fieldDressing", 30],
		["ACE_packingBandage", 30],
		["ACE_elasticBandage", 10],

		["ace_marker_flags_red", 25],
		["ace_marker_flags_green", 25],

		["ACE_EarPlugs", 10],
		["ACE_SpraypaintRed", 2],
		["ACE_CableTie", 20],

		["ACE_HandFlare_White", 20],
		
		

		["ACE_bodyBag", 10]
	]
] call cvo_csc_fnc_register;


// Vehicle Kits

[
	"Vehicle Ammo Package",			// Name String
	[],										// Array
	[],										// Array of Backpacks
	createHashMapFromArray [
        ["box_class", "vn_b_ammobox_full_15"],

		["ace_rearm_source", true],
		["ace_rearm_source_value", 50],

		["ace_carry_canCarry", true]
	]
] call cvo_csc_fnc_register;





[
	"Vehicle Maintainance Package",	// Name String
	[["ToolKit", 1]],				// Array
	[],								// Array of Backpacks
	createHashMapFromArray [
        ["box_class", "vn_b_ammobox_supply_06"],

		["ace_repair_facility", true],

		["ace_carry_canCarry", true],
		["ace_cargo_add_jerrycans", 1],
		["ace_cargo_add_spareWheels",2]
	]
] call cvo_csc_fnc_register;

//////////// LINKING 



{ [cvo_csc_source, _x] call cvo_csc_fnc_link; } forEach [
    "General Ammo Package"
    ,"Combat Patrol Package"
    ,"Night Fight Kit"    
    ,"Medical Resupply Package"
    ,"Vehicle Ammo Package"
    ,"Vehicle Maintainance Package"
];
