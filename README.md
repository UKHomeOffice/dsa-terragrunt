# dsa-terragrunt
Terragrunt image for DSA.

## Using Git Tags

To push a specific version to the Quay repository, create an annotated git tag and push with
```
git tag -a <tag_name> -m "<tag message>"
git push --tags
```
This triggers a Drone step to build and push the latest commit and assign the same tag to the image in the Quay repository

