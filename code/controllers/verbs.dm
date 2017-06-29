//TODO: rewrite and standardise all controller datums to the datum/controller type
//TODO: allow all controllers to be deleted for clean restarts (see WIP master controller stuff) - MC done - lighting done

/client/proc/debug_antagonist_template(antag_type as null|anything in all_antag_types())
	set category = "Debug"
	set name = "Debug Antagonist"
	set desc = "Debug an antagonist template."

	if (!antag_type)
		return

	var/datum/antagonist/antag = all_antag_types()[antag_type]
	if(antag)
		usr.client.debug_variables(antag)
		message_admins("Admin [key_name_admin(usr)] is debugging the [antag.role_text] template.")

/client/proc/debug_controller(controller as null|anything in list("Master","Ticker","Ticker Process","Air","Jobs","Sun","Radio","Supply","Shuttles","Evacuation","Configuration","pAI", "Cameras", "Transfer Controller", "Gas Data","Event","Plants","Alarm","Nano","Chemistry","Wireless","Observation","Alt Appearance Manager","Datacore","Military Branches", "Weather"))
	set category = "Debug"
	set name = "Debug Controller"
	set desc = "Debug the various periodic loop controllers for the game (be careful!)"

	if(!holder || !controller)
		return

	switch(controller)
		if("Master")
			debug_variables(master_controller)
			feedback_add_details("admin_verb","DMC")
		if("Ticker")
			debug_variables(ticker)
			feedback_add_details("admin_verb","DTicker")
		if("Air")
			debug_variables(air_master)
			feedback_add_details("admin_verb","DAir")
		if("Jobs")
			debug_variables(job_master)
			feedback_add_details("admin_verb","DJobs")
		if("Sun")
			debug_variables(sun)
			feedback_add_details("admin_verb","DSun")
		if("Radio")
			debug_variables(radio_controller)
			feedback_add_details("admin_verb","DRadio")
		if("Supply")
			debug_variables(supply_controller)
			feedback_add_details("admin_verb","DSupply")
		if("Shuttles")
			debug_variables(shuttle_controller)
			feedback_add_details("admin_verb","DShuttles")
		if("Evacuation")
			debug_variables(evacuation_controller)
			feedback_add_details("admin_verb","DEmergency")
		if("Configuration")
			debug_variables(config)
			feedback_add_details("admin_verb","DConf")
		if("pAI")
			debug_variables(paiController)
			feedback_add_details("admin_verb","DpAI")
		if("Cameras")
			debug_variables(cameranet)
			feedback_add_details("admin_verb","DCameras")
		if("Transfer Controller")
			debug_variables(transfer_controller)
			feedback_add_details("admin_verb","DAutovoter")
		if("Gas Data")
			debug_variables(gas_data)
			feedback_add_details("admin_verb","DGasdata")
		if("Event")
			debug_variables(event_manager)
			feedback_add_details("admin_verb", "DEvent")
		if("Plants")
			debug_variables(plant_controller)
			feedback_add_details("admin_verb", "DPlants")
		if("Nano")
			debug_variables(nanomanager)
			feedback_add_details("admin_verb", "DNano")
		if("Observation")
			debug_variables(all_observable_events)
			feedback_add_details("admin_verb", "DObservation")
		if("Alt Appearance Manager")
			debug_variables(all_observable_events)
			feedback_add_details("admin_verb", "DAltAppearanceManager")
		if("Datacore")
			debug_variables(data_core)
			feedback_add_details("admin_verb", "DDatacore")
		if("Military Branches")
			debug_variables(mil_branches)
			feedback_add_details("admin_verb", "DMilBranches")
		if("Weather")
			debug_variables(weatherProcess)
			feedback_add_details("admin_verb", "DWeather")
	message_admins("Admin [key_name_admin(usr)] is debugging the [controller] controller.")
	return
