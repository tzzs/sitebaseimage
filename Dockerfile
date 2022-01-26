FROM ossobv/uwsgi-python:latest

ENV TZ Asia/Shanghai

ADD tuna/sources.list /etc/apt/

RUN touch /etc/apt/apt.conf.d/99verify-peer.conf \
    && echo >>/etc/apt/apt.conf.d/99verify-peer.conf "Acquire { https::Verify-Peer false }" \
    && pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install pip -U
