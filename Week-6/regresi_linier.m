clear
clc

x  = [1 2 3 4 5 6 7 8 9 10 11 12];
y1 = [242214829 220670704 242170740 243552399 253786498 236846256 233035974 243070442 239813385 241714671 245384433 251528551];
y2 = [1460525624 1468119324 1483284324 1491987274 1501602274 1514993724 1521794674 1553380524 1554979474 1556517244 1564633894 1577406544];
y3 = [227905785	206850686	225453151	225142914	235832328	221183804	217670369	224957534	227585677	231865475	224311703	229479401];
y4 = [14309044	13820018	16717589	18409485	17954170	15662452	15365605	18112908	12227708	9849196	21072730	22049150];

P_Dipasang = polyfit(x,y1,1) %polyfit untuk mencari parameter a0 dan a1
a0_dipasang = P_Dipasang(2);
a1_dipasang = P_Dipasang(1);
yfit_1 = polyval(P_Dipasang,x); %polyval untuk menghitung yfit_1 = a0 + a1*x
fprintf("Jadi, persamaan regresi linearnya adalah yfit_1 = %f + %fx\n\n", [a0_dipasang, a1_dipasang])

P_Terpasang = polyfit(x, y2, 1) %polyfit untuk mencari parameter a0 dan a1
a0_terpasang = P_Terpasang(2);
a1_terpasang = P_Terpasang(1);
yfit_2 = polyval(P_Terpasang, x); %polyval untuk menghitung yfit_2 = a0 + a1*x
fprintf("Jadi, persamaan regresi linearnya adalah yfit_2 = %f + %fx\n\n", [a0_terpasang, a1_terpasang])

P_Terjual = polyfit(x, y3, 1) %polyfit untuk mencari parameter a0 dan a1
a0_terjual = P_Terjual(2);
a1_terjual = P_Terjual(1);
yfit_3 = polyval(P_Terjual, x); %polyval untuk menghitung yfit_3 = a0 + a1*x
fprintf("Jadi, persamaan regresi linearnya adalah yfit_3 = %f + %fx\n\n", [a0_terjual, a1_terjual])

P_Susut = polyfit(x, y4, 1) %polyfit untuk mencari parameter a0 dan a1
a0_susut = P_Susut(2);
a1_susut = P_Susut(1);
yfit_4 = polyval(P_Susut, x); %polyval untuk menghitung yfit_4 = a0 + a1*x
fprintf("Jadi, persamaan regresi linearnya adalah yfit_4 = %f + %fx\n\n", [a0_susut, a1_susut])

%Menampilkan Plot Secara Terpisah Pada Masing-Masing Figure
figure(1)
h=plot(x,y1,'-.k',x,yfit_1,'-*r');
axis([0 length(x)]);
title("Plot Jumlah Tenaga Listrik Yang Dipasang per Bulan di DI Yogyayakarta")
xlabel('Bulan')
ylabel('Dipasang')
text(5.8, 2.25e08,['yfit_1 = ' num2str(P_Dipasang(1)) 'x +' num2str(P_Dipasang(2))]);

figure(2)
h=plot(x,y2,'-.k',x,yfit_2,'-*r');
axis([0 length(x)]);
title("Plot Jumlah Tenaga Listrik Yang Terpasang per Bulan di DI Yogyayakarta")
xlabel('Bulan')
ylabel('Terpasang')
text(1.3, 1.58e09,['yfit_2 = ' num2str(P_Terpasang(1)) 'x +' num2str(P_Terpasang(2))]);

figure(3)
h=plot(x,y3,'-.k',x,yfit_3,'-*r');
axis([0 length(x)]);
title("Plot Jumlah Tenaga Listrik Yang Terjual per Bulan di DI Yogyayakarta")
xlabel('Bulan')
ylabel('Terjual')
text(5.8, 2.1e08,['yfit_3 = ' num2str(P_Terjual(1)) 'x +' num2str(P_Terjual(2))]);

figure(4)
h=plot(x,y4,'-.k',x,yfit_4,'-*r');
axis([0 length(x)]);
title("Plot Jumlah Tenaga Listrik Yang Susut per Bulan di DI Yogyayakarta")
xlabel('Bulan')
ylabel('Susut')
text(5.8, 2.1e08,['yfit_4 = ' num2str(P_Susut(1)) 'x +' num2str(P_Susut(2))]);