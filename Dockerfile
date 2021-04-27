# NAMA FILE: Dockerfile

FROM node:14

WORKDIR /usr/src/app/frontend
COPY . .

RUN npm i
RUN npm run build

EXPOSE 5000
CMD ["npm","start"]
