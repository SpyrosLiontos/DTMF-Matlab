i=1;
j=1;
al=[];
app.fhigh
app.num
%num=[];
%fhigh=[];
%flow=[];
%duration=0;
%pause(2);
for n=2:11
    switch app.num(n)
        case '1'
            i=1;
            j=1;
         case '2'
            i=2;
            j=1;
         case '3'
            i=3;
            j=1;
         case '4'
            i=1;
            j=2;
         case '5'
            i=2;
            j=2;
         case '6'
            i=3;
            j=2;
         case '7'
            i=1;
            j=3;
         case '8'
            i=2;
            j=3;
         case '9'
            i=3;
            j=3;
         case '*'
            i=1;
            j=5;
         case '0'
            i=2;
            j=4;
         case '#'
            i=3;
            j=4;
    end
    fs=8000;
    t=[0:1/fs:app.duration];
    y=sin(2*pi*app.fhigh(i)*t)+sin(2*pi*app.flow(j)*t);
    sound(y,fs);
    v=[y,zeros(1,1000)];
    al=[al,v];
    pause(0.56)
end
    sound(al)
    audiowrite('number.wav',al,fs)