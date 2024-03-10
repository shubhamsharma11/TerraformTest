# Use an official Node runtime as a parent image
FROM node:14 as build-stage

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY vue-app-client/package*.json ./

# Install dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY ./vue-app-client/ .

# Build the Vue.js app
RUN npm run build

# Use a smaller, Alpine-based image for the production environment
FROM nginx:alpine

# Copy the built files from the build-stage to the nginx web root
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
