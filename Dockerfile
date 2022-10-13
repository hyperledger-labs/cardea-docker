FROM ghcr.io/indicio-tech/aries-cloudagent-python:0.7.4-ssl
RUN pip3 install aries-acapy-plugin-data-transfer@git+https://github.com/Indicio-tech/aries-acapy-plugin-data-transfer@fix/0.7.x-compat
RUN pip3 install acapy-plugin-qa@git+https://github.com/Indicio-tech/acapy-plugin-qa@38d3b368b535f478c6ed124fa5ac590b57e43b2d

