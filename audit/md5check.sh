LOGFILE=$EZDIR_HOME//audit/ezaudit.log
FOLDER=`date --date="1 week ago" +%d%m%y`

(
echo "$(date "+%m%d%Y %T") : "

if test -f databin.md5; then

	if sha256sum -c --status databin.md5; then
	    >ezbincksumresult.md5
	    echo "$(date "+%m%d%Y %T") : bin matched"
	else
	    echo "$(date "+%m%d%Y %T") : bin not matched"
	    sha256sum -c --quiet databin.md5>ezbincksumresult.md5
	fi
else
echo bin ckdum file not found
fi

if test -f datalib.md5; then

        if sha256sum -c --status datalib.md5; then
	    >ezlibcksumresult.md5
            echo "$(date "+%m%d%Y %T") : lib matched"
        else
            echo "$(date "+%m%d%Y %T") : lib not matched"
	    sha256sum -c --quiet datalib.md5>ezlibcksumresult.md5
        fi
else
echo lib cksum file not found
fi

if test -f datacfg.md5; then

        if sha256sum -c --status datacfg.md5; then
            >ezcfgcksumresult.md5
            echo "$(date "+%m%d%Y %T") : cfg matched"
        else
            echo "$(date "+%m%d%Y %T") : cfg not matched"
            sha256sum -c --quiet datacfg.md5>ezcfgcksumresult.md5
        fi
else
echo cfg cksum file not found
fi


echo "----------------------------------------------"
) 2>&1 >> $LOGFILE

