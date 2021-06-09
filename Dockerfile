FROM floralscrown/evilcat:test

#clonning repo 
RUN git clone -b bugs https://github.com/floralscrown/evilcat.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
