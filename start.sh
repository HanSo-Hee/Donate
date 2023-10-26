if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PredatorHackerzZ/Donate.git /DonateBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DonateBot
fi
cd /DonateBot
pip3 install -U -r requirements.txt
echo "Starting DonateBot...."
python3 bot.py
