Japanese/ [English](README.md)

# Windows Bitmap file 出力サンプル

##概要

Windows Bitmap fileを管理するクラスとその利用例。
エンディアン修正はしていないので、ビッグエンディアンの
マシンを使う際には適宜修正のこと。

## 使い方

$ make
$ ./bm

##ファイル:

* bm.cc bm.h
  WindowsBitmap クラス。Drawメソッド群やSave機能を持つ。

*draw3d.cc draw3d.h
 手抜き一次変換クラス。

*test.bmp
  出力ビットマップファイル

## WindowsBitmapクラスのメソッドの説明：

	WindowsBitmap::WindowsBitmap(int w, int h)
        コンストラクタ。ビットマップファイルの幅と高さを受け取る。

    WindowsBitmap::SetColor(BYTE red,BYTE green,BYTE blue)
        カレントカラー変更。RGBのそれぞれの輝度を0〜255で指定。

    WindowsBitmap::DrawPoint(int x, int y)
        指定の場所に点を描画。

    WindowsBitmap::MoveTo(int x, int y)
        カレントポジションを(x,y)に移動

    WindowsBitmap::LineTo(int x, int y)
        カレントポジションから(x,y)に直線をひく

    WindowsBitmap::FillRect(int x, int y, int w, int h)
        (x,y)から幅w, 高さhの長方形を塗りつぶし

    WindowsBitmap::DrawCircle(int x, int y, int r)
        (x,y)に半径rの円を描画

    WindowsBitmap::FillCircle(int x, int y, int r)
        (x,y)に半径rの円を描画して塗りつぶし

    WindowsBitmap::SaveToFile(const char* filename)
        描画内容をファイルに保存
