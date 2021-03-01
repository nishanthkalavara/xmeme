apt update -y
apt install software-properties-common -y
add-apt-repository ppa:deadsnakes/ppa -y
apt install python3.8 -y
apt install virtualenv -y
/usr/bin/virtualenv -p python3.8 venv
. venv/bin/activate
pip install --upgrade pip
pip install fastapi
pip install uvicorn
pip install sqlalchemy
uvicorn app.main:app --host 127.0.0.1 --port 8081 --reload &




