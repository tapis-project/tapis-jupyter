# image: tapis/pearc20-demo-actor
# build it:
#     docker build -t tapis/pearc20-demo-actor .
# try it locally:
#     docker run -it -e MSG='{"inst_id": "Ohio_River_Robert_C_Byrd_Locks", "project_id": "wq_demo_project", "site_id": "wq_demo_site", "time": "2020-05-26T22:16:25Z"}' tapis/pearc20-demo-actor

from tapis/dynatapy
ADD requirements.txt /home/tapis/requirements.txt
RUN pip install -r /home/tapis/requirements.txt

ADD actor.py /home/tapis/actor.py
USER root
RUN chmod -R a+rwx /home/tapis
USER tapis
ENTRYPOINT ["python", "/home/tapis/actor.py"]

