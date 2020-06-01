# image: tapis/pearc20-demo
from tapis/flaskbase

USER root

RUN rm -r /home/tapis/tapy
RUN git clone https://github.com/tapis-project/python-sdk.git tapy
RUN pip install -r /home/tapis/tapy/requirements.txt

ADD configschema.json /home/tapis/configschema.json
ADD config-dev-develop.json /home/tapis/config.json

RUN chown -R tapis:tapis /home/tapis

RUN pip install jupyter scipy pandas

RUN mkdir /home/tapis/tapy/dyna

RUN cp -r /home/tapis/tapy/tapy/dyna/* /home/tapis/tapy/dyna

RUN pip install matplotlib

ADD tapis_notebook.ipynb /home/tapis/tapy/

USER tapis

WORKDIR /home/tapis/tapy

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0","tapis_notebook.ipynb"]
