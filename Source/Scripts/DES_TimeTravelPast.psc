Scriptname DES_TimeTravelPast extends ActiveMagicEffect  

GlobalVariable Property Time  Auto
Actor Property PlayerRef auto
Sound Property Effect auto

EVENT onEffectStart(Actor akTarget, Actor akCaster)
	IF Time.Value == 1
		akCaster.moveTo(akCaster, afZOffset = -2944.0782)
		int instanceID = Effect.Play(PlayerRef)
		Sound.SetInstanceVolume(instanceID, 1.0)
		Time.SetValue(0)
	ENDIF
ENDEVENT