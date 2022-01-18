ssh-keygen -t rsa


########
echo '
#############################################################
githubへ公開鍵を登録後ripositoryをssh接続に切り替える
git remote set-url origin git@github.com:doiya/mac-setup.git
#############################################################
'

git config --global user.name "doiya"
