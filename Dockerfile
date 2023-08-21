FROM tensorflow/tensorflow:latest-gpu
WORKDIR /src
COPY pip-packages.txt pip-packages.txt
RUN apt-get update
RUN add-apt-repository ppa:mscore-ubuntu/mscore-stable
RUN apt-get install musescore -y
RUN pip install --upgrade pip
RUN pip install --upgrade -r pip-packages.txt
EXPOSE 8888
ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root","--no-browser"]