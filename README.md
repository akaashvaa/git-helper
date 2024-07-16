# ghp CLI Tool

## Make sure you are installing it Globally

This script simplifies git workflow tasks, allowing you to streamline repository creation and commit handling on remote repositories. It reduces the need for repetitive git commands for adding, committing, and pushing changes.

![demo](https://github-production-user-asset-6210df.s3.amazonaws.com/98875003/315122671-03c9edf0-75fb-4830-ae87-e4d03a5bc16a.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240321%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240321T065034Z&X-Amz-Expires=300&X-Amz-Signature=ff295659e8c7f414d0d3673aac87621dab78173a7be96fecfa67944fb95deb09&X-Amz-SignedHeaders=host&actor_id=98875003&key_id=0&repo_id=765734272)

## Installation

You can install this CLI tool globally using npm:

```
npm install -g githelper125
```

## Helper command

```
ghp --help
```

## Version command

```
ghp -V or ghp --version
```
<hr />

## 1. Initiate and Push to the new reposity.

```
ghp YOUR_GITHUB_URL commit_msg(optional)
```
## 2. to commit the changes

```
ghp -m YOUR_COMMIT_MSG
```

## 3. to push the commits

```
ghp -p
```

## 4. to commit and push the changes.

```
ghp -mp YOUR_COMMIT_MSG
```

## Now u don't need to use these repetitive commands ❌❌❌

1.

```git init
  git add .
  git commit -m 'Initial commit'
  git remote add origin repository_url
  git push -u origin master
```

2.

```
    git add .
    git commit -m "commit message"
    git push origin main
```
