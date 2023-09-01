# DockerイメージのベースをNode.js 14に設定します
FROM node:14

# 作業ディレクトリを/appに設定します
WORKDIR /app

# package.jsonファイルをコピーします
COPY package.json .

# npm installコマンドを実行して依存関係をインストールします
RUN npm install

# 全てのファイルをコピーします
COPY . .

# コンテナ内のポート3000を外部に公開します
EXPOSE 3000

# アプリケーションを起動します
CMD [ "node", "app.mjs" ]
