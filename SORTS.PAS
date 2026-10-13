{ SORTS.PAS - arrays, procedures, var parameters }
program Sorts;
const
  N = 16;
type
  TList = array[1..N] of Integer;
var
  A: TList;
  i: Integer;

procedure Swap(var X, Y: Integer);
var T: Integer;
begin
  T := X; X := Y; Y := T;
end;

procedure Show(const Title: string; var L: TList);
var k: Integer;
begin
  Write(Title, ': ');
  for k := 1 to N do Write(L[k], ' ');
  WriteLn;
end;

procedure BubbleSort(var L: TList);
var
  Pass, k: Integer;
  Done: Boolean;
begin
  for Pass := 1 to N - 1 do
  begin
    Done := True;
    for k := 1 to N - Pass do
      if L[k] > L[k + 1] then
      begin
        Swap(L[k], L[k + 1]);
        Done := False;
      end;
    if Done then Break;
  end;
end;

begin
  Randomize;
  for i := 1 to N do A[i] := Random(90) + 10;
  Show('Before', A);
  BubbleSort(A);
  Show('After ', A);
end.
