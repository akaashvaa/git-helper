#!/usr/bin/env bash

# for terminal color
BOLD_GREEN='\e[1;32m'
WHITE_BOLD='\e[1;37m'
RESET='\e[0m'

#  help instructions
show_help() {
    echo -e "\n${BOLD_GREEN} ------------------------------------- Instructions ----------------------------------- ${RESET}\n"
    echo -e "${WHITE_BOLD}1. To add a new repository: \n ${BOLD_GREEN}> ghp your_github_url_for_new_project commit_msg(optional) ${RESET} \n"
    echo -e "${WHITE_BOLD}2. To commit to the changes: \n ${BOLD_GREEN}> ghp -m commit_msg ${RESET}"
    echo -e "${WHITE_BOLD}2. To push to the commits: \n ${BOLD_GREEN}> ghp -p ${RESET}"
    echo -e "${WHITE_BOLD}3. To commit and push the changes: \n ${BOLD_GREEN}> ghp -mp commit_msg ${RESET}"
}

# initialize a new repository and push it
initialize_repo() {
    local origin="$1"
    shift
    local message="${*:-Initial commit}"

    if [ -d .git ]; then
        echo "Error: This directory is already a git repository."
        exit 1
    fi

    git init && git add . && git commit -m "$message" && git branch -M main && git remote add origin "$origin" && git push -u origin main
}

# commit changes
commit_changes() {
    local message="$@"
    
    if [ -z "$message" ]; then
        echo "Error: Commit message cannot be empty."
        exit 1
    fi
    
    git add . && git commit -m "$message"
}

# push changes
push_commits(){
  local branch_name=$(git branch --show-current)
  git push origin "$branch_name"
}

#  commit and push changes
commit_and_push_changes() {
    local message="$@"
    local branch_name=$(git branch --show-current)
    
    if [ -z "$message" ]; then
        echo "Error: Commit message cannot be empty."
        exit 1
    fi
    
    git add . && git commit -m "$message" && git push origin "$branch_name"
}

# Check if no arguments are provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a suitable argument to proceed."
    echo "Use 'ghp --help' to know more."
    exit 1
fi

# Main script logic
case "$1" in
    --help)
        show_help
        ;;
    https*://*.git|git@*.git)
        initialize_repo "$@"
        ;;
    -m)
        shift
        commit_changes "$@"
        ;;
    -p)
        push_commits
        ;;
    -mp)
        shift
        commit_and_push_changes "$@"
        ;;   
    *)
        echo "Error: didn't match with the followed pattern."
        echo "Use 'ghp --help' to know more."
        exit 1
        ;;
esac

