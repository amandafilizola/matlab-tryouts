function quantidadeDeGas()

%a massa do g�s varia de 0 a 11 kg
h1 = 300.19;
h2 = 421.26 ;
h3 = 38.467;
Mar = 5 ;
MassaMolarGas =0.04401;
h4 = 0;
%x � a massa de g�s
x = 1:0.1:101;
for i = 1:1:1001
    h4(i) = (h1-h2)*Mar*MassaMolarGas/x(i)+ h3;
    if (isreal(x(i)) && rem(x(i),1)==0)
        pontoInteiro(i) = h4(i);
    else
        pontoInteiro(i) = 0;
    end
end
plot(x,h4);
hold on;
pontoInteiro(pontoInteiro == 0) = NaN;
scatter(x,pontoInteiro,'k');
xlim([0 12]);
grid;
title('Rela��o do fluxo de massa do g�s com a entalpia de sa�da do g�s')
xlabel({'Fluxo Massa de G�s', 'Kg/s'});
ylabel({'Entalpia de sa�da do g�s', 'kJ/Kmol'});









end