FROM ubuntu:18.04
COPY build/* /dckr.build/
RUN cd /dckr.build && chmod u+x *.sh && ./base.sh && ./bash-completion.sh && ./sshd.sh  && ./locate.sh && ./tools.sh && ./clean.sh
