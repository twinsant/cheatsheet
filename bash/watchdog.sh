# Check a website health, email to admin if it's not available
# */5 * * * * bash /path/to/watchdog.sh
SITE="twinsant.com"
CODE=`curl -s -I $SITE|awk 'NR==1'|awk 'print $2'`
if [ "$CODE" != "200" ]; then
    #echo $SITE down! | /usr/sbin/sendmail me@twinsant.com
fi
