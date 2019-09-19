function G = spaceStateToTransferFunction(A,B,C,D)
%exemplo
%A=[0 1 5 0;0 0 1 0;0 0 0 1;-7 -9 -2 -3];
%B=[0;5;8;2];
%C=[1 3 6 6];
%D=0;]

statespace=ss(A,B,C,D)
[num,den]=ss2tf(A,B,C,D);
G=tf(num,den)

end