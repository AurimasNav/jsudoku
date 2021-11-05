FROM frekele/ant:latest

# Download and extract apache ant to opt folder
RUN apt-get -y update
RUN apt-get -y install git