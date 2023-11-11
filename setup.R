
wow_parameters <- function(...) {

	## add a rootdir for each computer that is used
	if (system('hostname', TRUE) == "LAPTOP-IVSPBGCA") { 
		rootdir <- "d:/agwise"
	} else if (system('hostname', TRUE) == "XYZ") { 
		rootdir <- "c:/workspace/agw"
		geo_path <- "d:/data/spatial"
	} else { 
		rootdir <- "."
	}
	project <- "test"

	#make sure required packages are installed
	wow::install_pkgs("geodata")

	#must have this line 
	prj_path <- file.path(rootdir, project)
	dir.create(prj_path, FALSE, FALSE)
	
	if (!exists("geo_path")) {
		geo_path <- file.path(prj_path, "data/spatial") 
	}
	dir.create(geo_path, FALSE, TRUE)
	
	# you can add more parameters, but here only returning prj_path
	out <- list(
		prj_path = prj_path,
		geo_path = geo_path
	)
	out
}
