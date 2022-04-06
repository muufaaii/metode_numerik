clear all; clc; close all;

%%Identitas Aja
fprintf('Nama \t: Muhammad Faisal\n');
fprintf('NIM \t: 20524123\n\n');
fprintf('===============Secant Method===============\n\n');

%%Nilai Parameter
f=input('Fungsi f(x) = ');
x1 = input('Masukkan nilai tebakan awal x1 = ');
x2 = input('Masukkan nilai tebakan awal x2 = ');
imax = input('Masukkan iterasi maksimal = ');
galat1 = input('Masukkan Galat Toleransi = ');
iter = 2;

%%Header
fprintf("=====================================================================")
fprintf('\n Iterasi \txi-1 \t\txi \t\tf{xi)\n');
fprintf("=====================================================================\n")

%%Algoritma
for k = 1:imax
  iter = iter + 1;
  x3 = x2 - (feval(f, x2)*(x1 - x2))/(feval(f, x1) - feval(f, x2));
  galat = abs((x3-x2)/x3);
  x1 = x2;
  x2=x3;
  y = abs(feval(f, x2));
  fprintf('\t%d \t%6.3f \t\t%6.3f \t\t%6.5f\n', [iter; x1; x2; y])
  if (y < galat1 || (iter>imax)), break, end
 end
 
 fprintf('\nAkarnya adalah = %6.3f pada iterasi ke %d\n', [x1; iter])