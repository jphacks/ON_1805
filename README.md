# Wish Labo

[![Wish Labo](https://github.com/jphacks/ON_1805/blob/readme/picture/wishlabo.png)](https://www.youtube.com/watch?v=Hf252VSwvuc&feature=youtu.be)

アプリケーションURL:https://wishlab.herokuapp.com
## 製品概要
### Statistic X Tech

### 背景（製品開発のきっかけ、課題等）

- 研究室配属に向けて，自分が配属を希望する研究室の希望者数や希望者の平均GPAなどの情報がわからず，希望研究室が決めづらいという現状があった。

### 製品説明（具体的な製品の説明）
ユーザーが学籍番号やGPA,希望研究室を登録してログインすると，研究室毎の希望者人数と希望者の平均GPAが1枚のグラフにまとめられて表示される。

### 特長

#### 1. 研究室の希望者人数と希望者の平均GPAが1枚のグラフでわかりやすく表示される

#### 2. ログイン機能があり，ユーザー同士のプライバシーが守られている。

#### 3. 自分自身の希望研究室とGPAが気軽に確認できる。

### 解決出来ること
全体の研究室毎の希望者数や平均GPAなどの情報を知ることでより希望研究室を決めやすくなる。

### 今後の展望
- 第1希望だけではなく，第2第3希望まで登録や集計結果のグラフ表示ができるようにする。
- メール認証を用いて成りすましを防ぐ
- 他の学生なども使いやすくするように仕様を変更
## 開発内容・開発技術
### 活用した技術
#### API・データ
* 
* 
* 

#### フレームワーク・ライブラリ・モジュール
* Ruby on Rails
* Docker 
* chart.js 
* HerokuDB その他
#### デバイス
* 
* 

### 研究内容・事前開発プロダクト（任意）
* 事前開発プロダクト
* 遷移図   
<img src="https://github.com/jphacks/ON_1805/blob/readme/picture/S__50069557.jpg" width="500">

* モデル図
<img src="https://github.com/jphacks/ON_1805/blob/readme/picture/S__50069558.jpg" width="500">

* ファイル構成と遷移図2
<img src="https://github.com/jphacks/ON_1805/blob/readme/picture/S__50069559.jpg" width="500">

### 独自開発技術（Hack Dayで開発したもの）
#### 2日間に開発した独自の機能・技術
入力フォームで入力された希望研究室やGPAの情報をchart.jsを用いて１つのグラフとして表示させた。
