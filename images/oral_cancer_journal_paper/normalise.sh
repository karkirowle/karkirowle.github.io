
for i in train_temp/*/*.wav
do
	#new_path=$(sed 's|_temp||g' <<< $i)
	new_path=${i//_temp/}
	folder1=`echo $new_path | cut -f 1 -d '/'`
	folder2=`echo $new_path | cut -f 2 -d '/'`
	mkdir -p ${folder1}/${folder2}
	sox "$i" "$new_path" norm -0.1
	echo $new_path
done


for i in test_temp/*/*.wav
do
	#new_path=$(sed 's|_temp||g' <<< $i)
	new_path=${i//_temp/}
	folder1=`echo $new_path | cut -f 1 -d '/'`
	folder2=`echo $new_path | cut -f 2 -d '/'`
	mkdir -p ${folder1}/${folder2}
	sox "$i" "$new_path" norm -0.1
	echo $new_path
done



#find test_temp | grep wav
