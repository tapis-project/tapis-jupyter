
FROM jupyter/tensorflow-notebook

RUN git clone https://github.com/tapis-project/python-sdk.git tapy

RUN git clone https://github.com/tapis-project/flaskbase.git
RUN cp -r /home/jovyan/flaskbase/common /home/jovyan/common

ADD tapis_notebook.ipynb tapy/

RUN pip install -r tapy/requirements.txt

RUN pip install openapi-core==0.11.1

RUN cd tapy; git pull; git checkout demo

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0","tapy/tapis_notebook.ipynb"]
