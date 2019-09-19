function vector_to_equation(vetor, x_minimo, x_maximo)
%e plotar um gr�fico que inicia 5 unidades antes da menor das ra�zes e 
%termina 5 unidades ap�s a maior das ra�zes.

%colocando a equa��o na variavel matriz
%resolvendo o sistema com o comando roots
solucao = roots(vetor);

%condi��es iniciais
y = 0;
x = x_minimo:0.1:x_maximo;
%construindo a equacao
vetor = wrev(vetor);
for i = 1:length(vetor)
    y = y + vetor(i)* x.^(i-1);
end
%o solucao
fprintf('%d \n', solucao);
%plotando o grafico
plot(x,y,'-o','LineWidth',1);
end
