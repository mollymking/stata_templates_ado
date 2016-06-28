capture log close
***{COLLABORATION GROUP} - {PROJECT TITLE} - (PURPOSE OF DO-FILE}***
/*
before beginning any log:
  change everything {IN BRACKETS} or CAPS
  add any folders necessary to save appropriate documents
  change PROJECT_FOLER --> name of project folder
  change all other caps for consistent file system-style
*/

global stata      "~/Documents/SocResearch/PROJECT_FOLDER/stata"
global rawdata    "~/Documents/SocResearch/PROJECT_FOLDER/stata/rawdata"
global cleandata  "~/Documents/SocResearch/PROJECT_FOLDER/stata/cleandata"
global logarchive "~/Documents/SocResearch/PROJECT_FOLDER/stata/logarchive"
global doarchive  "~/Documents/SocResearch/PROJECT_FOLDER/stata/doarchive"

log using $stata/logarchive/{LOG_NAME}.log
//  project:  {PROJECT TITLE}
//  task:     {BRIEF EXPLANATION}
//  program:  {NAME OF THIS FILE}.do
//	log:      {LOG_NAME ABOVE}.log
//  data:     {DATA SOURCE}, available: http://www.{WEBSITE}
//  github:   {REPOSITORY}
//  OSF:      {REPOSITORY}
//  author:   Molly King
//	collabs:  {COLLABORATOR NAMES, if any}

display "$S_DATE  $S_TIME"
// #0 Program setup
version 13 // keeps program consistent for future replications
set linesize 80
clear all
macro drop _all
set more offset virtual onset mem 1700Mcd $cleandata

***--------------------------***

//  #1)
//  (DESCRIBE TASK 1)

* LOAD DATA *
// look at data information
use {DATASET NAME}, clear
notes _dta // info about what .do file created, date created, and .dta file content
datasignature confirm // P. 141-142 WF book
  // this indicates whether data dimensions have been changed since data signature last saved



***--------------------------***
//  #2)
//  (DESCRIBE TASK 2)

* LOAD DATA *
// look at data information
use {DATASET NAME}, clear
notes _dta // info about what .do file created, date created, and .dta file content
datasignature confirm // this indicates whether data dimensions have been changed since data signature last saved




log close
exit
