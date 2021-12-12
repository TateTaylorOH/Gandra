Scriptname DES_DispelWar extends ObjectReference  

actor property PlayerRef auto
magiceffect  property Blessing auto
ObjectReference property symbol auto
sound  Property DispelSFX Auto
sound  Property FailSFX Auto

Event OnActivate(ObjectReference akActionRef)
	If PlayerRef.HasMagicEffect(Blessing)
		DispelSFX.play(self)
		symbol.disable(true)
		Disable(true)
	Else
		FailSFX.play(self)
		Debug.Notification("The ward doesn't react to your touch.")
	endif
endevent