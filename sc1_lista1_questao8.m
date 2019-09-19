function sc1_lista1_questao7()
%Escreva um script (macro) para calcular a �rea total de erro entre 
%0<=x<=10 admitindo uma resolu��o de . Para compara��o gr�fica, plote as
%duas fun��es, ambas com largura 2, sendo a fun��o original plotada em preto
% e a estimada em vermelho.s

%colocando a equa��o na variavel matriz
vetor = [3 4 2];
vetor2 = [2.9833 4.1123 1.9999];

%condi��es iniciais
y1 = 0;
y2 = 0;
x = 0:0.01:10;
%ordenando vetor
vetor = wrev(vetor);

for i = 1:length(vetor)
    %construindo o vetor
    y1 = y1 + vetor(i)* x.^(i-1);
    y2 = y2 + vetor2(i)* x.^(i-1); 
end

%calculando o erro
erro = y1 - y2;
fprintf('O somat�rio do erro estimado � cerda de %d \n', sum(erro));
%plotando o grafico
plot(x, y1, 'k', x, y2, 'r', x, erro, 'LineWidth', 2);
title('Erro entre Equa��es');
legend('Equa��o original', 'Equa��o aproximada', 'Erro');

end
