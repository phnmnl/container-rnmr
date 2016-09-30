FROM ubuntu:16.04

MAINTAINER PhenoMeNal-H2020 Project <phenomenal-h2020-users@googlegroups.com>

LABEL Description="rNMR: open source software for identifying and quantifying metabolites in NMR spectra."

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

# Run xvfb
#WORKDIR /root
#ADD xinitrc /root/.xinitrc
#RUN chmod +x /root/.xinitrc
#RUN echo -n > /root/.Xauthority
#RUN dd if=/dev/urandom count=1 | sha256sum | sed -e "s/^/add $DISPLAY . /" | sed -e "s/ \-.*//" | /usr/bin/xauth -f /root/.Xauthority -q
#RUN xinit -- /usr/bin/Xvfb $DISPLAY -screen 0 800x600x16 -dpi 75 -nolisten tcp -audit 4 -ac -auth /root/.Xauthority 1>&2 2>/dev/null

# Install rNMR
RUN /usr/bin/xvfb-run R -e "install.packages(\"/usr/src/rnmr-code/current\ release/rNMR\", repos=NULL, type=\"source\")"
