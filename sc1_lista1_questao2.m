function lista1questao2()
%Seja o vetor dado pela sequência 2*n^2 - 3.^n escreva um script (macro)
%para calcular o valor máximo e mínimo. Ao final do script,
%a sequência deverá ser exibida na forma V2 = [a1 a2 a2 ...an],
%seguida pela informação do valor máximo e mínimo.
%Além disso, deverá ser plotado um
%gráfico da sequência com linha vermelha de largura 1 com cada 
%ponto sendo realçado por um círculo.


%declarando a equacao a ser usada: 3n + 1 e variavel n
n = -10:10;
%criando um vetor a com a formula abaixo 2*n^2 - 3*n;
equacao = 2*n.^2 - 3.^n;
a = equacao;
%pegando o valor minimo do vetor a
minimo = min(a);
%pegando o valor maximo do vetor a 
maximo = max(a);
%plotando o gráfico

plot(n,a, 'r-*', 'LineWidth',1)
%plot não funcionou círculo na minha máquina, apenas ponto

fprintf('Valor mínimo de a: %d \n', minimo);
fprintf('Valor máximo de a: %d \n', maximo);
fprintf('V2 = [');
fprintf('%d ',a);
fprintf('] \n');
    
end