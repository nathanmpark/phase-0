## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

Tracking and adding changes allows for version control and historical records of code. This can come in handy when working on teams.

A commit is effectively a save point, the latest version of code submitted to the repository.

Commit messages should use active verbs, similar to git syntax. Should have a one sentence summary of changes made. This can be followed by a more in-depth paragraph (usually separated by a space). Bullets are ok (usually stars or dashes), which also following the hanging indentation rule.

HEAD^ means go back to the last commit, previous to the current one.

The 3 stages of git change are Add, Commit, Push. After creating a new file, you add it to the list of files to be committed. Once committed with a message, you then push from the branch to the master. These are all done using git commands, and checked using the git status. Commit messages can be checked using the log command.

Cheat Sheet (starting from master):
- git pull
- git co -b [feature-branch]
- git add
- git commit -m "[commit message]"
- git push origin [feature-branch]
- git co master
- git pull origin master
- git merge origin/master
- git branch -d [feature-branch]

A pull request is when changes from a branch are being pushed into the master. Whoever has write permissions on the master will have to accept the "pull request" being pushed from the branch. This can be merged through the github UI or by using the merge command.

Pull Requests are preferred when working on teams as each developer can create their own branch and work independently. When changes need to be pushed, they have their code reviewed and often times aa single admin user will accept the pull requests are they are received, preventing a conflicting code base.