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


from current branch to specified : git rebase master
git checkout master


## Commands

### Changelist
show current    : git status              : even shows further command options :)
un-add		: git reset <file>
add to CL	: git add <-A|file> 

### Branch
     create and co   : git checkout -b NAME
safe delete branch   : git branch -d NAME
force delete branch  : git branch -D NAME


## Power Setup

### create command alias
Example:
git config --global alias.unadd 'reset HEAD --'
