FROM node:20
WORKDIR /usr/src/app
ENV PORT=8000
ENV MODEL_URL=https://storage.googleapis.com/mlgc-rina-1/submissions-model/model.json
COPY . . 
RUN npm install
COPY package*.json ./
CMD [ "npm", "run", "start" ]