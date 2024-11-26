# Base Image 구성
FROM nginx:latest
# nginx html 경로 지정
WORKDIR /usr/share/nginx/html

# 시스템 패키지 업데이트 및 git 설치
RUN apt update  && apt install -y git && apt clean && rm -rf /var/lib/apt/lists/*
COPY 3d.city /usr/share/nginx/html
# nginx 파일
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 포트 지정
EXPOSE 80

# nginx 데몬 실행
CMD ["nginx", "-g", "daemon off;"]