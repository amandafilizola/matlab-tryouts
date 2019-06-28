function resposta = EncontreXtf(A,B,n)
% função para resultado de um sistema de equações de funções de transferencia de acordo com a variável escolhida
% questão 3 lista 2
% exemplo!!
% A = [tf([1,1,1],1) tf(-1,1);tf(-1,1) tf([1 0 3],1)];
% B = [tf(1,1);tf(0,1)];

[linhasA, colunasA] = size(A);
[linhasB, colunasB] = size(B);

    if(n <= colunasA && n <= linhasB)
        matrizAuxiliar = A;

        deltaOriginal = dettf(A);
        matrizAuxiliar(:,n) = B;
        deltaNovo = dettf(matrizAuxiliar);

        resposta = minreal(deltaNovo/deltaOriginal);
        fprintf("X%d é %d",n,resposta);

    else
        'formato errado de matrizes ou n!';
    end

end