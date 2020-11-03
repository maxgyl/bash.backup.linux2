##########################################################################
#this line should be added to crontab and makes the backup schedueld as: #
#Your cron job will be run at: (5 times displayed)                       #
#2020-11-05 00:00:00 UTC                                                 #
#2020-11-05 00:30:00 UTC                                                 # 
#2020-11-05 12:00:00 UTC                                                 #
#2020-11-05 12:30:00 UTC                                                 # 
#2020-11-07 00:00:00 UTC                                                 #
# link to crontab scheduel generator : https://crontab-generator.org/    #
##########################################################################
*/30 */12 */5 * 0,6 /usr/bin/php /home/username/public_html/cron.php >/dev/null 2>&1
