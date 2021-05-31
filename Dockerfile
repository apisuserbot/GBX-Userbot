# We're using Ubuntu 20.10
FROM biansepang/weebproject:buster

# GBX MEN
# Clone repo and prepare working directory
# GBX MEN
RUN git clone -b GBX-Userbot https://github.com/apisuserbot/GBX-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/apisuserbot/GBX-Userbot/GBX-Userbot/requirements.txt

CMD ["python3","-m","userbot"]
