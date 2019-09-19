function sc1_lista1_questao7()
%Escreva um script (macro) para calcular a área total de erro entre 
%0<=x<=10 admitindo uma resolução de . Para comparação gráfica, plote as
%duas funções, ambas com largura 2, sendo a função original plotada em preto
% e a estimada em vermelho.s

%colocando a equação na variavel matriz
vetor = [3 4 2];
vetor2 = [2.9833 4.1123 1.9999];

%condições iniciais
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
fprintf('O somatório do erro estimado é cerda de %d \n', sum(erro));
%plotando o grafico
plot(x, y1, 'k', x, y2, 'r', x, erro, 'LineWidth', 2);
title('Erro entre Equações');
legend('Equação original', 'Equação aproximada', 'Erro');

end
