<a href="https://hub.docker.com/r/sebbia/fastlane-android">
<img src="https://img.shields.io/docker/cloud/build/sebbia/fastlane-android" alt="Docker Cloud Build Status" />
</a>
# Fastlane for Android

Dockerized Fastlane for Android apps deployments.

Provides:
* fastlane
* firebase_app_distribution plugin
* [huawei_appgallery_connect plugin](https://github.com/shr3jn/fastlane-plugin-huawei_appgallery_connect)
* gitlab_get_release_notes

## Getting release notes from Gitlab

```
gitlab_get_release_notes \
  -t $CI_COMMIT_TAG \
  -p $CI_PROJECT_ID \
  -a "secret access token from project" \
  -h CI_SERVER_URL > release_notes.txt
```
