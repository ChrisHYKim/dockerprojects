#!/bin/bash


echo "NFS Service Start.."
    
# rpcbind 구성
echo "rpcbind service"
# nfs 서비스 등록 
rpcbind
mountd
nfs
SHARE_CHECK="/export/share"
if [ -d "$SHARE_CHECK" ]; then
    echo "$SHARE_CHECK 디렉토리 이미 존재"
else
    echo "$SHARE_CHECK 디렉토리가 존재하지 않습니다."
    exit 1
fi

chmod 755 "$SHARE_CHECK"
chown nobody:nogroup /export/share

#  NFS Reload
exportfs -r
    
# nfsd 서비스 실행
echo "nfsd service ready..."
/usr/sbin/rpc.nfsd -V 4
    
# nfsd 서비스 상태 조회
if ! pgrep -x "rpc.nfsd" > /dev/null; then
    echo "Error: rpc.nfsd failed to start."
    exit 1
else
    echo "rpc.nfsd service is running successfully."
fi
echo "NFS V4Service Success.."
    
tail -f /dev/null