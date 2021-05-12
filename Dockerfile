FROM quay.io/centos/centos:centos7


COPY entrypoint.sh /

RUN yum install -y wget sysvinit-tools net-tools iproute && \
    wget --no-check-certificate https://support.arraynetworks.net/prx/001/http/supportportal.arraynetworks.net/downloads/pkg_9_4_0_385/MP_Linux_1.2.9/MotionPro_Linux_CentOS_x64_build-8.sh && \
    chmod +x MotionPro_Linux_CentOS_x64_build-8.sh && \
    ./MotionPro_Linux_CentOS_x64_build-8.sh


ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "--help" ]
