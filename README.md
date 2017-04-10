[Japanese](README_ja.md)/ English

# Sample file to make Windows Bitmap file

## Summary

Sample source codes to make Windows Bitmap File.
Note that this sample does not take care of byte order. 

usage:

    $ make
    $ ./bm

# Files

* bm.cc bm.h
    * WindowsBitmap class.

* draw3d.cc draw3d.h
    * Linear transformation class which uses WindowsBitmap class.

* test.bmp
    * An output file.

Methods descriptions:

- WindowsBitmap::WindowsBitmap(int w, int h)
    - A constructor which requires width and height of a bitmap file.

- WindowsBitmap::SetColor(BYTE red,BYTE green,BYTE blue)
    - Set color of current color.

- WindowsBitmap::DrawPoint(int x, int y)
    - Draw a point at (x,y)

- WindowsBitmap::MoveTo(int x, int y)
    - Move the current point to (x,y)

- WindowsBitmap::LineTo(int x, int y)
    - Draw a line from the current point to (x,y) with the current color.

- WindowsBitmap::FillRect(int x, int y, int w, int h)
    - Draw and fill a rectangle at (x,y) with width w and height h.

- WindowsBitmap::DrawCircle(int x, int y, int r)
    - Draw a circle at (x,y) with radius r.

- WindowsBitmap::SaveToFile(const char\* filename)
    - Save a bitmap file to filename.
