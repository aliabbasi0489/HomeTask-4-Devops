# Use official Node image
FROM node:20

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy all other source code
COPY . .

# Build the React app
RUN npm run build

# Start the dev server (you can also switch to `serve` if desired)
EXPOSE 3000
CMD ["npm", "run", "dev"]
