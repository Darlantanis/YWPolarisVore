//TFF 5/8/19 - minor refactoring of this thing from 09_misc.dm to call this for preferences.
datum/preferences
	var/show_in_directory = 1	//TFF 5/8/19 - show in Character Directory
	var/sensorpref = 5			//TFF 5/8/19 - set character's suit sensor level
	var/wingdings = 1 //YW Add

//Why weren't these in game toggles already?
/client/verb/toggle_eating_noises()
	set name = "Eating Noises"
	set category = "Preferences"
	set desc = "Toggles Vore Eating noises."

	var/pref_path = /datum/client_preference/eating_noises

	toggle_preference(pref_path)

	to_chat(src, "You will [ (is_preference_enabled(pref_path)) ? "now" : "no longer"] hear eating related vore noises.")

	SScharacter_setup.queue_preferences_save(prefs)

	feedback_add_details("admin_verb","TEatNoise") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!


/client/verb/toggle_digestion_noises()
	set name = "Digestion Noises"
	set category = "Preferences"
	set desc = "Toggles Vore Digestion noises."

	var/pref_path = /datum/client_preference/digestion_noises

	toggle_preference(pref_path)

	to_chat(src, "You will [ (is_preference_enabled(pref_path)) ? "now" : "no longer"] hear digestion related vore noises.")

	SScharacter_setup.queue_preferences_save(prefs)

	feedback_add_details("admin_verb","TDigestNoise") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!


/client/verb/toggle_emote_noises()
	set name = "Emote Noises"
	set category = "Preferences"
	set desc = "Toggles emote noises."

	var/pref_path = /datum/client_preference/emote_noises

	toggle_preference(pref_path)

	to_chat(src, "You will [ (is_preference_enabled(pref_path)) ? "now" : "no longer"] hear emote-related noises.")

	SScharacter_setup.queue_preferences_save(prefs)

	feedback_add_details("admin_verb","TEmoteNoise") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!
