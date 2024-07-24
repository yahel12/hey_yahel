if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/yahel12/hey_yahel.git /hey_yahel
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /hey_yahel
fi
cd /hey_yahel
pip3 install -U -r requirements.txt
echo "Starting hey_yahel...."
python3 bot.py
