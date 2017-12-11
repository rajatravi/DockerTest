FROM nginx:latest
RUN apt-get update && apt-get install -y openssh-server
RUN sed -i "s/#PasswordAuthentication yes/PasswordAuthentication no/" /etc/ssh/sshd_config
RUN mkdir -p /root/.ssh
COPY authorized_keys /root/.ssh/authorized_keys
COPY index.html /usr/share/nginx/html/index.html
RUN apt-get install net-tools
ENV NAME rajat
ENV ORG  opstree
ENV TEAM Bootcamp
ENV TASK Docker
EXPOSE 22
