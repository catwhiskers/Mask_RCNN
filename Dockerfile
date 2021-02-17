FROM 763104351884.dkr.ecr.us-west-2.amazonaws.com/tensorflow-training:1.15.4-gpu-py36-cu100-ubuntu18.04

RUN apt update
RUN apt install -y python3-opencv

RUN git clone https://github.com/catwhiskers/Mask_RCNN.git && cd Mask_RCNN && pip install -r requirements.txt && python setup.py install  

WORKDIR Mask_RCNN

ENTRYPOINT train

