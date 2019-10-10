# quicklearn git
Quick learning of how to use git and github

## マージのやり方
統合する元(幹)になるブランチに`git checkout`で移動し, `git merge origin/<branch>`を打つ. <branch>にはマージしたいブランチ名を入力する

### 例: masterにkohブランチをマージしたい
```
git checkout master
git merge koh
```

## 操作の流れ
```
# クローン/プルしてリモートレポジトリの情報をローカルに読み込む
git clone git@github<repository-name>.git/git pull origin
# プルの(ある意味正確な)やり方
git fetch
git merge origin/<branch-name>
# ブランチを切る(git checkoutに-bをつけると今いるブランチをコピーしたブランチを作成できる)
git checkout -b <branch-name>
# 編集後, コミットする
git add <file-path>
git commit -m <commit-message>
# 必要ならばマージする
git checkout <branch-name to be merged to>
git merge origin/<branch-name to merge>
# プッシュする. ブランチ名は編集したいブランチの名前にすること
git push origin <branch-name>
```

## ターミナル/Git Bash上での基本操作
```
# <path>の先に移動する
cd <path>
cd # ←何も入力しないとホームに移動する
# 現在位置を確かめる
pwd
# 現在いるディレクトリにおいてあるファイル・フォルダを確認する
ls
# pathを指定することもできる
ls <path>
# ディレクトリ(フォルダ)を作成する
mkdir <path/name>
# 空のファイルを作成する
touch <path/name>
# ファイルの中身を見る
cat <path/name>
```
