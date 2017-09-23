FROM nathankw/centos6_essentials
LABEL maintainer "Nathaniel Watson nathankw@stanford.edu"

#Folders /srv/src and /srv/software were created in the base image.

#FASTX-Toolkit installation instructions at
# http://hannonlab.cshl.edu/fastx_toolkit/install_centos.txt

#Install pre-compiled binary from http://hannonlab.cshl.edu/fastx_toolkit/download.html
#extracts into /bin
RUN curl -O http://hannonlab.cshl.edu/fastx_toolkit/fastx_toolkit_0.0.13_binaries_Linux_2.6_amd64.tar.bz2 \
	&& tar -jxf fastx_toolkit_0.0.13_binaries_Linux_2.6_amd64.tar.bz2 \ 
	&& rm fastx_toolkit_0.0.13_binaries_Linux_2.6_amd64.tar.bz2

