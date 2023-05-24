md5binfile=$EZDIR_HOME/bin
md5libfile=$EZDIR_HOME/lib
md5cfgfile=$EZDIR_HOME/cfg

destfile=$EZDIR_HOME//audit

cd $destfile

#md5sum $md5binfile/*>databin.md5
#md5sum $md5libfile/*>datalib.md5
sha256sum $md5binfile/*>databin.md5
sha256sum $md5libfile/*>datalib.md5
#find $md5cfgfile -type f -exec md5sum '{}' \; > datacfg.md5
find $md5cfgfile -type f -exec sha256sum '{}' \; > datacfg.md5
