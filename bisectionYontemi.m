clear all; close all;clc
fprintf('Bisection yöntemi kullanarak [-2,1] aralýðýnda f(x)=x^3-7x+13 denkleminin köklerinin bulma. Tolerans Deðeriniz: 1E-6');
a = -2
b = 1
tol = 1E-6;
for i=1:100
    fonka = a^3-7*a+13;
    fonkb = b^3-7*b+13;
    xm= (a+b)/2;
    fonkm=xm^3-7*xm+13;
    if fonka*fonkm<0
        b = xm;
    else
        a = xm;
    end
    if abs(a-b)<tol
        break
    end
end
disp('Iterasyon Sayýsý (Toplam Döngü Sayýsý')
i
disp('Denklemin Kökü');
format long
xm
disp('Fonksiyonun bulunan kökteki deðeri')
fonkm