#!/usr/bin/env bash

if [ $# -eq 0 ]; then
	echo "Error: Please provide a suitable argument to proceed."
	echo "Use 'npm run ghp -- help' to know more."
	exit 1
fi

BOLD_GREEN='\e[1;32m'
WHITE_BOLD='\e[1;37m'
RESET='\e[0m'

case "$1" in
"help")
	echo -e "${BOLD_GREEN} ------------------------------------- Instructions ----------------------------------- ${RESET}\n"
	echo -e "${WHITE_BOLD}1. To add a new repository: \n ${BOLD_GREEN} ghp your_github_url_for_new_project commit_msg(optional) ${RESET} \n"
	echo -e "${WHITE_BOLD}2. To push to an existing repository: \n ${BOLD_GREEN} ghp -m commit_msg or "commit msg" or commit msg ${RESET}"
	;;
https*://*.git | git@*.git)
	message="first commit"
	if [[ $# -gt 1 ]]; then
		message="$2"
	fi

	ORIGIN="$1"
	git init && git add . && git commit -m "$message" && git branch -M main && git remote add origin "$ORIGIN" && git push -u origin main
	;;
"-m")
	shift
	message="$@"
	branch_name=$(git branch --show-current)
	git add . && git commit -m "$message" && git push origin "$branch_name"
	;;
*)
	echo "Error: didn't match with the followed pattern. "
	echo "Use 'ghp help' to know more."
	exit 1
	;;
esac
