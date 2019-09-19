function matrizinversa = lista1questao4(m)
%dada a matriz escreva um script (macro) para calcular seu determinante e, caso
%admita, sua matriz inversa.

%declarando a matriz
linhas = size(m, 1);
colunas = size(m, 2);

%tomando o determinante
if(colunas == linhas)
    determinante = det(m);
%checando se é diferente de zero
if(determinante ~= 0)
%se o determinante for diferente de 0, a inversa é calculada
    matrizinversa = inv(m);
else
    fprintf('a matriz não tem inversa, pois o determinante é 0.\n')
end

end
