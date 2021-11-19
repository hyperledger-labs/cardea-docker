FROM bcgovimages/aries-cloudagent:py36-1.16-1_0.7.1
RUN pip3 install aries-acapy-plugin-data-transfer@git+https://github.com/Indicio-tech/aries-acapy-plugin-data-transfer@fix/0.7.x-compat