
filename=index_exp1.html
rm $filename

echo "<table style="width:100%">" >> $filename

#array1=($(ls data/vcc2016_training/SF1/*.wav))
#array2=($(ls data/vcc2016_training/TF2/*.wav))
array3=($(ls idiap/validation_output/converted_A/epoch_500*.wav))
#array4=($(ls idiap/validation_output/CM01_M11_np/converted_B/*.wav))
array_length=${#array3[@]}

prefix='/home/boomkin/ssh_temp/UA-Speech/audio/control/CM01/'
prefix_2='/home/boomkin/ssh_temp/UA-Speech/audio/M11/'


echo "<tr>" >> $filename
echo "<td>Source</td>" >> $filename
echo "<td>Source converted to Target</td>" >> $filename
echo "<td>Target</td>" >> $filename
#echo "<td>Target converted to Source</td>" >> $filename
echo "<td>MCD</td>" >> $filename
echo "</tr>" >> $filename


for ((i = 0 ; i < $array_length ; i++)); do
	echo "<tr>" >> $filename
	bname="$(basename -- ${array3[i]})"
	full_name=`echo ${prefix}${bname} | sed s/epoch_500_//`
	full_name_2_temp=`echo ${prefix_2}${bname} | sed s/epoch_500_//`
	full_name_2=`echo ${full_name_2_temp} | sed s/CM01/M11/`
	echo "<td><audio controls><source src="$full_name" type="audio/wav"></audio></td>" >> $filename
	echo "<td><audio controls><source src="${array3[i]}" type="audio/wav"></audio></td>" >> $filename
	echo "<td><audio controls><source src="$full_name_2" type="audio/wav"></audio></td>" >> $filename
	echo "<td>" >> $filename
	python evaluation_cl.py --file_A=${full_name} --file_B=${full_name_2} >> $filename
	echo "</td>" >> $filename
	echo "</tr>" >> $filename
done

echo "</table>" >> $filename


# vcc training SF1 # converted SF1 (converted B) # vcc training TF2 # converted SF2


# <audio controls>
#  <source src="/images/odyssey_audio/three_format_-.wav" type="audio/wav">
#</audio>
