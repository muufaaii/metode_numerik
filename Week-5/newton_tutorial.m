clear all; clc; close all;

%%Identitas Aja
fprintf('Nama \t: Muhammad Faisal\n');
fprintf('NIM \t: 20524123\n\n');
fprintf('===============Newton-Raphson Method===============\n\n');

%%Nilai Parameter
f=input('Fungsi f(x) = ');
f_diff = input('Fungsi f_diff(x) = ');
x1 = input('Masukkan nilai tebakan awal = ');
imax = input('Masukkan iterasi maksimal = ');
galat1 = input('Masukkan Galat Toleransi = ');
iter = 1;

%%Header 
fprintf("========================================================")
fprintf('\n Iterasi \txi \t\tfxi \tf_diffxi\n');
fprintf("========================================================\n")

%%Algoritma
for k = 1:imax
  iter = iter + 1;
  x2 = x1 - (feval(f, x1)/feval(f_diff, x1));
  x1=x2;
  y = feval(f, x1);
  y_dif = feval(f_diff, x1);
  fprintf('\t%d \t%6.3f \t%6.9f \t%f\n', [iter; x1; y; y_dif ])
  if (y < galat1 || (iter>imax)), break, end
 end
 fprintf('\nAkarnya adalah = %6.5f pada iterasi ke %d\n', [x1; iter])