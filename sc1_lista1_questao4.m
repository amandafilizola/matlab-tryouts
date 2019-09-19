function lista1questao4()
%dada a matriz escreva um script (macro) para calcular seu determinante e, caso
%admita, sua matriz inversa.

%declarando a matriz
m = [-3 2 4; 7 1 2;8 2 2];
%tomando o determinante
determinante = det(m);
%checando se é diferente de zero
if(determinante ~= 0)
%se o determinante for diferente de 0, a inversa é calculada
    matrizinversa = inv(m)
else
    fprintf('a matriz não tem inversa, pois o determinante é 0.\n')
end

end
