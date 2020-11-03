  3 ## creates weekly backup of selected directories
  4 #
  5 
  6 ## variables
  7 LOG_LOC="/var/log/mybackup.log"
  8 ##
  9 
 10 ##functions
 11 function check_dir_local{ 
 12         #check for dir list file
 13         if [ ! -s "backup_dirs.conf" ]
 14         then   
 15                echo "Please create a list of directories to backup by creating a backup_dir.conf file in the root directory"
 16               exit 1
 17      fi
 18 }
 19 
 20 function check_backup_local { 
 21         if [ ! -s "/backup_local.conf" ]
 22         then    
 23                 echo "Please specify the full path of where to send the backup to, by creating
 24 the backup_local.conf file in the root directory"
 25                  exit 1
 26         fi
 27 }
 28 
 29 function check_schedule {
 30        #check to see if the script exists in weekly cron directory
 31        if [ ! -s "/etc/cron.weekly/make_backup" ]
 32        then      
 33                  #copy script to cron.weekly dir 
 34                  sudo cp make_backup.sh /etc/cron.weekly/make_backup
 35                  echo "The backup has been set to run weekly" 
 36                  echo "The exact run time is in the /etc/crontab file."
 37                  exit 1
 38        
 39        
 40        fi
 41 }
 42 
 43 function perform_backup { 
 44         #get backup location
 45         back_path=$(cat /backup_local.conf)
 46         echo "starting backup. . ." > $LOG_LOC 
 47         #for each dir, archive and compress to backup location
 48         while read dir_path
 49         do
 50         
 51         done < /backup_dirs.conf
 52         
 53         echo "backup complete at:" >> $LOG_LOC
 54         date >> $LOg_LOC
 55 ## end of functions
 56 }

