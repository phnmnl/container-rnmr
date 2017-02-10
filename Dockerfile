FROM ubuntu:16.04

LABEL software=rnmr
LABEL software.version=1.1.9
LABEL version=0.1

LABEL Description="rNMR: open source software for identifying and quantifying metabolites in NMR spectra."

MAINTAINER PhenoMeNal-H2020 Project <phenomenal-h2020-users@googlegroups.com>


# Environment variables needed for installing with xvfb
ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=":1"
ENV PATH="/usr/local/bin/:/usr/local/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/bin:/sbin"
ENV PKG_CONFIG_PATH="/usr/lib64/pkgconfig:/usr/lib/pkgconfig:/usr/local/lib64/pkgconfig:/usr/local/lib/pkgconfig"
ENV LD_LIBRARY_PATH="/usr/lib64:/usr/lib:/usr/local/lib64:/usr/local/lib"

# Install dependencies
RUN echo "no"
RUN apt-get -y update
RUN apt-get -y install apt-utils coreutils git r-base r-cran-tcltk2 subversion subversion-tools wget xfonts-75dpi xfonts-100dpi xfstt xinit xterm xvfb

# Fetch rNMR
WORKDIR /usr/src
RUN svn checkout svn://svn.code.sf.net/p/rnmr/code/ rnmr-code

# Install rNMR
RUN /usr/bin/xvfb-run R -e "install.packages(\"/usr/src/rnmr-code/current\ release/rNMR\", repos=NULL, type=\"source\")"

# Remove rNMR sources to save space
RUN rm -rf /usr/src/rnmr-code
