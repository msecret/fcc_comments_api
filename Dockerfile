FROM dockerfile/nodejs
MAINTAINER Marco Secret, msegreto@miceover.com

VOLUME ['/srv/app']

WORKDIR /srv/app

RUN npm install mongodb-rest

EXPOSE 80

CMD ['mongodb-rest']
