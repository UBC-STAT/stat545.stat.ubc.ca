#!/bin/bash

### AUTHOR: DIANA LIN
### DATE: SEPT 19, 2020

set -euo pipefail
PROGRAM=$(basename $0)

function get_help() {
	echo "DESCRIPTION:" 1>&2
	echo -e " \
		\tAdds specified file to each MDA directory. If the directory does not exist, it will be cloned from GitHub using SSH. Requires a pre-configured GitHub CLI 'gh' command.\n \
		\tFor more information: https://cli.github.com/manual/\n \
		" | column -s $'\t' -t 1>&2
	echo 1>&2

	echo "USAGE(S):" 1>&2
	echo -e " \
		\t$PROGRAM [-f] -b <BRANCH NAME> -d <DESTINATION DIRECTORY> -t <PULL REQUEST TITLE> -m <PULL REQUEST MESSAGE> <FILE(S) TO ADD>\n \
		" | column -s $'\t' -t 1>&2
	echo 1>&2

	echo "OPTION(S):" 1>&2
	echo -e " \
		\t-b <NAME>\tbranch name\t(required)\n \
		\t-f\tforce: run on the student repositories instead of the default template\n \
		\t-d <DIR>\tdestination directory\t(default = root of repo)\n \
		\t-h\tshow this help menu\n \
		\t-m <MESSAGE>\tpull request message (must be in quotes!)\t(required)\n \
		\t-t <TITLE>\tpull request title (must be in quotes!)\t(required)\n \
		" | column -s $'\t' -t 1>&2
	echo 1>&2

	echo "EXAMPLE:" 1>&2
	echo -e " \
		\t$PROGRAM -f -b milestone3_setup -d milestone3 -t \"Troubleshooting 3\" -m \"Adding Troubleshooting Document 3 for Milestone 3. Don't forget to read the instructions in the README! Feel free to delete this branch after merging.\" ~/stat-545-instructor/collaborative-project/milestone3/TB3.Rmd ~/stat-545-instructor/collaborative-project/milestone3/README.md\n \
		" | column -s $'\t' -t 1>&2
	exit 1
}

if [[ "$#" -eq 0 ]]
then
	echo "ERROR: Incorrect number of arguments." 1>&2
	echo 1>&2
	get_help
fi
branch=""
title=""
dir="."
message=""
force=false
while getopts :hb:m:d:t:f opt
do
	case $opt in 
		b) branch="$OPTARG";;
		f) force=true;;
		h) get_help;;
		m) message="$OPTARG";;
		d) dir="$OPTARG";;
		t) title="$OPTARG";;
		\?) echo "ERROR: Invalid option: -$OPTARG" 1>&2; echo 1>2; get_help;;
	esac
done

shift $((OPTIND-1))

# all given files must exit and size > 0 
for i in "$@"
do
	if [[ ! -s $i ]]
	then
		echo "ERROR: $i does not exist or is empty!" 1>&2
		exit 2
	fi
done

if [[ -z $branch  ]]
then 
	echo "ERROR: Branch name must be provided." 1>&2
	echo 1>&2
	get_help
	exit 2
fi

if [[ -z $message  ]]
then 
	echo "ERROR: Pull request message must be provided." 1>&2
	echo 1>&2
	get_help
	exit 2
fi


if [[ -z $title  ]]
then 
	echo "ERROR: Pull request message must be provided." 1>&2
	echo 1>&2
	get_help
	exit 2
fi

mkdir -p mda-repos
cd mda-repos

if [[ "$force" = true ]]
then
	# name of 41 MDA repos Oct 1 10:05 AM, sorted
	repos=( "stat-545a-mini-data-analysis-Ella-Q" "stat-545a-mini-data-analysis-GiankDiluvi" "stat-545a-mini-data-analysis-Hazel233" "stat-545a-mini-data-analysis-Khushbu108" "stat-545a-mini-data-analysis-Leosuziqi" "stat-545a-mini-data-analysis-MinaHassanaghaei" "stat-545a-mini-data-analysis-OliviaJL" "stat-545a-mini-data-analysis-Seren1127" "stat-545a-mini-data-analysis-Tomiyosi-Bola" "stat-545a-mini-data-analysis-Yifan-Yin" "stat-545a-mini-data-analysis-abhinabkadel" "stat-545a-mini-data-analysis-ahushirley" "stat-545a-mini-data-analysis-andytai7" "stat-545a-mini-data-analysis-asfarlathif" "stat-545a-mini-data-analysis-ayshaab" "stat-545a-mini-data-analysis-berudri" "stat-545a-mini-data-analysis-ciarastevenson" "stat-545a-mini-data-analysis-cmrn-rhi" "stat-545a-mini-data-analysis-ddtam" "stat-545a-mini-data-analysis-donaldka" "stat-545a-mini-data-analysis-emma-wang29" "stat-545a-mini-data-analysis-epletcher" "stat-545a-mini-data-analysis-georgewangyu" "stat-545a-mini-data-analysis-gsgarbi" "stat-545a-mini-data-analysis-hantonita" "stat-545a-mini-data-analysis-hsiqsiq" "stat-545a-mini-data-analysis-janetxinli" "stat-545a-mini-data-analysis-liamg15" "stat-545a-mini-data-analysis-liawesome" "stat-545a-mini-data-analysis-lzlzlizi" "stat-545a-mini-data-analysis-ma5ki4" "stat-545a-mini-data-analysis-mackinnr" "stat-545a-mini-data-analysis-sachijay" "stat-545a-mini-data-analysis-salomebu" "stat-545a-mini-data-analysis-sfoucaul" "stat-545a-mini-data-analysis-tianyica" "stat-545a-mini-data-analysis-ymyuan98" "stat-545a-mini-data-analysis-zhaoshengEE" "stat-545a-mini-data-analysis-zhemingfan" "stat-545a-mini-data-analysis-zhuzp98" )
else
	# test repos
	repos=( "template-mini-analysis" )
fi

# base cloning URL- uses ssh
base_url="git@github.com:stat545ubc-2020"

# iterate through each repo
for student in "${repos[@]}"
do
	# if the repository hasn't been cloned, clone it
	if [[ ! -d "$student" ]]
	then
		exist=false
		git clone ${base_url}/${student}.git
	else
		exist=true
	fi
	
	# change directory to the git repository
	cd ${student}

	if [[ "$exist" == true ]]
	then
		# pull first to reduce merge conflicts
		git checkout master
		git pull
	fi

	# make a new branch and switch to that branch
	# if it exists, just switch, if it doesn't, create it
	if [[ $(git branch -a | grep -cw "$branch") -eq 0 ]]
	then
		git checkout -b "$branch"
	else
		git checkout "$branch"
	fi

	# make the directory if it is specified!
	if [[ "${dir}" != "." ]]
	then
		mkdir -p ${dir}
	fi

	# copy the files here
	cp "$*" ${dir}
	
	# get relative path of files
	files=$(for i in "$@"; do echo "${dir}/$(basename $i)"; done)
	message_short=$(echo "$message" | awk -F "." '{print $1}')
	# stage and commit these files 
	git add $files 
	git commit -m "${message_short}"
	git push --set-upstream origin $branch

	# create the pull request
	gh pr create --title "$title" --body "$message"

	git checkout master
	cd - > /dev/null
done
