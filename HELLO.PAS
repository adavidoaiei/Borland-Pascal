{ HELLO.PAS - a first taste of Pascal }
program Hello;
uses Crt;
var
  i: Integer;
begin
  ClrScr;
  TextColor(Yellow);
  WriteLn('Hello, world!');
  TextColor(LightCyan);
  WriteLn('Borland Pascal lives on... in your browser.');
  WriteLn;
  for i := 1 to 10 do
  begin
    TextColor(i + 1);
    WriteLn(i:2, ' squared is ', i * i:3);
  end;
  TextColor(LightGray);
  WriteLn;
  Write('Press any key...');
  ReadKey;
end.
