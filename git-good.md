todo

Tip 47: Consider rebasing before merging :)



git-scm.com/book/en/v2/Distributed-Git-Distributed-Workflows




## FB based

- list current branches
git branch

- create local feature branch
git branch feature-5

- switch to fb branch (or in one command: git checkout -b feature-5 
git checkout feature-5

....

working, git add / git commit / ...

...

### DONE with work

#### Variant A - Profi Pull Request
- pull from master branch to resolve possible conflicts


- push to remote remote-feature-5
git push origin <main/master>

- create pull request from remote-feature-5 to remote master (aka. origin)

#### Variant B - rebase

- git-scm.com/book/en/v2/Git-Branching-Rebasing


go to target branch                   : git checkout main
get the commits from specified branch : git rebase FROM_BRANCH_NAME


## Commands

### Changelist
show current    : git status              : even shows further command options :)
un-add		: git reset <file>
add to CL	: git add <-A|file> 

diff staged file : git diff --staged <NAME of Added File>

### Branch
     create and co   : git checkout -b NAME
safe delete branch   : git branch -d NAME
force delete branch  : git branch -D NAME


## Power Setup

### create command alias
Example:
git config --global alias.unadd 'reset HEAD --'

## Authenticate
to push to github you need to authenticate via token

### generate token at github: Profile Pic > Settings > Developer Settings > Generate Token

### add the token to your repo's remote/origin url:
check remote url via   : git remote -v
-> see acto file :) and
https://stackoverflow.com/questions/18935539/authenticate-with-github-using-a-token

