echo '
########### setting nodenv ###########
'

grep -q 'eval "$(nodenv init -)"' ~/.zprofile

if [ $? != 0 ]; then
  echo '~/.zprofileに追記'
  echo 'eval "$(nodenv init -)"' >> ~/.zprofile
else
  echo '~/.zprofileに設定済'
fi


echo '
########### install node #############
'

nodenv install 16.13.2


echo '
########## nodenv rehash 
'

nodenv rehash


echo '
########## global node version #########
'

nodenv global 16.13.2

echo 'terminalを再起動してください'
