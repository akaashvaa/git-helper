# Getting Started

This script simplifies git workflow tasks, allowing you to streamline repository creation and commit handling on remote repositories. It reduces the need for repetitive git commands for adding, committing, and pushing changes.



## Methods

> ###  Copy the script.sh into your project root directory

## Method 1 : Using npm
 #### - add the following command in the script section of package.json
    
    "ghp" : "chmod +x script.sh && ./script.sh $@"
     
        
   and then you can use the following commands 
   
  #### 1. Add a New Repository:
      
      npm run ghp -- github_url commit_msg(optional)

Use code with caution.
Replace your ```github_url``` with the actual URL of your new repository (e.g., git@github.com/username/new-project.git)
The commit msg argument is optional. Defaults value is "first commit".  
  
   #### 2. Push Changes to an Existing Repository:
      
      npm run ghp -- -m "commit message"
      
> Replace "commit message" with a clear and informative description of your changes.
##### ALternatives
- ```  npm run ghp -- -m 'commit message'   ```
- ```  npm run ghp -- -m commit message ```
> if u want to push your code to the new branch then first you need to change your branch using git and use script to push it on the github in your desired branch.



## Method 2 : Manually
$$ PREREQUESITE $$

After adding the script.sh, we need to give the permission to execute it.
```
chmod +x script.sh
```
#### 1. Add a New Repository:
```
./script.sh github_url commit_msg(optional)
```

#### 2. Push Changes to an Existing Repository:
```
./script.sh -m "commit message"
```
##### ALternatives

- ``` ./script.sh -m 'commit message'   ```
- ```  ./script.sh -m commit message ```


## Advanced Usage

For handling authentication with private repositories, configure SSH keys.
For more complex workflows, consider using full-fledged Git management tools or customizing this script as needed.

## Notes

This script assumes Git is installed and configured.
Refer to the official Git documentation for details on commands: https://git-scm.com/

## Contributing

We welcome pull requests for bug fixes, improvements, or additional features.

## License
This script is provided under the ISC license. See the license file for details.

