function lista1questao3()
%Dado o vetor v3 = [-3 4 -5 ], escreva um script (macro) para calcular o
%versor.
v3 = [-3 4 -5];
modulo = sqrt((-3)^2+4^2+(-5)^2);

%^^^^poderia ter usado a função norm(v3)
%modulo = norm(v3);

%dividin
versor = v3/modulo;
%printando o versor
v3 
versor

end