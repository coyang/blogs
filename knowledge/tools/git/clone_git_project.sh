#!/bin/bash -x

# Replace placeholders with actual values
ACCESS_TOKEN="xxxxx"
GROUP_ID="xxxx"
SERVER_URL="XXXXX"
TARGET_PATH="/tmp/"

PAGE=1
PER_PAGE=100

function clone_projects_by_group() {
    mkdir -p $TARGET_PATH
    echo "clone all items to $TARGET_PATH"
    pushd $TARGET_PATH

    PAGE=1
    while true; do
        response=$(curl --header "PRIVATE-TOKEN:  $ACCESS_TOKEN" "https://$SERVER_URL/api/v4/groups/$GROUP_ID/projects?per_page=$PER_PAGE&page=$PAGE")
        project_count=$(echo "$response" | jq length)

        # Break the loop if no more projects are returned
        if [ "$project_count" -eq 0 ]; then
            break
        fi

        git_urls=$(echo "$response" |
            json_reformat | grep ssh_url_to_repo | awk '{print $2}' |
            awk -F "," '{print $1}' | awk -F "\"" '{print $2}')

        echo "$git_urls"

        for s in $git_urls; do
            echo $s
            git clone $s
        done
        PAGE=$((PAGE + 1))

    done
    popd

}

function main() {
    clone_projects_by_group "$ACCESS_TOKEN" "$GROUP_ID" "$TARGET_PATH"
}

main "$@"
