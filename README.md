# anime-kyotsutest

アニメ・漫画を題材にした共通テスト風の問題冊子である．メインの TeX ソースは `kyotutest_anime.tex` で，生成済み PDF は `out/` に出力する．

## PDF

- 問題冊子: [`out/kyotutest_anime.pdf`](out/kyotutest_anime.pdf)
- マーク付き版: [`out/kyotutest_anime_onlymark.pdf`](out/kyotutest_anime_onlymark.pdf)

GitHub の PDF プレビューで `Unable to render code block` が出る場合は，PDF ファイル画面の **Download raw file** から開く．リポジトリ上の PDF は binary として管理する．

## コンパイル方法

LuaLaTeX と latexmk が使える TeX 環境を用意し，リポジトリ直下で次を実行する．

```sh
make
```

PDF は `out/kyotutest_anime.pdf` に生成される．`.aux` や `.log`，TeX Live の一時キャッシュなどの中間ファイルは，PDF 生成後に削除される．

別の TeX ファイルを指定してコンパイルしたい場合は，次のように `MAIN` を指定する．

```sh
make MAIN=kyotutest_anime_onlymark
```
