
from tapis/flaskbase

USER root

RUN git clone https://github.com/tapis-project/python-sdk.git gittapy

RUN cp -r gittapy/* /home/tapis/tapy
RUN pip install -r /home/tapis/tapy/requirements.txt
 
ADD configschema.json /home/tapis/configschema.json
ADD config-dev-develop.json /home/tapis/config.json
ADD tapis_notebook.ipynb /home/tapis/tapy/

RUN chown -R tapis:tapis /home/tapis

RUN pip install jupyter scipy

USER tapis

WORKDIR /home/tapis/tapy

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0","tapis_notebook.ipynb"]
