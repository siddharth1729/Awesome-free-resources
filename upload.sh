
    #!/bin/bash
    # Ask the user for their name
echo Hello, Pleas enter your commit
read varname
echo It\'s nice to meet you $varname


git add .
git commit -m "$varname"
git push

git status
