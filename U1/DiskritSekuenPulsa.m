%Pembangkitan Sekuen Pulsa
L=input('L: Panjang Gelombang (>=40)= ')
P=input('P: Posisi Pulsa = ')
for n=1:L
 if (n==P)
 step(n)=1;
 else
 step(n)=0;
 end
end
x=1:L;
stem(x,step)
axis([0 L -.1 1.2])
