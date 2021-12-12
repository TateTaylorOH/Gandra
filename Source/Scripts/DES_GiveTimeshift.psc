Scriptname DES_GiveTimeshift extends alias

SPELL PROPERTY Timeshift AUTO

EVENT ONEQUIPPED(ACTOR akActor)

	; //if we're the player
	if(akActor == game.getPlayer())
		game.getPlayer().addSpell(Timeshift)
	endif

ENDEVENT

EVENT ONUNEQUIPPED(ACTOR akActor)

	; //if we're the player
	if(akActor == game.getPlayer())
		game.getPlayer().removeSpell(Timeshift)
	endif

ENDEVENT