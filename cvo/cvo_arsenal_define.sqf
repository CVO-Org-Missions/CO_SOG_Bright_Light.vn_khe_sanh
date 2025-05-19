/*=================================================*
	CVO_ARSENAL_DEFINE
*=================================================*

Here, you define the Available Equipment for the CVO Arsenal
It is seperated in 3 Parts

##################
1. BASE KIT - This is Available for Everyone
##################

Variable Name: cvo_arsenal_base = [];

For easier reading it is suggested to compartmentalise
and append the individual Groups to cvo_arsenal_base



##################
### 2. ROLE KIT - This is dependent on the Players Role.
##################

Traits like "Medic" or "Engineer" are automatically detected,
meaning manually giving a player the medic or doctor trait isnt necessary.

##################
3. Personal KIT - Add Items to individual players based on their UID(steam64)
##################

This is based on Code blocks to allow for checks.

##################

BASE KIT gets defined once in the beginning, as it will never change during during mission.

ROLE KIT gets updated each time the arsenal opens as Roles and Traits might change mid-mission (Ad-hoc Medic)
PLAYER KIT gets updated each time the arsenal opens as it CAN be dependend on other Roles and Traits as well.


##################


*=================================================*/  


diag_log ("[CVO] [Arsenal_Define] - start");


// #####################################################
// ###### DEFINE ARSENAL BOXES HERE - objects that give accesss to the CVO Arsenal
// #####################################################
// ######  Define the Editor Layername here
// #####################################################

#define EDITOR_LAYER_NAME "CVO_Arsenal_Boxes"

// #####################################################
// ###### CODE - DONT CHANGE
// #####################################################

if (isServer) then {
	_array = (getMissionLayerEntities EDITOR_LAYER_NAME select 0);
	[_array] remoteExecCall ["CVO_ARSENAL_fnc_addAction", [0,-2] select isDedicated, true];
};

if (!hasInterface) exitWith {};

// #####################################################
// ###### DEFINE BASE KIT HERE - AVAILABLE FOR EVERYONE
// #####################################################

cvo_arsenal_base = [];

// ###### Baseline Equipment ###### 
// The Following can be mostly left as default

if (isClass (configfile >> "CfgPatches" >> "greenmag_main")) then {

		cvo_arsenal_base append [
			"greenmag_ammo_556x45_basic_60Rnd",
			"greenmag_ammo_556x45_basic_30Rnd",

			"greenmag_ammo_762x51_basic_60Rnd",
			"greenmag_ammo_762x51_basic_30Rnd",

			//"greenmag_ammo_545x39_basic_60Rnd",
			//"greenmag_ammo_545x39_basic_30Rnd",

			//"greenmag_ammo_762x39_basic_60Rnd",
			//"greenmag_ammo_762x39_basic_30Rnd",
			
			"greenmag_ammo_9x21_basic_60Rnd",
			"greenmag_ammo_9x21_basic_30Rnd",

			"greenmag_ammo_9x19_basic_60Rnd",
			"greenmag_ammo_9x19_basic_30Rnd",

			//"greenmag_ammo_45ACP_basic_30Rnd",
			//"greenmag_ammo_45ACP_basic_60Rnd",
		
			//"greenmag_ammo_762x54_basic_60Rnd",
			//"greenmag_ammo_762x54_basic_30Rnd",

			"greenmag_item_speedloader"
		];
	diag_log "[CVO] [ARSENAL_DEFINE] - GreenMag added";
};


// Immersion Cigs
// cvo_arsenal_base append ([] call cigs_core_fnc_getAllItems);

cvo_arsenal_base append [
	"cigs_Voron_cigpack",
	"cigs_cigars_cigarbox_5",
	"cigs_lighter",
	"cigs_pops_poppack",
	"cigs_lucky_strike_cigpack",
	"cigs_matches",
	"cigs_morley_cigpack",
	"cigs_savage_cigpack"
];

cvo_arsenal_base append [
	"FISH_Cream_Kit_Tropical",
	"FISH_Cream_Kit_Snow",
	"FISH_Cream_Kit_Europe",
	"FISH_Cream_Kit_Desert"
];


// Medical 
cvo_arsenal_base append [
	"ACE_packingBandage",
	"ACE_fieldDressing",
	"ACE_tourniquet", 
	"ACE_splint",
	//"ACE_morphine", medic only
	"ACE_painkillers",
	"ACE_epinephrine", 
	"ACE_salineIV", 
	"ACE_salineIV_500",
	"ACE_salineIV_250",
	"ACE_personalAidKit",
	"ACE_bodyBag"];

// Tools & Equipment

private _rations = [
	"vn_prop_food_pir_01_03",
	"vn_prop_food_pir_01_05",
	"vn_prop_food_pir_01_04",
	"vn_prop_food_pir_01_02",
	"vn_prop_food_pir_01_01"
];
cvo_arsenal_base append _rations;

