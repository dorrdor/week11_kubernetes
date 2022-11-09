FROM node:14-alpine

#ENV OKTA_ORG_URL=https://dev-00420313.okta.com 
#ENV OKTA_CLIENT_ID=0oa60sxd5iHgoPNCK5d7
#ENV OKTA_CLIENT_SECRET=kQZmw7l9ZDn1e7VF2zhPZrwyA5e3IDeXZDk_an3k
#ENV COOKIE_ENCRYPT_PWD=superAwesomePasswordStringThatIsAtLeast32CharactersLong!
#create app directory
WORKDIR /home/adminuser/myagent/_work/1/s/

COPY . .

RUN npm install &&\
    npm audit fix &&\
    npm init -y &&\
    npm run initdb

CMD npm run dev
