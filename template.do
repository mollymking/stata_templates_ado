***(Collaboration Group) - (Project Title) - (Purpose of Do File)****before beginning any log, change below directories, change "log using" line, and add any folders necessary to save appropriate documents*change PROJECT_FOLER --> name of project folder*change all other caps (except STATA) for consistent file system-styleglobal stata "/Users/mollymking/Documents/SocResearch/PROJECT_FOLDER/stata"global rawdata "/Users/mollymking/Documents/SocResearch/PROJECT_FOLDER/stata/rawdata"global cleandata "~/Documents/SocResearch/PROJECT_FOLDER/stata/cleandata"global logarchive "~/Documents/SocResearch/PROJECT_FOLDER/stata/logarchive"global doarchive "~/Documents/SocResearch/PROJECT_FOLDER/stata/doarchive"capture log closelog using $stata/logarchive/TASK.log//  project:	(PROJECT TITLE)//  task:		(BRIEF EXPLANATION)//  program:    (NAME OF THIS FILE).do//	log:		(LOG NAME ABOVE).log//  data:		(DATA SOURCE), available: http://www.(WEBSITE)//  github://  OSF://  author:     Molly King//	collabs:	(COLLABORATOR NAMES, if any)//  Stata version: 13.Xdisplay "$S_DATE  $S_TIME"version 10set linesize 80clear allset more offset virtual onset mem 1700Mcd $cleandata*-------------*