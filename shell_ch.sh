echo "Enter the name of the folder":
read filename
mkdir $filename
i=1
while [ $i -le 4 ]
do
  touch $filename/$filename${i}.txt
  echo "this is a file no${i}" >> $filename/$filename${i}.txt
  i=`expr $i + 1`
done
zip -r $filename $filename