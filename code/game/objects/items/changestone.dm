/obj/item/changestone
	name = "An uncut ruby"
	desc = "The ruby shines and catches the light, despite being uncut"
	icon = 'icons/obj/artifacts.dmi'
	icon_state = "changerock"

/obj/item/changestone/attack_hand(var/mob/user as mob)
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		if(!H.gloves)
			if(H.gender == FEMALE)
				H.change_gender(MALE)
			else
				H.change_gender(FEMALE)
			H.dna.ready_dna(H)
			H.update_body()
	..()






