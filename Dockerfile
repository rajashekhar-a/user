FROM      node:18
RUN       useradd -ms /bin/bash roboshop
USER      roboshop
WORKDIR   /app
COPY      --chown=roboshop:roboshop package.json ./
COPY      --chown=roboshop:roboshop server.js ./
RUN       npm install
CMD       ["node", "server.js"]