# Getting Started

This script simplifies git workflow tasks, allowing you to streamline repository creation and commit handling on remote repositories. It reduces the need for repetitive git commands for adding, committing, and pushing changes.

## Installation

```
npm install gsnap
```

## Method

1. Adding a New Repository:

``` gsnap your_github_url_for_new_project [branch_name](branch name is optional) ```

Use code with caution.
Replace your_github_url_for_new_project with the actual URL of your new repository (e.g., git@github.com/username/new-project.git)
The branch_name argument is optional. If omitted, defaults to "Main".

2. Pushing Changes to an Existing Repository:

``` gsnap "commit message" ```

Use code with caution.
Replace "commit message" with a clear and informative description of your changes.
Alternatively, provide it directly within single quotes or normal:
Bash

- `gsnap 'Update README.md'`
- `gsnap Update README.md`

Note: your current branch will be the branch which will be pushed
Use code with caution.

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
