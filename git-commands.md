# GIT cmd summary


### remote, share and update
| &#128186; &#128673;            |                                                            |
|--------------------------------|------------------------------------------------------------|
|                                |                                                            |
| `git remote add <ALIAS> <URL>` | add alias for some git URL                                 |
| `git fetch [<ALIAS>]         ` | only get updates from remote                               |
| `git pull                  `   | fetch AND MERGE remote updates                             |
| `git merge                 `   |                                                            |
|                                |                                                            |
|                                |                                                            |
| `git push <ALIAS> <BRANCH> `   | transmit local BRANCH to given remote ALIAS                |




### branching and merging
| &#9945;                       |                                                            |
|------------------------------|------------------------------------------------------------|
| `git checkout -b <B_NAME>  ` | switch to newly created branch                             |
| `git checkout <B_NAME>     ` | switch to branch                                           |
|                              |                                                            |
| `git merge <FROM_B_NAME>   ` | merge onto this branch from given name                     |
| `git rebase <FROM_B_NAME>  ` | apply any commits of current branch ahead of specified one |


#### rewriting history -- squash, rebase
|                              |                                                            |
|------------------------------|------------------------------------------------------------|
|`git rebase -i HEAD~3        `| interactively be able to select from the last 3 commits which commits to put together |



### temporary stashing

| &#9842;                      |                                                            |
|------------------------------|------------------------------------------------------------|
| `git stash                 ` | save modified STAGED changes                               |
| `git stash list            ` | list currently stashed changes                             |
| `git stash pop             ` | write working from top of stash stack                      |
| `git stash drop            ` | discard the changes from top of stash stack                |





### inspecting and staging area

| &#128218;                    |                                                            |
|------------------------------|------------------------------------------------------------|
| `git log                   ` | show commits                                               |
| `git log --stat -M         ` | show commits that moved any paths                          |
| `git shortlog              ` | show commits, but shorter :)                               |
| `git diff branchA...branchB` | show diff of what is in A which is not in B                |
| `git show <STH>            ` | show any git object                                        |
|                              |                                                            |
| `git status                ` | see prepped commit                                         |
| `git add                   ` |                                                            |
| `git reset <FILE>          ` | remove from staging, but KEEPING file locally in dir       |
| `git reset --hard <HASH>   ` | clear staging area and use working tree from COMMIT_HASH   |
| `git diff [--staged]       ` |                                                            |
| `git commit -m <MSG>       ` |                                                            |
| `git rm <FILE>             ` | remove locally and stage for deletion                      |
| `git mv <FROM> <TO>        ` | move                                                       |



### setup and init

| &#9875;                      |                                                            |
|------------------------------|------------------------------------------------------------|
| `git init                  ` | create empty git repo                                      |
| `                          ` | afterwards link repo to it to get                          |
|                              |                                                            |
| `git clone <URL>           ` | copy local repo                                            |
|                              |                                                            |
| Ignore patterns              | for .gitignore file                                        |
| `logs/                     ` |                                                            |
| `*.jar                     ` |                                                            |
| `pattern*/                 ` |                                                            |











## Blueprint new tables

|                              |                                                            |
|------------------------------|------------------------------------------------------------|
|                              |                                                            |


|                    |                                       |                                  |
|--------------------|---------------------------------------|----------------------------------|
| `:`                |                                       |                                  |
| `:`                |                                       |                                  |




|                              |                                                            |
|------------------------------|------------------------------------------------------------|
|                              |                                                            |
|                              |                                                            |
|                              |                                                            |
| `                          ` |                                                            |


