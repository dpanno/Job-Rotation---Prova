program Fibonacci;

uses
  SysUtils;

function pertenceFibonacci(n: integer): boolean;
var
  a, b: integer;
begin
  a := 0;
  b := 1;
  while b < n do
  begin
    a := b;
    b := a + b;
  end;
  if b = n then
    Result := True
  else
    Result := False;
end;

function calcularFibonacci(n: integer): TArray<integer>;
var
  i: integer;
  fibonacci: TArray<integer>;
begin
  SetLength(fibonacci, n+1);
  fibonacci[0] := 0;
  fibonacci[1] := 1;
  for i := 2 to n do
  begin
    fibonacci[i] := fibonacci[i-1] + fibonacci[i-2];
  end;
  Result := fibonacci;
end;

var
  numero: integer;
  fibonacci: TArray<integer>;
  i: integer;
  bPertence: boolean;
begin
  write('Digite um número: ');
  readln(numero);

  fibonacci := calcularFibonacci(numero);

  bPertence := pertenceFibonacci(numero);
  if bPertence then
    writeln('O número pertence à sequência de Fibonacci.')
  else
    writeln('O número não pertence à sequência de Fibonacci.');
end.