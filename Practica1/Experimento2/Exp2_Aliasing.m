clc;clear;close;
%%%a)
fa = 1000;

fs = 40e3;
ts = 1/fs;

t = 0:ts:5;

y = cos(2*pi*fa*t);

plot(t,y)
hold on
axis([0 5e-3 0 1])
title('fs = 40e3 - fa = 1000- Si cumple teorema')

sound(y,fs)
%pause(6)
%%%b)
fa = 1000;

fs = 1500;
ts = 1/fs;

t = 0:ts:5;

y = cos(2*pi*fa*t);

stem(t,y)

axis([0 5e-3 0 1])
title('fs = 1500 -fa = 1000 - No cumple teorema')

sound(y,fs)
%pause(6)
%%%C)
fa = 500;

fs = 40e3;
ts = 1/fs;

t = 0:ts:5;

y = cos(2*pi*fa*t);
plot(t,y)
axis([0 5e-3 -1.1 1.1])
title('fs = 40e3 - fa = 500- Si cumple teorema')

sound(y,fs)
