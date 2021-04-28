# NAMA FILE: Dockerfile

FROM node:14

ENV NODE_ENV production

WORKDIR /usr/src/app/frontend
COPY . .

RUN npm i
RUN npm run build
RUN npm install serve -g

EXPOSE 3000
CMD ["serve","-p","3000","build"]
