DATA MANAGEMENT TEMPLATE

capture log close
log using $stata/logarchive/{LOG_NAME}.log

OR

**if using a master log file also
capture log close
log using {LOG_NAME}, name(NICKNAME) replace text

***{COLLABORATION GROUP} - {PROJECT TITLE} - (PURPOSE OF DO-FILE}***

// 	project:	
//  task:     	reminders and code to remember for data management and cleaning best practices
//  program:  	data_management_template.do
//	log:      {LOG_NAME ABOVE}.log
//  data:     {DATA SOURCE}, available: http://www.{WEBSITE}

//  github:   	stata_templates_ado
//  OSF:

//  author:   	Molly King
//	collabs:  {COLLABORATOR NAMES, if any}

display "$S_DATE  $S_TIME"



// #0 Program setup
version 13 // keeps program consistent for future replications
set linesize 80
clear all
set more off

cd $cleandata

***--------------------------***

** NAMING VARIABLES **
*Checklist: (p. 147-150)
// plan based on how names will appear when sorted, be searchable
// use names at most 10-12 characters long
// add list of abbreviations in documentation
// use capitalization meaningfully:
    //B = binary; M = missing; L = label used by multiple vars; S = source; V = version

** CREATING VARIABLES **
// creates new var but does not transfer labels or other characteristics
generate VAR = OLD_VAR

// creates var that is exact duplicate, including variable and value labels
clonevar VAR = OLD_VAR  // p. 143-144 WF book

// Template for variable creation
// replace VAR with actual variable name
generate VAR =
  label var VAR  " "
  label val VAR
  notes VAR: {SHORT NOTE VARIABLE MEANING} \ {NAME OF THIS FILE}.do mmk 201X-XX-XX
    // This includes a note in the dataset about the creation of this variable

** VARIABLE ORDER **
// Changing the order of variables - P. 155 WF book
aorder [varlist]  // alphebetize
order varlist     // move vars to beginning of list
move var-to-move target-var // moves var-to-move in front of target-var

***--------------------------***
** LABELS AND NOTES, SAVING DATASETS **
// Use these before saving any dataset
label data "{SHORT DATA FILE NAME} \ 201X-XX-XX}"
notes: {NAME OF THIS DATA FILE}.dta \ SHORT NOTE OF DATA FILE CONTENT \ {NAME OF DO FILE THAT CREATED}.do mmk 201X-XX-XX
compress
datasignature set  // p. 139-141 WF book
save {DATA}, replace

***--------------------------***
** CODEBOOK / DESCRIBING DATASETS **
// p. 152-155 WF book

// Creating a codebook
codebook [varlist] [if] [in], compact                      // list var names, labels, some descriptive stats
describe [varlist] [if] [in] [, simple fullnames numbers]  // list var names, labels, characteristics
describe, simple                                           // list all vars
nmlab                                                      // list var names, labels
tabulate


log close {NICKNAME}
exit
