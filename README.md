# Online Education Rails

オンラインの教育サービスをモデルとして開発するアプリケーションです。

Ruby on Railsの理解を深めることが主な開発目的になります。
- バージョン8.0.0.rc1で開発をスタートし、新機能を試したりしながらの開発になります。
  - Solidを試すためSQLはSQLiteを選択
  - rails newで生成した.devcontainerを置いていますが、JetBrainsのDev Container機能では正しく動作しないため、しばらくは別途開発環境用のdocker-composeファイルを定義予定です。
- なるべくRails Wayの限界を試したいと考えているため、DDDなどで使われるレイヤードアーキテクチャのような設計は避ける予定です。

## Usage

```shell
docker compose build

docker compose run --rm app bundle install

docker compose run --rm app yarn install

docker compose run --rm app bin/rails db:migrate

docker compose up
```
