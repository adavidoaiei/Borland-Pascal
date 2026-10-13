{ BOUNCE.PAS - animation with Delay and KeyPressed }
program Bounce;
uses Crt;
var
  X, Y, DX, DY: Integer;
begin
  ClrScr;
  TextColor(LightGray);
  GotoXY(2, 1); Write('Bouncing ball - press any key to stop');
  X := 10; Y := 5; DX := 1; DY := 1;
  repeat
    GotoXY(X, Y);
    Write(' ');
    X := X + DX;
    Y := Y + DY;
    if (X <= 1) or (X >= 79) then DX := -DX;
    if (Y <= 2) or (Y >= 24) then DY := -DY;
    GotoXY(X, Y);
    TextColor(Yellow);
    Write(#2);
    Delay(25);
  until KeyPressed;
  ReadKey;
  ClrScr;
  WriteLn('Done.');
end.
