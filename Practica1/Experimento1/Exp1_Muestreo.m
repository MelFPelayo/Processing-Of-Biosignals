close;clc;clear;
fs = 25;
ts = 1/fs;

t = 0:ts:0.1;

x=3*cos(2*pi*50*t);

subplot(3,2,1)


stem(t,x)




%%%%
fs = 100;
ts = 1/fs;

t = 0:ts:0.1;

x=3*cos(2*pi*50*t);

title('No Periodica - No cumple teorema')

subplot(3,2,2)

stem(t,x)
%%%
fs = 500;
ts = 1/fs;

t = 0:ts:0.1;

x=3*cos(2*pi*50*t);
title('Periodica - Si cumple teorema')
subplot(3,2,3)

stem(t,x)
%%%
fs = 25*sqrt(2);
ts = 1/fs;

t = 0:ts:0.1;

x=3*cos(2*pi*50*t);

title('Periodica - Si cumple teorema')
subplot(3,2,4)

stem(t,x)
%%
fs = 200*pi
ts = 1/fs;

t = 0:ts:0.1;

x=3*cos(2*pi*50*t);

title('No Periodica - No cumple teorema')
subplot(3,2,5)

stem(t,x)

title('Periodica - Si cumple teorema')
