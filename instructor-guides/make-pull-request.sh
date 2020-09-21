#!/bin/bash

### AUTHOR: DIANA LIN
### DATE: SEPT 19, 2020

set -euo pipefail
PROGRAM=$(basename $0)

function get_help() {
	echo "DESCRIPTION:" 1>&2
	echo -e " \
		\tAdds specified file to each collaborative directory. If the directory does not exist, it will be cloned from GitHub using SSH. Requires a pre-configured GitHub CLI 'gh' command.\n \
		\tFor more information: https://cli.github.com/manual/\n \
		" | column -s $'\t' -t 1>&2
	echo 1>&2

	echo "USAGE(S):" 1>&2
	echo -e " \
		\t$PROGRAM -b <BRANCH NAME> -d <DESTINATION DIRECTORY> -t <PULL REQUEST TITLE> -m <PULL REQUEST MESSAGE> <FILE(S) TO ADD>\n \
		" | column -s $'\t' -t 1>&2
	echo 1>&2

	echo "OPTION(S):" 1>&2
	echo -e " \
		\t-b <NAME>\tbranch name\t(required)\n \
		\t-d <DIR>\tdestination directory\t(default = root of repo)\n \
		\t-h\tshow this help menu\n \
		\t-m <MESSAGE>\tpull request message (must be in quotes!)\t(required)\n \
		\t-t <TITLE>\tpull request title (must be in quotes!)\t(required)\n \
		" | column -s $'\t' -t 1>&2
	echo 1>&2

	echo "EXAMPLE:" 1>&2
	echo -e " \
		\t$PROGRAM -b milestone2_setup -d milestone2 -t \"Troubleshooting 2\" -m \"Adding milestone2 documents for students\" ~/stat-545-instructor/collaborative-project/milestone2/TB2.Rmd\n \
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
while getopts :hb:m:d:t: opt
do
	case $opt in 
		b) branch="$OPTARG";;
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

mkdir -p collaborative-repos
cd collaborative-repos

# names of all 35 repositories (some may be empty and not actively worked on)
repos=( "collaborative-manganese" "collaborative-chlorine" "collaborative-selenium" "collaborative-helium" "collaborative-neon" "collaborative-boron" "collaborative-gallium" "collaborative-phosphorus" "collaborative-zinc" "collaborative-titanium" "collaborative-iron" "collaborative-cobalt" "collaborative-krypton" "collaborative-lithium" "collaborative-potassium" "collaborative-fluorine" "collaborative-argon" "collaborative-germanium" "collaborative-sulfur" "collaborative-nickel" "collaborative-arsenic" "collaborative-bromine" "collaborative-hydrogen" "collaborative-chromium" "collaborative-rubidium" "collaborative-magnesium" "collaborative-vanadium" "collaborative-na" "collaborative-nitrogen" "collaborative-calcium" "collaborative-silicon" "collaborative-copper" "collaborative-oxygen" "collaborative-scandium" "collaborative-aluminum" )

# base cloning URL- uses ssh
base_url="git@github.com:stat545ubc-2020"

# iterate through each repo
for element in "${repos[@]}"
do
	# if the repository hasn't been cloned, clone it
	if [[ ! -d "$element" ]]
	then
		exist=false
		git clone ${base_url}/${element}.git
	else
		exist=true
	fi
	
	# change directory to the git repository
	cd ${element}

	if [[ "$exist" == true ]]
	then
		# pull first to reduce merge conflicts
		git checkout master
		git pull
	fi

	# make a new branch and switch to that branch
	git checkout -b  "$branch"

	# make the directory if it is specified!
	if [[ "${dir}" != "." ]]
	then
		mkdir -p ${dir}
	fi

	# copy the files here
	cp "$*" ${dir}
	
	# get relative path of files
	files=$(for i in "$@"; do echo "${dir}/$(basename $i)"; done)

	# stage and commit these files 
	git add $files 
	git commit -m "$message"
	git push --set-upstream origin $branch

	# create the pull request
	gh pr create --title "$title" --body "$message"

	git checkout master
	cd - > /dev/null
done
