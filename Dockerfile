FROM tensorflow/tensorflow:latest-gpu
WORKDIR /drumbot
RUN apt-get update
RUN add-apt-repository ppa:mscore-ubuntu/mscore-stable
RUN apt-get install musescore fluidsynth -y
RUN mkdir ./resources
RUN cp ../usr/share/sounds/sf2/FluidR3_GM.sf2 ./resources/font.sf2
COPY pip-packages.txt pip-packages.txt
RUN pip install --upgrade pip
RUN pip install --upgrade -r pip-packages.txt
RUN rm ./pip-packages.txt
EXPOSE 8888
ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root","--no-browser"]