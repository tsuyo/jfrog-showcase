error_message() {
    echo "Usage: $0 <project> <repo_name>"
    exit 0
}

project=$1
repo_name=$2

if [ "$project" == "" ] || [ "$repo_name" == "" ]; then
  error_message
fi

echo "delete repos"
jfrog rt rdel --quiet ${project}-${repo_name}
jfrog rt rdel --quiet ${project}-${repo_name}-local
jfrog rt rdel --quiet ${project}-${repo_name}-remote
