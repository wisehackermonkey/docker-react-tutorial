FROM node:10.0.0

# setup folders
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

#	includes the nodemodules bin in the path
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# include dependncy information
COPY package.json /usr/src/app/package.json
RUN npm install

# run our react app
# NOTE for ci on travis cl or others dont run the app just build it
# CMD npm start