cvo_arsenal_base append [
	"vn_prop_food_sack_01",

	"ACE_MapTools",
	"ace_marker_flags_yellow",
	"ace_marker_flags_red",
	"ace_marker_flags_green",
	"ace_marker_flags_blue",

	"ACE_EntrenchingTool",
	"ACE_EarPlugs",

	"ACE_SpraypaintGreen",
	"ACE_SpraypaintRed",
	"ACE_PlottingBoard",
	
	"ACE_CableTie",
	"ACE_Chemlight_Shield",
	"acex_intelitems_notepad",
	"ACE_Flashlight_KSF1",
	
	"ACE_WaterBottle",
	"ACE_Canteen",	

	"tsp_paperclip",
	"ACE_wirecutter",
	"vn_b_item_watch",
	"vn_b_item_compass_sog",
	"ACE_SpareBarrel",
	"ACE_RangeCard",
	"vn_b_item_map",
	"ItemCompass"];

// Binoculars
cvo_arsenal_base append [
	//hates camera 
	"Old_Camera",
	"Old_Camera_HUD",
	"Old_Camera_Color",
	"Old_Camera_Color_HUD",
	//binoculars
	"vn_m19_binocs_grn",
	"vn_m19_binocs_grey",
	"vn_mk21_binocs",
	"vn_camera_01",
	"vn_anpvs2_binoc"
	];



// NVGs
cvo_arsenal_base append [	
	"SAN_Headlamp_v1",
	"SAN_Headlamp_v2",
	"cigs_Voron_cig0_nv",
	"cigs_cigars_cigar0_nv",
	"cigs_cigars_cigar2_nv",
	"cigs_cigars_cigar3_nv",
	"cigs_cigars_cigar4_nv",
	"cigs_pops_pop0_nv",
	"cigs_lucky_strike_cig0_nv",
	"cigs_morley_cig0_nv",
	"cigs_savage_cig0_nv"
];

// Radios
cvo_arsenal_base append  [];

// ###### Wearables ###### 

// Uniforms 
cvo_arsenal_base append [
	//SEAL uniforms 
	"vn_b_uniform_seal_01_06",
	"vn_b_uniform_seal_01_01",
	"vn_b_uniform_seal_01_07",
	"vn_b_uniform_seal_01_05",
	"vn_b_uniform_seal_01_02",
	"vn_b_uniform_seal_02_06",
	"vn_b_uniform_seal_02_01",
	"vn_b_uniform_seal_02_07",
	"vn_b_uniform_seal_02_05",
	"vn_b_uniform_seal_02_02",
	"vn_b_uniform_seal_03_01",
	"vn_b_uniform_seal_04_01",
	"vn_b_uniform_seal_05_06",
	"vn_b_uniform_seal_05_01",
	"vn_b_uniform_seal_05_07",
	"vn_b_uniform_seal_05_05",
	"vn_b_uniform_seal_05_02",
	"vn_b_uniform_seal_06_06",
	"vn_b_uniform_seal_06_01",
	"vn_b_uniform_seal_06_07",
	"vn_b_uniform_seal_06_05",
	"vn_b_uniform_seal_06_02",
	//sog uniforms 
	"vn_b_uniform_sog_01_03",
	"vn_b_uniform_sog_01_01",
	"vn_b_uniform_sog_01_04",
	"vn_b_uniform_sog_01_06",
	"vn_b_uniform_sog_01_02",
	"vn_b_uniform_sog_01_05",
	"vn_b_uniform_sog_02_03",
	"vn_b_uniform_sog_02_01",
	"vn_b_uniform_sog_02_04",
	"vn_b_uniform_sog_02_06",
	"vn_b_uniform_sog_02_02",
	"vn_b_uniform_sog_02_05",
	//macv uniforms
	"vn_b_uniform_macv_01_15",
	"vn_b_uniform_macv_01_06",
	"vn_b_uniform_macv_01_08",
	"vn_b_uniform_macv_01_07",
	"vn_b_uniform_macv_01_01",
	"vn_b_uniform_macv_01_04",
	"vn_b_uniform_macv_01_05",
	"vn_b_uniform_macv_01_02",
	"vn_b_uniform_macv_02_15",
	"vn_b_uniform_macv_02_06",
	"vn_b_uniform_macv_02_08",
	"vn_b_uniform_macv_02_07",
	"vn_b_uniform_macv_02_01",
	"vn_b_uniform_macv_02_05",
	"vn_b_uniform_macv_02_02",
	"vn_b_uniform_macv_03_15",
	"vn_b_uniform_macv_03_06",
	"vn_b_uniform_macv_03_08",
	"vn_b_uniform_macv_03_07",
	"vn_b_uniform_macv_03_01",
	"vn_b_uniform_macv_03_05",
	"vn_b_uniform_macv_03_02",
	"vn_b_uniform_macv_04_15",
	"vn_b_uniform_macv_04_21",
	"vn_b_uniform_macv_04_06",
	"vn_b_uniform_macv_04_08",
	"vn_b_uniform_macv_04_07",
	"vn_b_uniform_macv_04_01",
	"vn_b_uniform_macv_04_05",
	"vn_b_uniform_macv_04_02",
	"vn_b_uniform_macv_04_20",
	"vn_b_uniform_macv_05_15",
	"vn_b_uniform_macv_05_06",
	"vn_b_uniform_macv_05_08",
	"vn_b_uniform_macv_05_07",
	"vn_b_uniform_macv_05_01",
	"vn_b_uniform_macv_05_05",
	"vn_b_uniform_macv_05_02",
	"vn_b_uniform_macv_06_15",
	"vn_b_uniform_macv_06_06",
	"vn_b_uniform_macv_06_08",
	"vn_b_uniform_macv_06_07",
	"vn_b_uniform_macv_06_01",
	"vn_b_uniform_macv_06_05",
	"vn_b_uniform_macv_06_02",
	"vn_b_uniform_macv_01_03"
	];

