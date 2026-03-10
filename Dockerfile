FROM node:18

WORKDIR /app

RUN apt update && apt install -y git

RUN git clone https://github.com/EvolutionAPI/evolution-api .

RUN npm install

EXPOSE 8080

CMD ["npm","run","start"]
