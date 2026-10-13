{ PRIMES.PAS - Sieve of Eratosthenes }
program Primes;
const
  Max = 500;
var
  Sieve: array[2..Max] of Boolean;
  i, j, Count: Integer;
begin
  for i := 2 to Max do Sieve[i] := True;
  for i := 2 to Max do
    if Sieve[i] then
    begin
      j := i * 2;
      while j <= Max do
      begin
        Sieve[j] := False;
        j := j + i;
      end;
    end;
  Count := 0;
  for i := 2 to Max do
    if Sieve[i] then
    begin
      Write(i:5);
      Inc(Count);
      if Count mod 12 = 0 then WriteLn;
    end;
  WriteLn;
  WriteLn;
  WriteLn(Count, ' primes below ', Max);
end.