// Vests
cvo_arsenal_base append [
	//sas vest 
	"vn_b_vest_sas_02",
	"vn_b_vest_sas_03",
	"vn_b_vest_sas_04",
	"vn_b_vest_sas_01",
	//seal vests 
	"vn_b_vest_seal_07",
	"vn_b_vest_seal_06",
	"vn_b_vest_seal_03",
	"vn_b_vest_seal_04",
	"vn_b_vest_seal_05",
	"vn_b_vest_seal_02",
	//sog vests
	"vn_b_vest_sog_04",
	"vn_b_vest_sog_05",
	"vn_b_vest_sog_06",
	"vn_b_vest_sog_01"
];

// Backpacks
cvo_arsenal_base append [
	//sas packs 
	"vn_b_pack_pfield_01",
	"vn_b_pack_pfield_02",
	"vn_b_pack_p08_01",
	"vn_b_pack_p08_02",
	"vn_b_pack_p08_03",
	"vn_b_pack_p44_01",
	"vn_b_pack_p44_02",
	"vn_b_pack_p44_03",
	//parachute
	"vn_b_pack_ba22_01",
	//sog packs 
	"vn_b_pack_02",
	"vn_b_pack_04",
	"vn_b_pack_01",
	"vn_b_pack_trp_02",
	"vn_b_pack_trp_01",
	"vn_b_pack_trp_02_02",
	"vn_b_pack_trp_01_02"
	];

// Headgear
cvo_arsenal_base append [
	//berets 
	"vn_i_beret_03_03",
	"vn_i_beret_03_02",
	"vn_i_beret_03_04",
	"vn_i_beret_03_01",
	"vn_b_beret_01_02",
	"vn_b_beret_01_01",
	"vn_b_beret_01_05",
	"vn_b_beret_01_08",
	"vn_b_beret_01_04",
	"vn_b_beret_01_03",
	"vn_b_beret_04_01",
	"vn_b_beret_01_07",
	"vn_b_beret_01_06",
	//m1 helmets 
	"vn_i_helmet_m1_02_01",
	"vn_i_helmet_m1_03_01",
	"vn_b_helmet_m1_01_01",
	"vn_b_helmet_m1_14_01",
	"vn_b_helmet_m1_15_01",
	"vn_b_helmet_m1_16_01",
	"vn_b_helmet_m1_18_01",
	"vn_b_helmet_m1_17_01",
	"vn_b_helmet_m1_19_01",
	"vn_b_helmet_m1_02_01",
	"vn_b_helmet_m1_20_01",
	"vn_b_helmet_m1_03_01",
	"vn_b_helmet_m1_05_01",
	"vn_b_helmet_m1_06_01",
	"vn_b_helmet_m1_07_01",
	"vn_b_helmet_m1_09_01",
	"vn_b_helmet_m1_04_01",
	"vn_b_helmet_m1_17_01",
	"vn_b_helmet_m1_08_01",
	"vn_b_helmet_m1_10_01",
	"vn_b_helmet_m1_11_01",
	//sog pith helmet
	"vn_b_helmet_sog_01",
	//boonies
	"vn_b_boonie_08_02",
	"vn_b_boonie_08_01",
	"vn_b_boonie_07_02",
	"vn_b_boonie_07_01",
	"vn_b_boonie_06_02",
	"vn_b_boonie_06_01",
	"vn_b_boonie_02_03",
	"vn_b_boonie_02_06",
	"vn_b_boonie_02_08",
	"vn_b_boonie_02_01",
	"vn_b_boonie_02_09",
	"vn_b_boonie_02_07",
	"vn_b_boonie_02_04",
	"vn_b_boonie_02_05",
	"vn_b_boonie_02_02",
	"vn_b_boonie_03_03",
	"vn_b_boonie_03_06",
	"vn_b_boonie_03_08",
	"vn_b_boonie_03_01",
	"vn_b_boonie_03_09",
	"vn_b_boonie_03_07",
	"vn_b_boonie_03_04",
	"vn_b_boonie_03_05",
	"vn_b_boonie_03_02",
	"vn_b_boonie_04_03",
	"vn_b_boonie_04_06",
	"vn_b_boonie_04_08",
	"vn_b_boonie_04_01",
	"vn_b_boonie_04_09",
	"vn_b_boonie_04_07",
	"vn_b_boonie_04_04",
	"vn_b_boonie_04_05",
	"vn_b_boonie_04_02",
	"vn_b_boonie_05_03",
	"vn_b_boonie_05_06",
	"vn_b_boonie_05_08",
	"vn_b_boonie_05_01",
	"vn_b_boonie_05_09",
	"vn_b_boonie_05_07",
	"vn_b_boonie_05_04",
	"vn_b_boonie_05_05",
	"vn_b_boonie_05_02",
	"vn_b_boonie_01_03",
	"vn_b_boonie_01_06",
	"vn_b_boonie_01_08",
	"vn_b_boonie_01_01",
	"vn_b_boonie_01_09",
	"vn_b_boonie_01_07",
	"vn_b_boonie_01_04",
	"vn_b_boonie_01_05",
	"vn_b_boonie_01_02",
	//sog headbands 
	"vn_b_headband_03",
	"vn_b_headband_05",
	"vn_b_headband_08",
	"vn_b_headband_01",
	"vn_b_headband_04",
	"vn_b_headband_02",
	//sog bandanas
	"vn_b_bandana_06",
	"vn_b_bandana_01",
	"vn_b_bandana_07",
	"vn_b_bandana_04",
	"vn_b_bandana_05",
	"vn_b_bandana_02",
	"vn_b_bandana_08",
	"vn_b_bandana_03"
	];

