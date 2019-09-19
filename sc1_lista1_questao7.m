function sc1_lista1_questao7()
%Dada a fun��o 3x^4+4x^3+2x^2+5x+1 escreva um script (macro) para calcular suas ra�zes
%e plotar um gr�fico que inicia 5 unidades antes da menor das ra�zes e 
%termina 5 unidades ap�s a maior das ra�zes.

%colocando a equa��o na variavel matriz
vetor = [3 4 2 5 1];
%resolvendo o sistema com o comando roots
solucao = roots(vetor);
x_maximo = max(solucao)+5;
x_minimo = min(solucao)-5;

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
