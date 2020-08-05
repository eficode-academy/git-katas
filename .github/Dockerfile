FROM ubuntu
RUN apt update -y
RUN apt install zsh git -y
WORKDIR /tmp/git-katas/basic-commits
COPY . /tmp/git-katas
ENV SHELL /bin/zsh
CMD ["zsh"],["source"] , ["setup.sh"]