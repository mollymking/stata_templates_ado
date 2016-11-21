DATA ANALYSIS TEMPLATE

capture log close
log using $stata/logarchive/{LOG_NAME}.log

OR

**if using a master log file also
capture log close
log using {LOG_NAME}, name(NICKNAME) replace text

***{COLLABORATION GROUP} - {PROJECT TITLE} - (PURPOSE OF DO-FILE}***


//  task:     reminders and code to remember for data analysis best practices
//  program:  data_analysis_template.do

//  github:   stata_templates_ado
//  OSF:

//  author:   Molly King

***--------------------------***

** FINDING VARIABLES **
lookfor {string} // finds var with string in name or label






log close {NICKNAME}
exit
