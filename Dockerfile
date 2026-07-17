FROM mcr.microsoft.com/playwright:v1.59.1-jammy

RUN mkdir playwright-tests

WORKDIR playwright-tests

COPY . .

RUN npm ci

CMD ["npm", "run", "test"]