for files in *.*
do
filename=`echo $files | awk -F. '{print $1}'`
filext=`echo $files | awk -F. '{print $2}'`
        if [ -d $filename ]
        then
                rm -r $filename
        fi
        #mkdir $filename
	mkdir -p $filename/$filext
	mv $files $filename/$filext
done
echo $filename

