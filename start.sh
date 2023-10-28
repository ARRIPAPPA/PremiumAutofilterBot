if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ARRIPAPPA/PremiumAutofilterBot /PremiumAutofilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PremiumAutofilterBot
fi
cd /PremiumAutofilterBot
pip3 install -U -r requirements.txt
echo "Starting PremiumAutofilterBot...."
python3 bot.py
