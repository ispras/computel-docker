FROM ubuntu:20.04

ARG COMPUTEL_VERSION=1.2
ARG SAMTOOLS_VERSION=1.11

ENV TERM=xterm-256color \
    COMPUTEL_URL=https://github.com/lilit-nersisyan/computel/releases/download/v${COMPUTEL_VERSION}/computel.v${COMPUTEL_VERSION}.tar.gz \
    SAMTOOLS_URL=https://github.com/samtools/samtools/releases/download/${SAMTOOLS_VERSION}/samtools-${SAMTOOLS_VERSION}.tar.bz2

RUN apt update

# for install R
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt install -y\
    wget \
    unzip \
    dirmngr \
    gnupg \
    apt-transport-https \
    ca-certificates \
    software-properties-common \
    r-base

# Computel
RUN wget ${COMPUTEL_URL}; \
    tar -xf computel.v${COMPUTEL_VERSION}.tar.gz; \
    cd computel/; \
    chmod +x computel.sh; \
# Install bowtie2
    wget https://github.com/BenLangmead/bowtie2/releases/download/v2.4.4/bowtie2-2.4.4-linux-x86_64.zip; \
    unzip bowtie2-2.4.4-linux-x86_64.zip; \
    cd bowtie2-2.4.4-linux-x86_64/; \
    cp bowtie2* /usr/bin/; \
    cd ..; \
# Install samtools
    mkdir temp; \
    cd temp; \
    \
    wget ${SAMTOOLS_URL}; \
    tar -xf samtools-${SAMTOOLS_VERSION}.tar.bz2; \
    cd samtools-${SAMTOOLS_VERSION}; \
    \
    ./configure; \
    make; \
    make install; \
    \
    cd ..; \
    cp /usr/local/bin/samtools* /usr/bin/; \
    rm /usr/local/bin/samtools*

