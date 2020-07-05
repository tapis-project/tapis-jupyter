# image: tapis/pearc20-demo-actor
# build it:
#     docker build -t tapis/pearc20-demo-actor .
# try it locally:
#     docker run -it -e MSG='{"inst_id": "Ohio_River_Robert_C_Byrd_Locks", "project_id": "wq_demo_tapis_proj12020-06-25T13:14:38.961431", "site_id": "wq_demo_site", "time": "2020-06-25T22:16:25Z"}' --rm tapis/pearc20-demo-actor

from python:3.7
RUN useradd tapis
ADD requirements.txt /home/tapis/requirements.txt
RUN pip install -r /home/tapis/requirements.txt
RUN pip install git+https://github.com/tapis-project/tapipy#egg=tapipy

ADD actor.py /home/tapis/actor.py
RUN chown -R tapis:tapis /home/tapis
RUN chmod -R a+rwx /home/tapis

USER tapis
WORKDIR /home/tapis

ENTRYPOINT ["python", "/home/tapis/actor.py"]

