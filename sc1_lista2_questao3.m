function resposta = sc1_lista2_questao3(A,B,n)
% fun��o para resultado de um sistema de equa��es de fun��es de transferencia de acordo com a vari�vel escolhida
% quest�o 3 lista 2
% exemplo!!
% A = [tf([1,1,1],1) tf(-1,1);tf(-1,1) tf([1 0 3],1)];
% B = [tf(1,1);tf(0,1)];

[linhasA, colunasA] = size(A);
[linhasB, colunasB] = size(B);

%checando pela compatibilidade de colunas e linhas 
if(n <= colunasA && n <= linhasB)
        matrizAuxiliar = A;

        %determinante da matriz original
        deltaOriginal = dettf(A);
        %retirando a devida coluna para colocar a sa�da no lugar
        matrizAuxiliar(:,n) = B;
        
        %determinante desta nova matriz
        deltaNovo = dettf(matrizAuxiliar);
        
        %resposta ser� a divisao do det calculado pelo original
        resposta = minreal(deltaNovo/deltaOriginal);
        fprintf('X%d',n);
        
else
        'formato errado de matrizes ou n!';
end



end