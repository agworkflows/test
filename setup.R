## add a rootdir for each computer that is used
if (system('hostname', TRUE) == "LAPTOP-IVSPBGCA") { 
	rootdir <- "d:/agwise"
} else if (system('hostname', TRUE) == "XYZ") { 
	rootdir <- "c:/workspace/agw"
} else { 
	rootdir <- "."
}

project <- "test"

#make sure required packages are installed
wow::install_pkgs("geodata")

#must have this line 
prj_path <- file.path(rootdir, project)
