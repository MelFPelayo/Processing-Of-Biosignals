id=load('1047487m.mat');
x=id.val;
%Se sabe que el registro es de 10 [s], entonces
Fs=length(x)/10;
t=(0:length(x)-1)/Fs;

derivI=x(1,:);
derivII=x(2,:);
derivIII=x(3,:);

figure(1)
subplot(3,1,1)
plot(t,derivI); title(['Derivación I']);
axis([0 10 -200 300])
subplot(3,1,2)
plot(t,derivII); title(['Derivación II']);
axis([0 10 -200 300])
subplot(3,1,3)
plot(t,derivIII); title(['Derivación III']);
axis([0 10 -200 300])
%Se toma un segmento de una señal para mostrar de forma cíclica. Se adaptan
%sus niveles de amplitud para generar una tabla
ejemplo_senal=uint8(255*mat2gray(derivIII(1:600)));
figure(2)
plot(ejemplo_senal)
dlmwrite('ejemplo_senal_physionet_500Hz.txt',ejemplo_senal)