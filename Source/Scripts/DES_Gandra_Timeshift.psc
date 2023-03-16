Scriptname DES_Gandra_Timeshift extends activemagiceffect  

globalvariable property DES_Gandra_PlayerInPresent auto
actor property PlayerRef auto
sound property DES_Gandra_TimeshiftTOPresentSound auto
sound property DES_Gandra_TimeshiftTOPastSound auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	IF DES_Gandra_PlayerInPresent.GetValue() == 1
		PlayerRef.moveTo(PlayerRef, afZOffset = -4000.0000)
		DES_Gandra_PlayerInPresent.SetValue(0)
		DES_Gandra_TimeshiftTOPastSound.Play(PlayerRef)
		return
	ELSE
		PlayerRef.moveTo(PlayerRef, afZOffset = 4000.0000)
		DES_Gandra_PlayerInPresent.SetValue(1)
		DES_Gandra_TimeshiftTOPresentSound.Play(PlayerRef)
	ENDIF
endEvent