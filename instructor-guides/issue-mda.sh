#!/bin/bash

### AUTHOR: DIANA LIN
### DATE: OCT 1, 2020

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
		\t$PROGRAM [-f] -t <ISSUE TITLE> <MARKDOWN DOCUMENT>\n
		" | column -s $'\t' -t 1>&2
	echo 1>&2

	echo "OPTION(S):" 1>&2
	echo -e " \
		\t-f\tforce: run on the student repositories instead of the default template\n \
		\t-h\tshow this help menu\n \
		\t-t <TITLE>\tpull request title (must be in quotes!)\t(required)\n \
		" | column -s $'\t' -t 1>&2
	echo 1>&2

	echo "EXAMPLE:" 1>&2
	echo -e " \
		\t$PROGRAM -f -t \"Milestone 1 Checklist\" ~/stat545.stat.ubc.ca/content/mini-project/mini-project-1-checklist.md\n \
		" | column -s $'\t' -t 1>&2
	exit 1
}

if [[ "$#" -eq 0 ]]
then
	echo "ERROR: Incorrect number of arguments." 1>&2
	echo 1>&2
	get_help
fi
title=""
force=false
while getopts :hft: opt
do
	case $opt in 
		f) force=true;;
		h) get_help;;
		t) title="$OPTARG";;
		\?) echo "ERROR: Invalid option: -$OPTARG" 1>&2; echo 1>2; get_help;;
	esac
done

shift $((OPTIND-1))

# all given files must exit and size > 0 
if [[ ! -s $1 ]]
then
	echo "ERROR: $1 does not exist or is empty!" 1>&2
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
	# name of 64 MDA repos Oct 1 10:05 AM, sorted
	# there should be 68 repositories with 68 students
	repos=( "stat-545a-mini-data-analysis-BuggyBDrizzy" "stat-545a-mini-data-analysis-Ella-Q" "stat-545a-mini-data-analysis-GabrielGP1995" "stat-545a-mini-data-analysis-GiankDiluvi" "stat-545a-mini-data-analysis-Hazel233" "stat-545a-mini-data-analysis-Kaialain" "stat-545a-mini-data-analysis-Khushbu108" "stat-545a-mini-data-analysis-Leosuziqi" "stat-545a-mini-data-analysis-MinaHassanaghaei" "stat-545a-mini-data-analysis-OliviaJL" "stat-545a-mini-data-analysis-Seren1127" "stat-545a-mini-data-analysis-Tian-Liu-Alice" "stat-545a-mini-data-analysis-Tomiyosi-Bola" "stat-545a-mini-data-analysis-Yifan-Yin" "stat-545a-mini-data-analysis-abhinabkadel" "stat-545a-mini-data-analysis-ahushirley" "stat-545a-mini-data-analysis-andytai7" "stat-545a-mini-data-analysis-asfarlathif" "stat-545a-mini-data-analysis-ayshaab" "stat-545a-mini-data-analysis-berudri" "stat-545a-mini-data-analysis-ciarastevenson" "stat-545a-mini-data-analysis-clmorrison" "stat-545a-mini-data-analysis-cmrn-rhi" "stat-545a-mini-data-analysis-davidtong28" "stat-545a-mini-data-analysis-ddtam" "stat-545a-mini-data-analysis-donaldka" "stat-545a-mini-data-analysis-emma-wang29" "stat-545a-mini-data-analysis-epletcher" "stat-545a-mini-data-analysis-ewincm15" "stat-545a-mini-data-analysis-georgewangyu" "stat-545a-mini-data-analysis-gsgarbi" "stat-545a-mini-data-analysis-hantonita" "stat-545a-mini-data-analysis-hsiqsiq" "stat-545a-mini-data-analysis-janetxinli" "stat-545a-mini-data-analysis-jeffstat" "stat-545a-mini-data-analysis-jvhuynh11" "stat-545a-mini-data-analysis-liamg15" "stat-545a-mini-data-analysis-liawesome" "stat-545a-mini-data-analysis-lzlzlizi" "stat-545a-mini-data-analysis-ma5ki4" "stat-545a-mini-data-analysis-mackinnr" "stat-545a-mini-data-analysis-matteolepur" "stat-545a-mini-data-analysis-melroseabove" "stat-545a-mini-data-analysis-nb97" "stat-545a-mini-data-analysis-nicolalove" "stat-545a-mini-data-analysis-ns-ubc" "stat-545a-mini-data-analysis-sachijay" "stat-545a-mini-data-analysis-salomebu" "stat-545a-mini-data-analysis-sezar543" "stat-545a-mini-data-analysis-sfoucaul" "stat-545a-mini-data-analysis-shannelu" "stat-545a-mini-data-analysis-sr2480" "stat-545a-mini-data-analysis-tessiemn" "stat-545a-mini-data-analysis-tianyica" "stat-545a-mini-data-analysis-timcrowe91" "stat-545a-mini-data-analysis-trevorkwan" "stat-545a-mini-data-analysis-trisango" "stat-545a-mini-data-analysis-tzhang1268" "stat-545a-mini-data-analysis-wu-2018" "stat-545a-mini-data-analysis-yelselmiao" "stat-545a-mini-data-analysis-ymyuan98" "stat-545a-mini-data-analysis-zhaoshengEE" "stat-545a-mini-data-analysis-zhemingfan" "stat-545a-mini-data-analysis-zhuzp98" )
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
	message=$(cat $1)	
	gh issue create --title "$title" --body "$message"

	cd - > /dev/null
done
