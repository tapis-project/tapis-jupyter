# image: tapis/pearc20-demo
from tapis/flaskbase

USER root

RUN pip install jupyter scipy pandas matplotlib

RUN rm -r /home/tapis/tapy
RUN git clone https://github.com/tapis-project/python-sdk.git tapy
ADD tapis_notebook.ipynb /home/tapis/tapy/
ADD images /home/tapis/tapy/images
RUN pip install -r /home/tapis/tapy/requirements.txt

ADD configschema.json /home/tapis/configschema.json
ADD config-dev-develop.json /home/tapis/config.json


RUN mkdir /home/tapis/tapy/dyna

RUN cp -r /home/tapis/tapy/tapy/dyna/* /home/tapis/tapy/dyna

ADD actor/* /home/tapis/tapy/actor/

RUN chown -R tapis:tapis /home/tapis
RUN chmod 777 /home/tapis/tapy/*
USER tapis

WORKDIR /home/tapis/tapy

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0","tapis_notebook.ipynb"]
