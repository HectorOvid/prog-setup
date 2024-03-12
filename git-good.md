## Articles / Good to read

- [Merging vs. rebasing] https://www.atlassian.com/git/tutorials/merging-vs-rebasing)
- [Creating pull requests in bitbucket](https://support.atlassian.com/bitbucket-cloud/docs/create-a-pull-request-to-merge-your-change/)
- [Consider Rebase before merging](git-scm.com/book/en/v2/Distributed-Git-Distributed-Workflows)
- [Squashing commits, cleanup many small commits](https://git-scm.com/book/id/v2/Git-Tools-Rewriting-History#_squashing)
- [Worktrees](https://www.youtube.com/watch?v=2uEqYw-N8uE)



## FB based

- list current branches
`git branch`

- create local feature branch
`git branch feature-5`

- switch to fb branch (or in one command: `git checkout -b feature-5` or 
`git checkout feature-5`

....

working, git add / git commit / ...

...

### DONE with work

#### Variant A - Profi Pull Request
- pull from master branch to resolve possible conflicts


- push to remote remote-feature-5
`git push origin <main/master>`

- create pull request from remote-feature-5 to remote master (aka. origin)

#### Variant B - rebase

- git-scm.com/book/en/v2/Git-Branching-Rebasing


go to target branch                   : `git checkout main`
get the commits from specified branch : `git rebase FROM_BRANCH_NAME`



## Authenticate
to push to github you need to authenticate via token

### generate token at github: Profile Pic > Settings > Developer Settings > Generate Token

### add the token to your repo's remote/origin url:
check remote url via   : git remote -v
-> see acto file :) and

git remote set-url origin https://[APPLICATION]:[NEW TOKEN]@github.com/[ORGANISATION]/[REPO].git

https://stackoverflow.com/questions/18935539/authenticate-with-github-using-a-token