// Facewear
cvo_arsenal_base append [
	//balaclavas, not resposible for any fungal infection 
	"G_Balaclava_blk",
	//sog facewear 
	"vn_o_poncho_01_01",
	"vn_b_bandana_a",
	"vn_o_bandana_b",
	"vn_o_bandana_g",
	"vn_b_scarf_01_03",
	"vn_o_scarf_01_04",
	"vn_o_scarf_01_03",
	"vn_o_scarf_01_02",
	"vn_b_scarf_01_01",
	"vn_b_acc_rag_02",
	"vn_b_acc_rag_01",
	"vn_b_spectacles",
	"vn_g_spectacles_02",
	"vn_g_spectacles_01",
	"vn_b_squares",
	"vn_b_squares_tinted",
	"vn_g_glasses_01",
	"vn_b_spectacles_tinted",
	"vn_b_acc_towel_01",
	"vn_b_acc_towel_02",
	"vn_b_aviator",
	"G_Aviator"
];

// ###### WEAPONS - MAIN ###### 

// Rifles
cvo_arsenal_base append  [
	//svd 
	"vn_svd",
	"vn_o_4x_svd",
	"vn_b_camo_svd",
	"vn_svd_mag",
	"vn_svd_t_mag",
	//m197 shotgun 
	"vn_m1897",
	"vn_m1897_buck_mag",
	"vn_m1897_fl_mag",
	//vz54
	//"vn_vz54",
	//"vn_o_3x_vz54",
	//"vn_b_camo_vz54",
	//vz61
	"vn_vz61",
	"vn_vz61_mag",
	"vn_vz61_t_mag",
	//stenmk2
	"vn_sten",
	"vn_sten_mag",
	"vn_sten_t_mag",
	"vn_s_sten",
	//sks
	"vn_sks",
	"vn_sks_gl",
	"vn_o_3x_sks",
	"vn_b_sks",
	"vn_sks_mag",
	"vn_sks_t_mag",
	//rpd
	"vn_rpd",
	"vn_rpd_shorty_01",
	"vn_rpd_shorty",
	"vn_rpd_100_mag",
	"vn_rpd_125_mag",
	//pkm
	"vn_pk",
	"vn_pk_100_mag",
	//mpu
	"vn_mpu",
	"vn_s_mpu",
	"vn_mpu_mag",
	"vn_mpu_t_mag",
	//mp40
	//"vn_mp40",
	//"vn_mp40_mag",
	//"vn_mp40_t_mag",
	//mg-42
	//"vn_mg42",
	//"vn_mg42_50_mag",
	//"vn_mg42_50_t_mag",
	//"sog_mg_belts_mg42_100_mag",
	//"sog_mg_belts_mg42_100_t_mag",
	//mc-10
	"vn_mc10",
	"vn_mc10_mag",
	"vn_mc10_t_mag",
	"vn_s_mc10",
	//mat-49
	"vn_mat49",
	"vn_mat49_mag",
	"vn_mat49_t_mag",
	"vn_s_mat49",
	//m79
	"vn_m79",
	"vn_40mm_m381_he_mag",
	"vn_40mm_m397_ab_mag",
	"vn_40mm_m406_he_mag",
	"vn_40mm_m433_hedp_mag",
	"vn_40mm_m583_flare_w_mag",
	"vn_40mm_m651_cs_mag",
	"vn_40mm_m661_flare_g_mag",
	"vn_40mm_m662_flare_r_mag",
	"vn_40mm_m680_smoke_w_mag",
	"vn_40mm_m682_smoke_r_mag",
	"vn_40mm_m695_flare_y_mag",
	"vn_40mm_m715_smoke_g_mag",
	"vn_40mm_m716_smoke_y_mag",
	"vn_40mm_m717_smoke_p_mag",
	"vn_40mm_m576_buck_mag",
	//m63
	"vn_m63a",
	"vn_m63a_30_mag",
	"vn_m63a_30_t_mag",
	"vn_m63a_cdo",
	"vn_m63a_lmg",
	"vn_m63a_150_mag",
	"vn_m63a_150_t_mag",
	"vn_m63a_100_mag",
	"vn_m63a_100_t_mag",
	"vn_bipod_m63a",
	//m60
	"vn_m60",
	"vn_m60_shorty",
	"vn_m60_shorty_camo",
	"vn_m60_100_mag",
	//m49/56
	"vn_m4956",
	"vn_m4956_gl",
	"vn_o_4x_m4956",
	"vn_b_m4956",
	"vn_m4956_10_mag",
	"vn_m4956_10_t_mag",
	//m40
	"vn_m40a1",
	"vn_m40a1_camo",
	"vn_m40a1_mag",
	"vn_m40a1_t_mag",
	"vn_o_9x_m40a1",
	"vn_o_anpvs2_m40a1",
	"vn_b_camo_m40a1",
	//m3a1
	"vn_m3a1",
	"vn_s_m3a1",
	"vn_m3a1_mag",
	"vn_m3a1_t_mag",
	//m36
	//"vn_m36",
	//"vn_b_camo_m36",
	//"vn_b_m36",
	//"vn_m36_mag",
	//"vn_m36_t_mag",
	//FM24/29
	"vnx_fm2429",
	"vnx_fm2429_mag",
	"vnx_fm2429_t_mag",
	//Tommy Gun
	//"vn_m1928_tommy",
	"vn_m1928a1_tommy",
	"vn_m1a1_tommy",
	"vn_m1a1_tommy_so",
	"vn_m1a1_20_mag",
	"vn_m1a1_20_t_mag",
	"vn_m1a1_30_mag",
	"vn_m1a1_30_t_mag",
	"vn_m1928_mag",
	"vn_m1928_t_mag",
	//M1918A2
	"vn_m1918",
	"vn_m1918_mag",
	"vn_m1918_t_mag",
	"vn_bipod_m1918",
	//M1903
	//"vn_m1903",
	//"vn_m1903_gl",
	//"vn_o_8x_m1903",
	//"vn_b_m1903",
	//"vn_b_camo_m1903",
	//"vn_m1903_mag",
	//"vn_m1903_t_mag",
	//M1891/M38
	"vn_m9130",
	"vn_o_3x_m9130",
	"vn_b_camo_m9130",
	//"vn_m1891",
	//"vn_m38",
	//"vn_b_m38",
	"vn_m38_mag",
	"vn_m38_t_mag",
	//M14
	"vn_m14_camo",
	"vn_m14",
	"vn_m14a1",
	"vn_m14a1_shorty",
	"vn_o_9x_m14",
	"vn_o_anpvs2_m14",
	"vn_b_m14",
	"vn_s_m14",
	"vn_b_camo_m14",
	"vn_m14_10_mag",
	"vn_m14_10_t_mag",
	"vn_m14_mag",
	"vn_m14_t_mag",
	"vn_o_m14_front",
	"vn_m14_camo",
	//m1 garand
	//"vn_m1_garand",
	//"vn_m1_garand_gl",
	//"vn_b_m1_garand",
	//"vn_b_camo_m1_garand",
	//"vn_m1_garand_mag",
	//"vn_m1_garand_t_mag",
	//m1 carbine shorty
	"vn_m1carbine_shorty",
	"vn_hp_sd_mag",
	//m1 carbine/m2
	//"vn_m1carbine",
	//"vn_m1carbine_gl",
	"vn_m2carbine",
	//"vn_m2carbine_gl",
	"vn_m3carbine",
	"vn_o_3x_m84",
	"vn_b_carbine",
	"vn_carbine_15_mag",
	"vn_carbine_15_t_mag",
	"vn_carbine_30_mag",
	"vn_carbine_30_t_mag",
	"vn_22mm_cs_mag",
	"vn_22mm_lume_mag",
	"vn_22mm_m17_frag_mag",
	"vn_22mm_m19_wp_mag",
	"vn_22mm_m1a2_frag_mag",
	"vn_22mm_m22_smoke_mag",
	"vn_22mm_m9_heat_mag",
	//K-50m/PPs/PPsh
	"vn_k50m",
	"vn_pps43",
	//"vn_pps52",
	//"vn_ppsh41",
	"vn_pps_mag",
	"vn_pps_t_mag",
	"vn_ppsh41_35_mag",
	"vn_ppsh41_35_t_mag",
	"vn_ppsh41_71_mag",
	"vn_ppsh41_71_t_mag",
	//Ish-54
	"vn_izh54",
	"vn_izh54_mag",
	//M16/XM16/XM17
	"vn_m16",
	"vn_m16_camo",
	"vn_m16_m203_camo",
	"vn_m16_m203",
	"vn_m16_xm148",
	"vn_xm177",
	"vn_xm177_camo",
	"vn_xm177_fg",
	"vn_xm177_m203",
	"vn_xm177_m203_camo",
	"vn_xm177_short",
	"vn_xm177_stock",
	"vn_xm177_stock_camo",
	"vn_xm177_xm148",
	"vn_xm177_xm148_camo",
	"vn_o_9x_m16",
	"vn_o_4x_m16",
	"vn_o_1x_sp_m16",
	"vn_o_anpvs2_m16",
	"vn_s_m16",
	"vn_bipod_m16",
	"vn_m16_20_mag",
	"vn_m16_40_mag",
	"vn_m16_20_t_mag",
	"vn_m16_40_t_mag",
	"vn_m16_30_mag",
	"vn_m16_30_t_mag",
	//f1/l2a3/l3a1
	"vn_l2a3",
	"vn_l34a1",
	"vn_l34a1_xm148",
	"vn_f1_smg",
	"vn_f1_smg_mag",
	"vn_f1_smg_t_mag",
	//dp-27
	"vn_dp28",
	"vn_dp28_mag",
	//ubgl mags
	"vn_40mm_m381_he_mag",
	"vn_40mm_m397_ab_mag",
	"vn_40mm_m406_he_mag",
	"vn_40mm_m433_hedp_mag",
	"vn_40mm_m583_flare_w_mag",
	"vn_40mm_m651_cs_mag",
	"vn_40mm_m661_flare_g_mag",
	"vn_40mm_m662_flare_r_mag",
	"vn_40mm_m680_smoke_w_mag",
	"vn_40mm_m682_smoke_r_mag",
	"vn_40mm_m695_flare_y_mag",
	"vn_40mm_m715_smoke_g_mag",
	"vn_40mm_m716_smoke_y_mag",
	"vn_40mm_m717_smoke_p_mag",
	//type 56/AK
	"vn_ak_01",
	"vnx_type56_xm148",
	"vn_type56",
	"vn_b_type56",
	"vn_type56_mag",
	"vn_type56_t_mag",
	//m77e
	"vnx_m77e",
	"vnx_m77e_shorty",
	"vnx_m77e_fl_mag",
	"vnx_m77e_buck_mag",
	"vnx_m77e_so_mag",
	//m50
	"vnx_m50_smg",	
	"vnx_m50_smg_mag",
	"vnx_m50_smg_t_mag",
	//m12
	"vnx_m12_smg",
	
	"vnx_m12_smg_20_mag",
	"vnx_m12_smg_20_t_mag",
	"vnx_m12_smg_32_mag",
	"vnx_m12_smg_32_t_mag",
	//m/45
	"vnx_m45_sf",
	
	"vn_m45",
	"vn_m45_camo",
	"vn_s_m45_camo",
	"vn_s_m45",
	"vn_m45_mag",
	"vn_m45_t_mag",
	//L1/L2/l4
	"vn_l4",
	"vn_l2a1_01",
	"vn_l1a1_xm148_camo",
	"vn_l1a1_xm148",
	"vn_l1a1_03_camo",
	"vn_l1a1_03",
	"vn_l1a1_02_gl",
	"vn_l1a1_02_camo",
	"vn_l1a1_02",
	"vn_l1a1_01_gl",
	"vn_l1a1_01_camo",
	"vn_l1a1_01",
	"vnx_l1a1_04_camo",
	"vnx_l1a1_04",
	//"vnx_l1a1_05_camo",
	//"vnx_l1a1_05",
	"vn_o_3x_l1a1",
	"vn_l1a1_10_mag",
	"vn_l1a1_10_t_mag",
	"vn_l1a1_20_mag",
	"vn_l1a1_20_t_mag",
	"vn_l1a1_30_mag",
	"vn_l1a1_30_t_mag",
	"vn_l1a1_30_02_mag",
	"vn_l1a1_30_02_t_mag"	
	];

