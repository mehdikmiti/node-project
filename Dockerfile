FROM node:18.5.0

# create a folder inside the container called app, and define it as a working directory
WORKDIR /app

# copy the package.json file into the working directory
COPY package.json .

# Install dependencies from packages.json
RUN npm install

# copy everything in the project folder to the working directory
COPY . .

# Difine the port that the container should listen on(It is just for documentation and not useful at all)
EXPOSE 4000

# Command for container to execute(note that we already defined this new command in the package.json file)
CMD [ "npm","start" ]