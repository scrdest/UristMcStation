/obj/item/weapon/gun/projectile/revolver/oldwest
	urist_only = 1
	name = "western revolver"
	desc = "A XIXth-century revolver. Uses .45 Colt ammo"
	icon = 'icons\urist\events\oldwest'
	icon_state = "revolver"
	item_state = "WWrevolver"
	caliber = ".45 Colt"
	origin_tech = "combat=2;materials=2"
	handle_casings = CYCLE_CASINGS
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/a45colt
	slot_flags = SLOT_BELT

/obj/item/weapon/gun/projectile/revolver/oldwest/peacemaker
	name = "\improper Peacemaker"
	desc = "'The Gun That Won the West', Colt Single Action Army."
	max_shells = 6

/obj/item/weapon/gun/projectile/revolver/oldwest/coltnavy
	name = "\improper Colt 1851 Navy"
	desc = "A relatively light caplock revolver."
	max_shells = 6
	icon_state = "coltnavy"

/obj/item/weapon/gun/projectile/revolver/oldwest/lemat
	name = "\improper LeMat"
	desc = "A revolver boasting a nine-bullet chamber and the ability to fire buckshot. This one, however, fires .45 Colt only for some reason."
	max_shells = 9
	icon_state = "lemat"

/obj/item/weapon/gun/projectile/rifle/boltaction/oldwest
	name = "western rifle"
	icon = 'icons\urist\events\oldwest'
	icon_state = "winchester"
	item_state = "WWrevolver"
	caliber = "4440"
	ammo_type = "/obj/item/ammo_casing/a4440"
	magazine_type = /obj/item/ammo_magazine/a4440
	slot_flags = SLOT_BACK
	load_method = SINGLE_CASING|SPEEDLOADER

/obj/item/weapon/gun/projectile/rifle/boltaction/oldwest/winchester
	name = "\improper Winchester M1866"
	desc = "A repeating rifle, instantly recognizable by the lever-action and gunmetal receiver."
	icon = 'icons\urist\events\oldwest'
	icon_state = "winchester"
	item_state = "winchester"
	caliber = "4440"
	ammo_type = "/obj/item/ammo_casing/a4440"
	magazine_type = /obj/item/ammo_magazine/a4440
	load_method = SINGLE_CASING



/*/datum/universal_state/oldwest
	name = "Old West"
	desc = "An anomaly shunts the station to a parallel timeline. Cowboys! In Space!"

/datum/universal_state/oldwest/OnEnter()
	set background = 1
	AreaSet()
	OverlayAndAmbientSet()

/datum/universal_state/hell/proc/AreaSet()
	for(var/area/A in all_areas)
		if(!istype(A,/area) || istype(A, /area/space))
			continue

		A.updateicon()

/datum/universal_state/hell/OverlayAndAmbientSet()
	spawn(0)
		for(var/atom/movable/lighting_overlay/L in world)
			L.update_lumcount(1, 0, 0)

		for(var/turf/space/T in turfs)
			OnTurfChange(T)*/

