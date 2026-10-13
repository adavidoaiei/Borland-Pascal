{ LISTS.PAS - records and pointers }
program Lists;
type
  PNode = ^TNode;
  TNode = record
    Name: string;
    Age: Integer;
    Next: PNode;
  end;
var
  Head, P: PNode;

procedure Push(const AName: string; AAge: Integer);
var N: PNode;
begin
  New(N);
  N^.Name := AName;
  N^.Age := AAge;
  N^.Next := Head;
  Head := N;
end;

function Count: Integer;
var C: Integer;
    Q: PNode;
begin
  C := 0; Q := Head;
  while Q <> nil do begin Inc(C); Q := Q^.Next; end;
  Count := C;
end;

begin
  Head := nil;
  Push('Ada', 36);
  Push('Niklaus', 78);
  Push('Anders', 63);
  Push('Philippe', 70);
  P := Head;
  while P <> nil do
  begin
    WriteLn(P^.Name:10, P^.Age:5);
    P := P^.Next;
  end;
  WriteLn('Total: ', Count, ' people');
end.
