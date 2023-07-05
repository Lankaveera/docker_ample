# syntax=docker/dockerfile:1
#webhook
#hun  
FROM --platform=$BUILDPLATFORM node:18-alpine AS base

WORKDIR /app
COPY . .
RUN yarn install --production

CMD ["node", "src/index.js"]
EXPOSE 3000
