FROM node:23.11.0-alpine3.20 as build 
WORKDIR /app

COPY package*.json .
RUN npm install 
RUN npm install tsx
COPY . .


FROM node:23.11.0-alpine3.20 as runner 
WORKDIR /app
COPY --from=build /app .
CMD [ "npx","tsx","index.ts" ]


