function variaveisDeFase(num,den)
%write the state equations
%and the output equation for the phase-variable 
%representation. 

G=tf(num,den)
[Acc,Bcc,Ccc,Dcc]=tf2ss(num,den);
Af=flipud(Acc);
A=fliplr(Af)
B=flipud(Bcc)
C=fliplr(Ccc)
end