// Pistols
cvo_arsenal_base append [
	"vn_izh54_p",
	"vn_izh54_so_mag",
	"vn_izh54_mag",
	"vn_m1895",
	"vn_m1895_mag",
	"vn_s_m1895",
	"vn_m1911",
	"vn_mx991_m1911",
	"vn_m1911_mag",
	"vn_m79_p",
	"vn_mk22",
	"vn_mk22_mag",
	"vn_s_mk22",
	"vn_m10",
	"vn_m10_mag",
	//browning hi-power 
	"vn_hp",
	"vn_hp_mag",
	"vn_s_hp",
	//welrod
	"vn_welrod",
	"vn_welrod_mag",
	//vz61 sidearm
	"vn_vz61_p",
	//type64
	//"vn_type64",
	//"vn_type64_mag",
	//tt33
	//"vn_tt33",
	//"vn_tt33_mag",
	//ppk
	"vn_ppk",
	"vn_ppk_mag",
	//pm
	"vn_pm",
	"vn_s_pm",
	"vn_pm_mag",
	"vn_fkb1_pm",
	//p38
	"vn_p38",
	"vn_p38_mag",
	"vn_s_ppk",
	//flashlight
	"vn_fkb1",
	"vn_fkb1_red",
	"vn_mx991",
	"vn_mx991_red",
	//melee weapons
	"vnx_m_ladle",
	//"vnx_m_spoon_01",
	//"vnx_m_spoon_02",
	//"vn_m_axe_01",
	//"vn_m_axe_fire",
	//"vn_b_melee_k98k",
	//"vn_m_bayo_carbine",
	//"vn_b_melee_m1903",
	"vn_m_bayo_m1897",
	//"vn_b_melee_m36",
	//"vn_m_bayo_m4956",
	"vn_m_bayo_m14",
	"vn_m_bayo_m16",
	//"vn_m_bolo_01",
	//"vn_m_fishing_rod_01",
	//"vn_m_hammer",
	"vn_m_fighting_knife_01",
	"vn_b_melee_m43_etool_01",
	"vn_m_m51_etool_01",
	"vn_m_machete_02",
	//"vn_m_machete_01",
	"vn_m_mk2_knife_01",
	"vn_m_shovel_01",
	"vn_m_typeivaxe_01",
	//"vn_m_wrench_01",
	//38 revolver
	"vn_p38s",
	"vn_m10_mag",
	//hd pistol
	"vn_hd",
	"vn_hd_mag",
	"vnx_hd_02",
	"vnx_hd_02_mag",
	//gyrojet pistol
	"vnx_gjet",
	"vnx_gjet_mag"
	];

