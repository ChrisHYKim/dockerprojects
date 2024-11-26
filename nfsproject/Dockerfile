FROM ubuntu:22.04

# nfs 패키지 설치
RUN apt update && \
    apt -y install nfs-kernel-server && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /export/share && \
    chmod 755 /export/share && \
    chown nobody:nogroup /export/share

# /etc/exports 설정 (NFS 공유 디렉토리 설정)
COPY exports /etc/exports
COPY nfs.conf /etc/nfs.conf

WORKDIR /usr/local/bin
COPY nfs4start.sh /usr/local/bin
RUN chmod +x /usr/local/bin/nfs4start.sh

# NFSv4 PORT 등록 
EXPOSE 2049 111

ENTRYPOINT ["/usr/local/bin/nfs4start.sh"]