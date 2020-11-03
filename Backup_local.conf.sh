  1 #!/bin/bash
  2 #
  3 ## creates weekly backup of selected directories
  4 #
  5 
  6 ## variables
  7 LOG_LOC="/var/log/mybackup.log"
  8 ##
  9 
 10 function check_dir_local{
 11         #check for dir list file
 12         if [ ! -s "backup_dirs.conf" ]
 13         then
 14                echo "Please create a list of directories to backup by creating a backup_dir.conf file in the root directory"
 15               exit 1
 16      fi
 17 }
 18 
 19 function check_backup_local {
 20         if [ ! -s "/backup_local.conf" ]
 21         then
 22                 echo "Please specify the full path of where to send the backup to, by creating
 23 the backup_local.conf file in the root directory"
 24                  exit 1
 25         fi
 26 }
 27 
 28 function check_schedule {
 29         echo "placeholder"
 30 }
 31 
 32 function perform_backup {
 33         echo "placeholder"
 34 }
