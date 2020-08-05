FROM ubuntu:latest
RUN apt update -y
RUN apt install zsh git -y
COPY . /tmp/git-katas
WORKDIR /tmp/git-katas
ENV SHELL /bin/zsh
ENTRYPOINT [ "zsh" ,"-c" ]
CMD ["source testzsh.sh"]