function lista1questao2()
%Seja o vetor dado pela sequ�ncia 2*n^2 - 3.^n escreva um script (macro)
%para calcular o valor m�ximo e m�nimo. Ao final do script,
%a sequ�ncia dever� ser exibida na forma V2 = [a1 a2 a2 ...an],
%seguida pela informa��o do valor m�ximo e m�nimo.
%Al�m disso, dever� ser plotado um
%gr�fico da sequ�ncia com linha vermelha de largura 1 com cada 
%ponto sendo real�ado por um c�rculo.


%declarando a equacao a ser usada: 3n + 1 e variavel n
n = -10:10;
%criando um vetor a com a formula abaixo 2*n^2 - 3*n;
equacao = 2*n.^2 - 3.^n;
a = equacao;
%pegando o valor minimo do vetor a
minimo = min(a);
%pegando o valor maximo do vetor a 
maximo = max(a);
%plotando o gr�fico

plot(n,a, 'r-*', 'LineWidth',1)
%plot n�o funcionou c�rculo na minha m�quina, apenas ponto

fprintf('Valor m�nimo de a: %d \n', minimo);
fprintf('Valor m�ximo de a: %d \n', maximo);
fprintf('V2 = [');
fprintf('%d ',a);
fprintf('] \n');
    
end