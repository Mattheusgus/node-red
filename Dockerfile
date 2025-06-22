FROM nodered/node-red

WORKDIR /data

COPY flows.json .
COPY settings.js .
# COPY lib ./lib
# COPY nodes ./nodes

COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --production

# Expõe a porta padrão do Node-RED (1880)
EXPOSE 1880

CMD ["npm", "start", "--", "--userDir", "/data"]