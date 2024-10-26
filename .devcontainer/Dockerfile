FROM node:18

WORKDIR /app
USER root

RUN apt-get update 
RUN apt-get install -y git
RUN npm install -g pnpm@9.11.0 nuxt

# Clone repositories
RUN git clone https://github.com/nuxt-service-layers/app-template.git ./app-template && \
    cd ./app-template && pnpm install

RUN git clone https://github.com/nuxt-service-layers/user.git ./user && \
    cd ./user && pnpm install

RUN git clone https://github.com/nuxt-service-layers/mongo.git ./mongo && \
    cd ./mongo && pnpm install

RUN git clone https://github.com/nuxt-service-layers/sqlite.git ./sqlite && \
    cd ./sqlite && pnpm install

RUN git clone https://github.com/nuxt-service-layers/postgres.git ./postgres && \
    cd ./postgres && pnpm install

RUN git clone https://github.com/nuxt-service-layers/database.git ./database && \
    cd ./database && pnpm install

RUN git clone https://github.com/nuxt-service-layers/firebase.git ./firebase && \
    cd ./firebase && pnpm install

RUN git clone https://github.com/nuxt-service-layers/base.git ./base && \
    cd ./base && pnpm install

# Copy startup script and make it executable
COPY ./startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh

EXPOSE 3000
