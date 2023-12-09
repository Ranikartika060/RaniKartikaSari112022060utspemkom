clc
clear

% Soal 1 Tentukan penyelesaian umum dari persamaan linear diferensial orde dua
% yang direpresentasikan dalam bentuk persamaan berikut :
% A. Y"+5y'+6y=0
A = dsolve('D2y=-5*Dy-6*y')
% B. Y"-8y'+16y=2t+100
B = dsolve('D2y=8*Dy-16*y+2*t+100')
% C. Y"+y'-2y=4t+100
C = dsolve('D2y=-Dy+2*y+4*t+100')
% D = Y"+2y'-3y=sin 2.100t
D = dsolve('D2y = -2*Dy+3*y+sin(2.100*t)','y(0)=0','Dy(0)=0')

% Soal 2
% A. Dengan menggunakan Matlab, plot fungsi pada persamaan berikut
% X = sin(2.100t)
% Y = sin(2.100t)
% Z = 4t
% Untuk 0<t<20pi

figure(1)
t=[0:pi/50:20*pi]; 
plot3(sin(2.100*t),cos(2.100*t),4*t);
grid on
axis square

% B. Dengan menggunakan matlab, plot fungsi pada persamaan berikut
% f1(x) =2x^2
% f2(x) =4x^2+1.100x
% Untuk -5<x<5 dengan warna yang berbeda dan putus-putus

figure(2)
x=linspace(-5,5,1000);
f1 = 2*x.^2;
f2= (4*x.^2)-(1.100*x);
plot(x,f1,'r--',x,f2,'b--')
grid on
hold off

% C. Dengan menggunakan matlab, plot fungsi pada persamaan berikut
% f1(x)=4x^3
% f2(x)=x^4+2x^2+3.100
% Untuk -5<x<5 dengan warna yang berbeda dan putus-putus

figure(3)
x=linspace(-5,5,1000);
f1 = 4*x.^3;
f2 = (x.^4)+(2*x.^2)+(3.100);
plot(x,f1,'g--',x,f2,'b--')
grid on
hold off