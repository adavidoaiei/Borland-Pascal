{ FIBO.PAS - recursion }
program Fibonacci;
var
  n: Integer;

function Fib(n: Integer): LongInt;
begin
  if n < 2 then
    Fib := n
  else
    Fib := Fib(n - 1) + Fib(n - 2);
end;

begin
  WriteLn('Fibonacci numbers');
  WriteLn('-----------------');
  for n := 0 to 24 do
    WriteLn('Fib(', n:2, ') = ', Fib(n):6);
end.
