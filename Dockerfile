# NAMA FILE: Dockerfile

FROM node:14

WORKDIR /usr/src/app/frontend
COPY . .

RUN npm i
RUN npm run build

EXPOSE 3000
CMD ["node","node_modules/react-scripts/scripts/start.js"]
