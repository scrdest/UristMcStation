/*										*****New space to put all UristMcStation Weapons*****

Please keep it tidy, by which I mean put comments describing the item before the entry. Icons go to 'icons/urist/items/uristweapons.dmi' -Glloyd */


//Welder machete, icons by ShoesandHats, object by Cozarctan

/obj/item/weapon/material/sword/machete
	item_icons = DEF_URIST_INHANDS
	name = "machete"
	desc = "a large blade beloved by sugar farmers and mass murderers"
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "machete"
	item_state = "machete"
	sharp = 1
	flags = CONDUCT
	slot_flags = SLOT_BELT | SLOT_BACK
	force_divisor = 0.34 // 20-ish when wielded with hardness 60 (steel), same as before
	thrown_force_divisor = 0.5 // 10 when thrown with weight 20 (steel)
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("cleaved", "slashed", "sliced", "torn", "ripped", "diced", "cut")

	/*suicide_act(mob/user)
		viewers(user) << "<span class='danger'>[user] is slitting \his stomach open with the [src.name]! It looks like \he's trying to commit suicide.</span>"
		return (BRUTELOSS)*/

//dual saber proc

/obj/item/weapon/melee/energy/sword/attackby(obj/item/weapon/W, mob/living/user)
	..()
	if(istype(W, /obj/item/weapon/melee/energy/sword))
		if(W == src)
			user << "<span class='notice'>You try to attach the end of the energy sword to... itself. You're not very smart, are you?</span>"
			if(ishuman(user))
				user.adjustBrainLoss(10)
		else
			user << "<span class='notice'>You attach the ends of the two energy swords, making a single double-bladed weapon! You're cool.</span>"
			new /obj/item/weapon/material/twohanded/dualsaber(user.loc)
			user.remove_from_mob(W)
			user.remove_from_mob(src)
			qdel(W)
			qdel(src)

//misc melee weapons

/obj/item/weapon/material/knife/hook
	name = "meat hook"
	desc = "A sharp, metal hook what sticks into things."
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "hook_knife"
	item_state = "hook_knife"

/obj/item/weapon/material/sword/urist
	icon = 'icons/urist/items/uristweapons.dmi'

/obj/item/weapon/material/sword/urist/basic
	name = "sword"
	icon_state = "longsword"

/obj/item/weapon/material/sword/urist/gladius
	name = "gladius"
	desc = "Are you not entertained!?"
	icon_state = "gladius"

/obj/item/weapon/material/sword/urist/khopesh
	name = "khopesh"
	icon_state = "khopesh"
	item_state = "katana"

/obj/item/weapon/material/sword/urist/sabre
	name = "sabre"
	icon_state = "sabre"
	item_state = "katana"

/obj/item/weapon/material/sword/urist/dao
	name = "dao"
	icon_state = "dao"
	item_state = "katana"

/obj/item/weapon/material/sword/urist/rapier
	name = "rapier"
	desc = "En guarde!"
	icon_state = "rapier"
	item_state = "katana"

/obj/item/weapon/material/sword/urist/trench
	name = "trench knife"
	icon_state = "trench"
	item_state = "katana"

//bow and arrow shit

/obj/item/weapon/arrow/improv
	name = "improvised arrow"
	desc = "It's a shitty improvised arrow. It has a wooden shaft and a makeshift glass arrowhead."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "improvarrow"
	item_state = "bolt"
	throwforce = 7
	w_class = 3.0
	sharp = 1
	edge = 0
	lock_picking_level = 1

/obj/item/weapon/arrow/woodarrow
	name = "arrow"
	desc = "It's a regular arrow, wooden shaft, metal arrowhead. You get the deal."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "arrow"
	item_state = "bolt"
	throwforce = 8
	w_class = 3.0
	sharp = 1
	edge = 0
	lock_picking_level = 2

///obj/item/weapon/gun/launcher/crossbow/bow //gonna mess with this