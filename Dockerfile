FROM ubuntu:22.04

ARG username=jackhxs

RUN apt update && \
    apt install -y --no-install-recommends python3 python3-pip sudo && \
    python3 -m pip install ansible

RUN useradd \
    --create-home \
    --shell /bin/bash \
    --groups sudo \
    --user-group \
    $username \
    && mkdir -p /etc/sudoers.d \
    && echo "$username ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$username \
    && chmod 0440 /etc/sudoers.d/$username

USER $username
WORKDIR /home/$username/pangu
COPY ./ ./

RUN ["ansible-playbook", "--verbose", "playbooks/dev_box.yml"]
