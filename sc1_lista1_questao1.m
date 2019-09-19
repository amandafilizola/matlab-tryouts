function lista1questao1()
%Seja o vetor dado pela sequ�ncia 3n + 1, 1<=n<=100
%escreva um script (macro) para calcular sua m�dia, desvio padr�o e somat�ria. 
%Ao final do script, al�m dos valores anteriores serem exibidos
%de forma organizada, plote a sequ�ncia com linha preta de largura 2.


%declarando a equacao a ser usada: 3n + 1 e variavel n
n = 1:100;
%criando ;um vetor e preenchendo de 1 a 100 com a f�rmula 3n+1
v = 3*n + 1;
%tirando a m�dia e o somat�rio. (pois � mais facil esses primeiro)
%pegando o somatorio
    somatorio = sum(v);
%tirando a m�dia
    media = mean(v);
%come�ando o desvio padrao
    desviopadrao = std(v);
        
%plotando o grafico

plot(n,v, 'k', 'LineWidth',2)
%printando respostas:
    media
    somatorio
    desviopadrao
end
