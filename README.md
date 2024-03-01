# Getting Started

This script simplifies git workflow tasks, allowing you to streamline repository creation and commit handling on remote repositories. It reduces the need for repetitive git commands for adding, committing, and pushing changes.



## Method

$$ PREREQUESITE $$
 - SHIFT YOUR DEFAULT BRANCH FROM MASTER TO main

```
 git config --global init.defaultBranch main

```

1. Adding a New Repository:

```./script.sh your_github_url_for_new_project [commit msg](commit msg is optional) ```

Use code with caution.
Replace your_github_url_for_new_project with the actual URL of your new repository (e.g., git@github.com/username/new-project.git)
The commit msg argument is optional. If omitted, defaults to ""first commit".

$$ After adding the script.sh, you need to give the permission to execute it $$
  ```
chmod +x script.sh
```

2. Pushing Changes to an Existing Repository:

``` ./script.sh -m "commit message" ```

Use code with caution.
Replace "commit message" with a clear and informative description of your changes.
Alternatively, provide it directly within single quotes or normal:
Bash

- `./script.sh -m 'Update README.md'`
- `./script.sh -m Update README.md`

Note: your current branch will be the branch which will be pushed
Use code with caution.

## Run this using npm
add the following command in the package.json in script section
  - "ghp" : "chmod +x script.sh && ./script.sh $@"

  and theb u can use 
   - Add new project :"npm run ghp -- githuburl commit_msg(optional)"
   - push changes : "npm run ghp -- -m commit-msg"

## Advanced Usage

For handling authentication with private repositories, configure SSH keys.
For more complex workflows, consider using full-fledged Git management tools or customizing this script as needed.

## Notes

This script assumes Git is installed and configured.
Refer to the official Git documentation for details on commands: https://git-scm.com/

## Contributing

We welcome pull requests for bug fixes, improvements, or additional features.

## License

This script is provided under the MIT license. See the license file for details.
