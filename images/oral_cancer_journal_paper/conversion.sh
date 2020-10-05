for file in $(find -name "*.wav")
do
	echo $file
	echo ${file%.*}_.wav
	sox $file -b 32 ${file%.*}_.wav rate -I 16000 channels 1 dither -s
	mv ${file%.*}_.wav $file
	#sox $file -t wav -r 16000 -b 16	"${file%.*}_.wav" channels 1
done
