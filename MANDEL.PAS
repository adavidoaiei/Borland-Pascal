{ MANDEL.PAS - the Mandelbrot set in text mode }
program Mandel;
uses Crt;
const
  Cols = 78;
  Rows = 24;
  MaxIter = 40;
var
  X, Y, Iter: Integer;
  Cr, Ci, Zr, Zi, T: Real;
begin
  ClrScr;
  for Y := 0 to Rows - 1 do
  begin
    for X := 0 to Cols - 1 do
    begin
      Cr := -2.2 + X * 3.2 / Cols;
      Ci := -1.15 + Y * 2.3 / Rows;
      Zr := 0; Zi := 0; Iter := 0;
      while (Iter < MaxIter) and (Zr * Zr + Zi * Zi < 4) do
      begin
        T := Zr * Zr - Zi * Zi + Cr;
        Zi := 2 * Zr * Zi + Ci;
        Zr := T;
        Inc(Iter);
      end;
      if Iter = MaxIter then
      begin
        TextColor(Black); Write(' ');
      end
      else
      begin
        TextColor(9 + Iter mod 7);
        case Iter mod 4 of
          0: Write(#176);
          1: Write(#177);
          2: Write(#178);
          3: Write(#219);
        end;
      end;
    end;
    WriteLn;
  end;
  TextColor(LightGray);
  Write('Press any key');
  ReadKey;
end.
