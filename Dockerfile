# ベースイメージ
FROM node:20

# 環境変数の設定
ENV NODE_OPTIONS=--openssl-legacy-provider

# 作業ディレクトリの設定
WORKDIR /usr/src/app

# 依存関係のインストール
COPY package*.json ./
RUN npm install

# アプリケーションのコピー
COPY . .

# ポートの開放
EXPOSE 8081

# アプリケーションの起動
CMD ["npm", "start"]
