# anime-kyotsutest

アニメ・漫画を題材にした共通テスト風の問題冊子です。メインの TeX ソースは `kyotutest_anime.tex` で、生成済み PDF は `out/kyotutest_anime.pdf` に出力します。

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
