FROM node:22-alpine
# Tentukan direktori kerja
WORKDIR /app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh proyek ke dalam container
COPY . .

# Build aplikasi Next.js
RUN npm run build

# Expose port
EXPOSE 3000

# Jalankan Next.js
CMD ["npm", "run", "start"]