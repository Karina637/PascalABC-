program DiagonalAverage;

var
  n, i, j: integer;
  A: array[1..100, 1..100] of integer;  { Масив розміром 100x100 }
  sum: integer;
  average: real;

begin
  { Введення розміру матриці }
  write('Enter the size of the matrix (n): ');
  readln(n);
  
  { Введення елементів матриці }
  writeln('Enter the elements of the matrix:');
  for i := 1 to n do
    for j := 1 to n do
    begin
      write('A[', i, ',', j, ']: ');
      readln(A[i, j]);
    end;

  { Обчислення суми елементів головної діагоналі }
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];  { Додаємо елементи головної діагоналі }
  
  { Обчислення середнього арифметичного }
  average := sum / n;
  
  { Виведення результату }
  writeln('The average of the main diagonal elements is: ', average:0:2);
end.
