FROM frekele/ant:latest

# install git
RUN apt-get -y update \
    && apt-get -y install git

# download checkstyle
RUN wget https://github.com/checkstyle/checkstyle/releases/download/checkstyle-9.1/checkstyle-9.1-all.jar -P /usr/local/bin/
