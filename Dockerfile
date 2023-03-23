FROM node:14-alpine

WORKDIR /workspace

COPY package.json /workspace/

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "run", "start:prod"]