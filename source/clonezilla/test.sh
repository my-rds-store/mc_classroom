
for file in `find $1/ -type f`;
do
	convert  $file  $file
done


