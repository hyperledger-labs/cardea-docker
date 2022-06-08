FROM dbluhm/acapy:fix-default-mediator
RUN pip3 install aries-acapy-plugin-data-transfer@git+https://github.com/Indicio-tech/aries-acapy-plugin-data-transfer@fix/0.7.x-compat
RUN pip3 install acapy-plugin-qa@git+https://github.com/Indicio-tech/acapy-plugin-qa@bc82673b57f1fecc7c87dda4ec997154f6258dd7

