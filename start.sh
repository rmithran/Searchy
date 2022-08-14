if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rmithran/Searchy.git /Searchy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Searchy
fi
cd /Searchy
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
