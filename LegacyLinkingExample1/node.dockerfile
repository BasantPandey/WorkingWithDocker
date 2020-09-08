# Build: docker build -f node.dockerfile -t basantpandey/node .
# Login: docker login --username=basantpandey
# Push: docker Push  basantpandey/node

# Option 1
# Start MongoDB and Node (link Node to MongoDB container with legacy linking)

# docker run -d --name my-mongodb mongo
# docker run -d -p 3000:3000 --link my-mongodb:mongodb --name nodeapp basantpandey/node
# Run: docker exec nodeapp node dbSeeder.js

FROM node:latest

LABEL author="Basant Pandey"

ENV NODE_ENV=development 
ENV PORT=3000

COPY      . /var/www
WORKDIR   /var/www

RUN       npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]