# Stage 1: Build the React application
FROM node:20-alpine AS build

WORKDIR /app

# Dependency files copy karein
COPY package*.json ./

# Dependencies install karein
RUN npm install

# Baqi sara code copy karein
COPY . .

# React app ko build karein (is se 'dist' folder banega)
RUN npm run build

# Stage 2: Serve the app using Nginx
FROM nginx:stable-alpine

# Nginx ki default files delete karein
RUN rm -rf /usr/share/nginx/html/*

# Stage 1 se 'dist' folder ka content Nginx folder mein copy karein
COPY --from=build /app/dist /usr/share/nginx/html

# Agar aap React Router use kar rahe hain toh Nginx config lazmi hai
# (Niche di gayi line optional hai agar simple site hai)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
