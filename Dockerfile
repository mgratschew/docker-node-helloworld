FROM node:16

# Create app dir
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copying all the file
COPY package.json .

RUN npm install

# Copy other files too
COPY ./ .


EXPOSE 3000

CMD ["npm","start"]