{ BOXES.PAS - text-mode windows with line-drawing characters }
program Boxes;
uses Crt;

procedure Box(X1, Y1, X2, Y2, Fore, Back: Integer; const Title: string);
var
  i, j: Integer;
begin
  TextColor(Fore);
  TextBackground(Back);
  GotoXY(X1, Y1); Write(#201);
  for i := X1 + 1 to X2 - 1 do Write(#205);
  Write(#187);
  for j := Y1 + 1 to Y2 - 1 do
  begin
    GotoXY(X1, j); Write(#186);
    for i := X1 + 1 to X2 - 1 do Write(' ');
    Write(#186);
  end;
  GotoXY(X1, Y2); Write(#200);
  for i := X1 + 1 to X2 - 1 do Write(#205);
  Write(#188);
  GotoXY(X1 + 2, Y1); Write(' ', Title, ' ');
  { shadow }
  TextBackground(Black);
  TextColor(DarkGray);
  for j := Y1 + 1 to Y2 + 1 do begin GotoXY(X2 + 1, j); Write(#177#177); end;
  GotoXY(X1 + 2, Y2 + 1);
  for i := X1 + 2 to X2 + 2 do Write(#177);
end;

begin
  TextBackground(Blue);
  ClrScr;
  Box(5, 3, 40, 12, White, Cyan, 'Hello');
  TextColor(Black); TextBackground(Cyan);
  GotoXY(8, 6);  Write('Text mode is still fun.');
  GotoXY(8, 8);  Write('CP437 box characters work.');
  Box(30, 9, 70, 20, Yellow, Red, 'Warning');
  TextColor(White); TextBackground(Red);
  GotoXY(34, 13); Write('Overlapping windows!');
  TextColor(LightGray); TextBackground(Black);
  GotoXY(1, 24);
  Write('Press any key');
  ReadKey;
  TextBackground(Black);
  ClrScr;
end.