// Handgrenades and Throwables
cvo_arsenal_base append   [
	"vn_molotov_grenade_mag",
	"vn_f1_grenade_mag",
	"vn_m14_early_grenade_mag",
	"vn_m34_grenade_mag",
	"vn_m61_grenade_mag",
	"vn_m67_grenade_mag",
	"vn_m7_grenade_mag",
	"vn_m18_green_mag",
	"vn_m18_purple_mag",
	"vn_m18_red_mag",
	"vn_m18_white_mag",
	"vn_m18_yellow_mag",
	"vn_satchelcharge_02_throw_mag",
	"vn_v40_grenade_mag",

	"ACE_HandFlare_Green",
	"ACE_HandFlare_Yellow",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",

	"Chemlight_yellow",
	"Chemlight_red",
	"Chemlight_blue",
	"Chemlight_green",
	"ACE_Chemlight_Orange",
	"ACE_Chemlight_White",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_UltraHiOrange"];

// Explosives
cvo_arsenal_base append [
	//flare launcher
	"vn_m127",
	"vn_m127_mag",
	"vn_m128_mag",
	"vn_m129_mag",
	//lock poppers
	//"tsp_breach_popper_mag",
	//"tsp_breach_popper_auto_mag",
	//m72
	"vn_m72",
	"vn_m72_mag"	
	];
// Rappelling kit
cvo_arsenal_base append [
	"AUR_Rappel_Rope_70",
	"AUR_Rappel_Rope_50",
	"AUR_Rappel_Rope_30",
	"AUR_Rappel_Rope_20",
	"AUR_Rappel_Rope_10",
	"AUR_Rappel_Gear"
	];

// CBRN KIT
cvo_arsenal_base append [
	];


// #####################################################
// ###### DEFINE ROLE KIT HERE - AVAILABLE FOR SPECIFIC ROLES
// #####################################################

// CUSTOM ROLES
// Formatting Template: [  "KEY/ROLENAME",	[  ["ARRAY OF CLASSNAMES"],{"Optional CODEBLOCK"}  ]  ]

// #####################################################
// ## HOW TO DEFINE A UNIT AS A SPECIFIC ROLE:
// ## UNIT INIT FIELD IN THE EDITOR:
// this setVariable ["CVO_A_Roles",["Officer"]];
// ## Further Notes: 
// -- "Medic" and "Engineer" are autoDetected based on ACE Skill Level  
// #####################################################


cvo_arsenal_roleKit = createHashMapFromArray [
	["Medic", [[
		//medic vests 
		"vn_b_vest_usarmy_07",
		"vn_b_vest_sog_02",
		//sog medic packs 
		"vn_b_pack_m5_01",
		"vn_b_pack_lw_07",
		"ACE_morphine",
		"ACE_painkillers",

		"ACE_quikclot", 
		"ACE_elasticBandage", 
		"ACE_adenosine", 
		"ACE_plasmaIV",
		"ACE_plasmaIV_500",
		"ACE_plasmaIV_250",
		"ACE_bloodIV",
		"ACE_bloodIV_500",
		"ACE_bloodIV_250",
		// "ACE_suture",
		"ACE_surgicalKit"
	],
	{}]],
	["Engineer", [[
		//demo vests 
		"vn_b_vest_sog_03",
		//sog mines
		"vn_mine_ammobox_range_mag",
		"vn_mine_limpet_01_mag",
		"vn_mine_m14_mag",
		"vn_mine_m15_mag",
		"vn_mine_tripwire_m16_02_mag",
		"vn_mine_tripwire_m16_04_mag",
		"vn_mine_m16_mag",
		"vn_mine_m18_fuze10_mag",
		"vn_mine_m18_range_mag",
		"vn_mine_m18_mag",
		"vn_mine_m18_x3_range_mag",
		"vn_mine_m18_x3_mag",
		"vn_mine_m18_wp_fuze10_mag",
		"vn_mine_m18_wp_range_mag",
		"vn_mine_m18_wp_mag",
		"vn_mine_tm57_mag",
		"vn_mine_satchel_remote_02_mag",
		"vn_mine_satchelcharge_02_mag",
		//ace defusal kit 
		"ACE_DefusalKit",
		//sog trap kit
		"vn_b_item_trapkit",
		//sog demo pack 
		"vn_b_pack_trp_03",
		"vn_b_pack_05",
		"vn_b_pack_05_02",
		// Explosives
		//"tsp_breach_popper_mag",
		"tsp_breach_popper_auto_mag",
		//"tsp_breach_silhouette_mag",
		//"tsp_breach_stick_mag",
		"ACE_Clacker",
		"DemoCharge_Remote_Mag",	"ACE_DemoCharge_Remote_Mag_Throwable",
		"SatchelCharge_Remote_Mag",	"ACE_SatchelCharge_Remote_Mag_Throwable"
		], 
		{}]],

	["RTO", [[
		//sog rto vest
		"vn_b_vest_sog_06",
		//sog rto packs 
		"vn_b_pack_trp_04",
		"vn_b_pack_03",
		//"vn_b_pack_03_02",
		"vn_b_pack_trp_04_02",
		"vn_b_pack_lw_06",
		"vn_b_pack_prc77_01",

		//ACRE GroundSpike and Mast
		"ACRE_VHF30108SPIKE", 
		"ACRE_VHF30108", 
		"ACRE_VHF30108MAST",
		"ACRE_PRC343",
		//LR radio
		"ACRE_PRC77"],
	{}]],
	["Officer", [
		[
		//sog officer vests 
		"vn_b_vest_sog_01",
		"vn_b_vest_usarmy_09",
		//SOG Berets 
		"vn_b_beret_01_01",
		"ACE_DAGR",
		//ACRE GroundSpike and Mast
		"ACRE_VHF30108SPIKE", 
		"ACRE_VHF30108", 
		"ACRE_VHF30108MAST",
		"ACRE_PRC343"
		],
		{}]]
];

// #####################################################
// ###### DEFINE PLAYER KIT HERE - Based on STEAM64 ID
// #####################################################

// Formatting Template: [  "STEAM64",	["PlayerName", "["ARRAY OF CLASSNAMES"],{"Optional CODEBLOCK"}  ]  ]


cvo_arsenal_playerKit = createHashMapFromArray [
	["_SP_PLAYER_", 		["Editor Debug", 	["ACE_Banana"],		{systemChat "CVO_A_Playerkit test Successful - ACE_Sandbag_empty Given"; 	["ACE_Sandbag_empty"]}		]	],	
	["76561197970306509", 	["Zorn", 			["G_Spectacles_Tinted", "G_Balaclava_blk", "H_Beret_blk", "B_LegStrapBag_black_F", "WSLV_Brown_gn_black_Camo", "ACE_SpraypaintBlack", "CVO_Kitbag_blk", "CVO_LegStrapBag_black"],	{[]}	]],
	["76561198090236234", 	["Recon", 			[],	{[]} ]],
	["76561198147307775", 	["Clone", 			[],	{[]} ]] 	
];


////////////////////////////////////////////
///////////// Default Loadouts /////////////
////////////////////////////////////////////


[
	"Rifleman - Empty",
	[[[],[],[],["vn_b_uniform_sog_02_04",[["ACE_EarPlugs",1],["ACE_fieldDressing",20],["ACE_bodyBag",1],["ACE_splint",1],["ACE_tourniquet",2],["ACE_personalAidKit",1],["ACE_MapTools",1],["ACE_PlottingBoard",1],["ACE_painkillers",2,10],["acex_intelitems_notepad",1,1]]],["vn_b_vest_sog_01",[["vn_m18_white_mag",2,1],["vn_v40_grenade_mag",4,3],["vn_m34_grenade_mag",1,1]]],["vn_b_pack_01",[["ACE_EntrenchingTool",1],["ACE_Canteen",2],["vn_prop_food_pir_01_03",2,100]]],"vn_b_boonie_02_01","vn_b_aviator",["vn_m19_binocs_grn","","","",[],[],""],["","","","vn_b_item_compass_sog","vn_b_item_watch",""]],[]]
] call ace_arsenal_fnc_addDefaultLoadout;

[
	"Rifleman - Basic",
	[[["vn_xm177","","","",["vn_m16_20_t_mag",18],[],""],[],["vn_m1911","","","",["vn_m1911_mag",7],[],""],["vn_b_uniform_sog_02_04",[["ACE_EarPlugs",1],["ACE_fieldDressing",20],["ACE_bodyBag",1],["ACE_splint",1],["ACE_tourniquet",2],["ACE_personalAidKit",1],["ACE_MapTools",1],["ACE_PlottingBoard",1],["ACE_painkillers",2,10],["acex_intelitems_notepad",1,1]]],["vn_b_vest_sog_01",[["vn_m16_20_t_mag",10,18],["vn_m1911_mag",2,7],["vn_m18_white_mag",2,1],["vn_v40_grenade_mag",4,3],["vn_m34_grenade_mag",1,1]]],["vn_b_pack_01",[["ACE_EntrenchingTool",1],["ACE_Canteen",2],["vn_prop_food_pir_01_03",2,100]]],"vn_b_boonie_02_01","vn_b_aviator",["vn_m19_binocs_grn","","","",[],[],""],["","","","vn_b_item_compass_sog","vn_b_item_watch",""]],[]]
] call ace_arsenal_fnc_addDefaultLoadout;

diag_log ("[CVO] [Arsenal_Define] - completed");


