# Menggunakan image Node.js versi 22
FROM node:22-alpine

# Set work directory
WORKDIR /app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh kode Next.js
COPY app .

# Build aplikasi Next.js
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Jalankan aplikasi Next.js
CMD ["npm", "run", "start"]
