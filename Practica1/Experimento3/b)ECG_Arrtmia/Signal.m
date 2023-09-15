id=load('231m.mat');
x=(id.val)/1.5;
%Se sabe que el registro es de 10 [s], entonces
Fs=length(x)/10;
t=(0:length(x)-1)/Fs;

derivI=x(1,:);
derivII=x(2,:);

figure(1)
subplot(2,1,1)
plot(t,derivI); title(['Derivación I']);
axis([0 10 -200 300])
subplot(2,1,2)
plot(t,derivII); title(['Derivación II']);
axis([0 10 -200 300])