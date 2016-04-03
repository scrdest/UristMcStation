/obj/item/weapon/gun/projectile/revolver/oldwest
	urist_only = 1
	name = "western revolver"
	desc = "A XIXth-century revolver. Uses .357 ammo"
	icon_state = "revolver"
	item_state = "revolver"
	caliber = ".45 Colt"
	origin_tech = "combat=2;materials=2"
	handle_casings = CYCLE_CASINGS
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/a45colt

/obj/item/weapon/gun/projectile/revolver/oldwest/peacemaker
	name = "\improper Peacemaker"
	desc = "'The Gun That Won the West', Colt Single Action Army."
	max_shells = 6

/obj/item/weapon/gun/projectile/rifle/boltaction/oldwest
	name = "western rifle"
	caliber = "7.62mm"
	ammo_type = "/obj/item/ammo_casing/a762mm"
	magazine_type = /obj/item/ammo_magazine/a762mm
	slot_flags = SLOT_BACK
	load_method = SINGLE_CASING|SPEEDLOADER




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

