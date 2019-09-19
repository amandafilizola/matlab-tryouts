function sc1_lista2_questao4()

g1 = tf([10^(-6) 100 10^6], [1 0]);
g2 = tf(-(10^(6)), [    1 0]);
g3 = tf([-(10^(-6)) 0], 1);

a = [g1 g2 g3 tf(0,1)];
b = [g2 g1 tf(0,1) tf(-100,1)];
c = [g3 tf(0,1) g1 g2];
d = [tf(0,1) tf(-100,1) g2 g1];
M = [a;b;c;d];

V = [tf(0,1);tf(0,1);tf(1,1);tf(0,1)]; 

for x = 1:4
    sc1_lista2_questao3(M, V,x)
end

end