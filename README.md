# README

## 自動日報送信システムレポくん

## 概要

- wheneverを用いたタスク自動化
- xlsxファイルの読み込み
- LINE APIを使いBOT作成

## 制作意図

- 前職において、１日の生産量を集計、メールでの報告をしていました。
常々、自動化をしたいと思っていたことから実装。

## 使用例

### 前職を想定した使用例
- 6mm 100×410の鉄板 ◯◯枚 = ◯◯kg、9mm 200×500の鉄板 ◯◯枚 = ◯◯kg のような場合、集計したいのは重量のため、
◯◯kgの数字をxlsxファイルに入力。1日に1つの列を使用、セルに数字を入れておくだけで設定時刻に集計、送信される。
列 1 = 月 2 = 火 3 = 水 4 = 木 5 = 金
金曜日には週の合計、1日の平均も算出、送信される。