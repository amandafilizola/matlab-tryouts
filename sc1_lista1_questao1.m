function lista1questao1()
%Seja o vetor dado pela sequência 3n + 1, 1<=n<=100
%escreva um script (macro) para calcular sua média, desvio padrão e somatória. 
%Ao final do script, além dos valores anteriores serem exibidos
%de forma organizada, plote a sequência com linha preta de largura 2.


%declarando a equacao a ser usada: 3n + 1 e variavel n
n = 1:100;
%criando ;um vetor e preenchendo de 1 a 100 com a fórmula 3n+1
v = 3*n + 1;
%tirando a média e o somatório. (pois é mais facil esses primeiro)
%pegando o somatorio
    somatorio = sum(v);
%tirando a média
    media = mean(v);
%começando o desvio padrao
    desviopadrao = std(v);
        
%plotando o grafico

plot(n,v, 'k', 'LineWidth',2)
%printando respostas:
    media
    somatorio
    desviopadrao
end
