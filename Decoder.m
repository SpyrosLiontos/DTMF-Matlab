
%input signal

[y,Fs] = audioread('number.wav');
%sound(y,Fs)

numb=[];
%display
for ii=1:10
    kk=[];
    l=[];
    m=[];
figure(1)
n=0:1:length(y)-1;
plot(n,y)

jj=length(y)/10;
%fourier
mp=1+((ii-1)*jj)
for j=mp:jj*ii
    kk(j-((ii-1)*jj))=y(j);
end
nk=0:1:jj-1;
l=fft(kk);
m=abs(l);
faxis=nk*Fs/length(kk);
figure(2)
plot(faxis,m)


%decoder

ff=[];


for i=1:length(m)
     if m(i)>200
        ff(i)=(i-1)*Fs/length(m);

        if ff(i)<697+10 && ff(i)>697-10
            row=1;
        end
        if ff(i)<770+10 && ff(i)>770-10
            row=2;
        end
        if ff(i)<852+10 && ff(i)>852-10
            row=3;
        end
        if ff(i)<941+10 && ff(i)>941-10
            row=4;
        end
        if ff(i)<1209+10 && ff(i)>1209-10
            col=1;
        end
        if ff(i)<1336+10 && ff(i)>1336-10
            col=2;
        end
        if ff(i)<1477+10 && ff(i)>1477-10
            col=3;
        end
     end
end
chars=['1','2','3';'4','5','6';'7','8','9';'*','0','#'];
numb=[numb,chars(row,col)]
end
