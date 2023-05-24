ls SOURCE*.* > DEST.dat
awk '{print"cp",$1,"DEST"substr($1,6)}' DEST.dat > DEST.sh
chmod 777 DEST.sh
./DEST.sh 
