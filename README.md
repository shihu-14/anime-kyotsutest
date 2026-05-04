# anime-kyotsutest

アニメ・漫画を題材にした共通テスト風の問題冊子です。メインの TeX ソースは `kyotutest_anime.tex` で、生成済み PDF は `out/` に出力します。

## PDF

- 問題冊子: [`out/kyotutest_anime.pdf`](out/kyotutest_anime.pdf)
- マーク付き版: [`out/kyotutest_anime_onlymark.pdf`](out/kyotutest_anime_onlymark.pdf)

GitHub の PDF プレビューで `Unable to render code block` が出る場合は、PDF ファイル画面の **Download raw file** から開いてください。リポジトリ上の PDF は binary として管理しています。

## コンパイル方法

LuaLaTeX と latexmk が使える TeX 環境を用意して、リポジトリ直下で次を実行します。

```sh
make
```

PDF は `out/kyotutest_anime.pdf` に生成されます。`.aux` や `.log`、TeX Live の一時キャッシュなどの中間ファイルは、PDF 生成後に削除されます。

別の TeX ファイルを指定してコンパイルしたい場合は、次のように `MAIN` を指定します。

```sh
make MAIN=kyotutest_anime_onlymark
```
