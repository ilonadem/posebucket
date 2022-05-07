for file in ./coral/MoveNet/data/*.pickle
do
	echo "$file"
	./google-cloud-sdk/bin/gsutil cp $file gs://mediapipe-data/movenet
	rm $file
done
