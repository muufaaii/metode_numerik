%% Nama  = Muhammad Faisal
%% NIM   = 20524123

clear all; clc; close all;

%%Nilai Parameter
xl = 0;
xu = 0.11;
ErrorToleransi = 0.0001;
ErrorRelatif = 1;
xmn = 1;
iterasi = 0;

%%Header 
fprintf("=============================================================\n")
fprintf("Iterasi    xm \t\tErrorRelatif    \tInterval \n")
fprintf("=============================================================\n")

%%Algoritma
while ErrorRelatif > ErrorToleransi
  iterasi = iterasi + 1;
  xm = (xl + xu)/2;
  Fbawah = fungsi(xl);
  Ftengah = fungsi(xm);
  
  if Fbawah * Ftengah == 0
    disp('xm adalah akar');
  elseif Fbawah * Ftengah < 0
    xu = xm;
  else 
    xl = xm;
  end
  ErrorRelatif = abs((xmn - xm)/xmn);
  fprintf('%d \t%f \t%f \t(%f ; %f) \n', iterasi, xm, ErrorRelatif, xl, xu); 
  xmn = xm;
end

fprintf('\nAkarnya adalah = %f pada iterasi ke %d \n', xm, iterasi)

%% 174     0.177457        0.000096        (0.177457 ; 0.660000)
%% 14      0.109993        0.000061        (0.109993 ; 0.110000)