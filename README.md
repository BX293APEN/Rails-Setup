# Ruby on Rails 自動セットアップリポジトリ

## リポジトリのクローン&セットアップ
```bash
git clone https://github.com/BX293APEN/Rails-Setup.git
```
- GitHubからクローンすると改行コードがCRLFになっているため、`docker/start.sh`の改行コードをLFに変更すること

## Dockerの起動
```bash
cd docker
docker compose up --build -d
```

## ブラウザを開く
[Rails](http://localhost:3000/)

