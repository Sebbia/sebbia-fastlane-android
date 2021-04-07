#!/bin/sh

set -e

show_help() {
    echo 
    echo "Get release notes from Gitlab Release"
    echo 
    echo "Usage: gitlab_get_release_notes.sh <options>"
    echo 
    echo "  -t <tag> - tag (\$CI_COMMIT_TAG)"
    echo "  -p <project id> - project ID (\$CI_PROJECT_ID)"
    echo "  -a <access token> - access token (gitlab/project/settings/access_tokens)"
    echo "  -h <url> - gitlab host url (https://gitlab.acme.com)"
    echo 
    exit 1
}

unset TAG_NAME
unset PROJECT_ID
unset ACCESS_TOKEN
unset HOST

while getopts "t:p:a:h:" opt 
do
    case $opt in
        t) TAG_NAME=$OPTARG;;
        p) PROJECT_ID=$OPTARG;;
        a) ACCESS_TOKEN=$OPTARG;;
        h) HOST=$OPTARG;;
        *) ;;
    esac
done

if [ -z "$TAG_NAME" ] || [ -z "$PROJECT_ID" ] || [ -z "$ACCESS_TOKEN" ] || [ -z "$HOST" ]; then
    show_help
fi

curl --header "PRIVATE-TOKEN: $ACCESS_TOKEN" "$HOST/api/v4/projects/$PROJECT_ID/releases/$TAG_NAME" | jq -r ".description"