FROM  ubuntu:16.04

MAINTAINER  thelastsheep@hotmail.com

LABEL uk.ac.sanger.cgp="Cancer Genome Project, Wellcome Trust Sanger Institute" \
      version="0.0.1" \
      description="The CGP cgpNgsQC for dockstore.org"

USER  root

ENV OPT /opt/wtsi-cgp
ENV PATH $OPT/bin:$PATH
ENV PERL5LIB $OPT/lib/perl5

## USER CONFIGURATION
RUN adduser --disabled-password --gecos '' ubuntu && chsh -s /bin/bash && mkdir -p /home/ubuntu

RUN mkdir -p $OPT/bin

ADD build/apt-build.sh build/
RUN bash build/apt-build.sh

ADD build/perllib-build.sh build/
RUN bash build/perllib-build.sh

ADD build/opt-build.sh build/
RUN bash build/opt-build.sh

USER    ubuntu
WORKDIR /home/ubuntu

CMD ["/bin/bash"]
