# GIT cmd summary


### remote, share and update
| &#128186; &#128673;            |                                                            |
|--------------------------------|------------------------------------------------------------|
|                                |                                                            |
| `git remote add <ALIAS> <URL>` | add alias for some git URL                                 |
| `git fetch [<ALIAS>]         ` | only get updates from remote                               |
| `git pull                  `   | fetch AND MERGE remote updates                             |
| `git merge                 `   |                                                            |
| `git branch -r             `   | show remote branches                                       |
|                                |                                                            |
|                                |                                                            |
| `git push <ALIAS> <BRANCH> `   | transmit local BRANCH to given remote ALIAS                |
| `git push <origin> --delete <BRANCH> `   | delete remote BRANCH to given remote ALIAS/origin|




### branching and merging
| &#9945;                       |                                                            |
|-------------------------------|------------------------------------------------------------|
| `git checkout -b <B_NAME>   ` | switch to newly created branch                             |
| `git checkout <B_NAME>      ` | switch to branch                                           |
|                               |                                                            |
| `git merge <FROM_B_NAME>    ` | merge onto this branch from given name                     |
| `git rebase <FROM_B_NAME>   ` | apply any commits of current branch ahead of specified one |
|                               |                                                            |
|`git branch -vv               `| verbose info about branches                                |
|`git remote show [origin] [-n]`| info about remote mapping (-n == no remote query!)         |
|                               |                                                            |
|`git branch -m [old] [new]    `| rename branch                                              |
|`git branch -m [new]          `| rename current branch                                      |


#### rewriting history -- squash, rebase
|                              |                                                            |
|------------------------------|------------------------------------------------------------|
|`git rebase -i HEAD~3        `| interactively be able to select from the last 3 commits which commits to put together |


### releasing and tagging

| TODO SHIP                         |                                                            |
|-----------------------------------|------------------------------------------------------------|
|                                   |                                                            |
| `git tag -a [v1.2.3] -m "comment"`| create an annotated tag for a new version                  |
| `git push origin [TAG]           `| needs to be pushed EXPLICITELY, idR. best on main and not on PR branches to not mixup review builds with release builds etc.    |
| `git tag -l                      `| list all existing tags                                     |



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
| `git add -A                ` | add/stage ALL changed files                                |
| `git add -p                ` | pick what to add to stage                                  |
| `git revert <HASH>         ` | UNDO changes                                               |
| `git reset <FILE>          ` | remove from staging, but KEEPING file locally in dir       |
| `git reset --hard <HASH>   ` | clear staging area and use working tree from COMMIT_HASH   |
| `git clean                 ` | similar to reset, see doc                                  |
| `git diff [--staged]       ` | show currently staged to last commit                       |
| `git diff HEAD [FILE]      ` | show diff of current workdir (not added!) FILE to last commit |
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
| - `logs/                     ` |                                                            |
| - `*.jar                     ` |                                                            |
| - `pattern*/                 ` |                                                            |
| `git config --global core.excludeFile '~/.config/git/.gitignore'` | set a global default gitignore :D, e.g. for ide folder |
|                              |                                                            |
| `git config --global core.autocrlf false` | [handle line-endings in windows](https://stackoverflow.com/questions/2517190/how-do-i-force-git-to-use-lf-instead-of-crlf-under-windows) |
| `git config --global core.eol lf        ` | [use linux endings  ](https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings) |
| `git config --global init.defaultBranch main` | set default branch name                                                                                                       |
|                              |                                                            |
|                                                 | [GPG signed in bitbucket](https://confluence.atlassian.com/bitbucketserver/using-gpg-keys-913477014.html)                                                               |
| `git config <--global\|...> commit.gpgsign true` | no need to sign each commit/tag with -S if activated by default |
| `git config <--global\|...> tag.gpgsign true` | no need to sign each commit/tag with -S if activated by default |
| `git commit --amend -S                     ` | forgot to sigh last commit, hence re-commit signed              |



### Aliase


|                                 |                                                            |
|---------------------------------|------------------------------------------------------------|
| `git config --global alias.unstage 'reset HEAD --'` <br> `git unstage [FILE]` | remember how to unstage |
| `git config --global alias.col 'checkout @{-1}'` | checkout previously used branch without having to remember its full name |
| `git config --global alias.stach-unstaged 'stash -k -u'` | -k = keep your staged files staged <br> -u = also stash untracked files with changes |

