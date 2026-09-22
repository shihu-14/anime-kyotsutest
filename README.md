# anime-kyotsutest

アニメを題材にした共通テスト風の問題である．メインの TeX ソースは `kyotutest_anime.tex` で，生成済み PDF は `out/` に出力する．

## コンパイル方法

LuaLaTeX と latexmk が使える TeX 環境を用意し，リポジトリ直下で次を実行する．

```sh
make
```

PDF は `out/kyotutest_anime.pdf` に生成される．`.aux` や `.log`などの中間ファイルは，PDF生成後に削除される．

別の TeX ファイルを指定してコンパイルしたい場合は，次のように `MAIN` を指定する．

```sh
make MAIN=kyotutest_anime_onlymark
```
