## Description
自用型 `git` 快捷命令（仅支持 mac os、linux）

## Install
```
git clone https://github.com/chym123/git-shortcut.git
cd git-shortcut
sh install.sh
```

## Usage
```
Usage: g <command> <...?>

<Commands>
  ad:  git add .
  br:  git branch <...>
  cl:  git clone <...>
  ck:  git checkout <branchName>
  rm:  git branch -d <branchName>
       -D, git branch -D <branchName>
       -r, git push origin :<branchName>
  ma:  git checkout master
  + :  git checkout -b <branchName>, press \`tab\` to add today's date (eg. \`20191122\`)
  - :  git checkout -, 回到上一个分支
  ps:  git push origin [current branch], 推送代码到当前远程分支
  pl:  git pull origin <branchName>?, 从远程分支拉取代码
  fc:  git fetch, 获取远程仓库变动
  cm:  <comment?|cmd?>, git commit <-m comment?|cmd?>
  sm:  <comment?>, git add . && git commit -m <comment?|'feat: update.'> && git push, 一键推送所有修改
  mg:  git merge <branchName?>, 拉取并 merge 目标分支, 默认 merge master

  g <h|help>: For help
  g <cmd>: git <cmd>
```
