{ GUESS.PAS - input and a loop }
program Guess;
uses Crt;
var
  Secret, Try, Tries: Integer;
begin
  Randomize;
  ClrScr;
  Secret := Random(100) + 1;
  Tries := 0;
  WriteLn('I am thinking of a number from 1 to 100.');
  repeat
    Write('Your guess? ');
    ReadLn(Try);
    Inc(Tries);
    if Try < Secret then WriteLn('Too low!')
    else if Try > Secret then WriteLn('Too high!');
  until Try = Secret;
  WriteLn('Correct! You needed ', Tries, ' guesses.');
end.
