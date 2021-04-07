# Fastlane for Android

Dockerized Fastlane for Android apps deployments.

Provides:
* fastlane
* firebase_app_distribution plugin
* gitlab_get_release_notes

## Getting release notes from Gitlab

```
gitlab_get_release_notes \
  -t $CI_COMMIT_TAG \
  -p $CI_PROJECT_ID \
  -a "secret access token from project" \
  -h CI_SERVER_URL > release_notes.txt
```
