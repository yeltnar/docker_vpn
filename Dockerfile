FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install openvpn -y
RUN apt-get install wget -y
RUN apt-get install unzip -y

RUN cd /etc/openvpn && wget -O openvpn.zip https://www.privateinternetaccess.com/openvpn/openvpn.zip && unzip openvpn.zip && pwd && ls

RUN cat "/etc/openvpn/US Houston.ovpn"
CMD openvpn "/etc/openvpn/US Houston.ovpn"
