# Node.jsの公式イメージをベースとする
FROM node:latest

# /appディレクトリを作業ディレクトリとする
WORKDIR /app

# package.jsonとpackage-lock.jsonを/appにコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースコードをコンテナにコピー
COPY . .

# アプリケーションがリッスンするポートを指定
EXPOSE 3000

# アプリケーションを起動
CMD ["node", "app.js"]
