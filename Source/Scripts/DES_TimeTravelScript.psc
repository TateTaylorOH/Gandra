
Scriptname DES_TimeTravelScript extends ActiveMagicEffect  

GlobalVariable Property Time  Auto
Actor Property Asyala auto
Actor Property PlayerRef auto
Sound Property Effect auto

EVENT onEffectStart(Actor akTarget, Actor akCaster)
	IF Time.Value == 0
		int instanceID = Effect.Play(PlayerRef)
		Sound.SetInstanceVolume(instanceID, 1.0)
		akCaster.moveTo(akCaster, afZOffset = 2944.0782)
		Asyala.moveTo(Asyala, afZOffset = 2944.0782)
		Time.SetValue(1)
	ENDIF
ENDEVENT
