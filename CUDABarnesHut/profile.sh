#/bin/sh

for conf in `ls profile_configs` ; do
	
	#Inform the user
	echo "Starting profile for $conf configuration file."

	printf "\tPreparing the profile enviroment..."
	export CUDA_PROFILE=1
	export CUDA_PROFILE_CSV=1
	export CUDA_PROFILE_CONFIG=profile_configs/$conf
	export CUDA_PROFILE_LOG=CUDA_profile/BarnesHut_$conf.csv
	printf "DONE\n"

	printf "\tRunning the program..."
	
	(./BarnesHut 250000 1) > /dev/null 2> /dev/null

	sed -i "s/,/;/g" CUDA_profile/BarnesHut_$conf.csv

	printf "DONE\n"
	printf "DONE\n\n"
done
