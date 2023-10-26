if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rarakukka/PremiumAutofilterBot /PremiumAutofilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PremiumAutofilterBot
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting PremiumAutofilterBot...."
python3 bot.py
