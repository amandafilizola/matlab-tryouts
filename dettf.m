function detfinal = dettf(M)
%função para fazer um determinante de matriz de NxN
detfinal = 0;
[linhas, colunas] = size(M);
    for i = 1:colunas
        sinal = (-1).^(i+1);
        if(colunas>1)
            matrizauxiliar = M;
            matrizauxiliar(1,:) = [];
            matrizauxiliar(:,i) = [];
           
            d = dettf(matrizauxiliar); 
            detfinal = detfinal + M(1,i)*sinal*d;
        else
            detfinal = det(M(1,1));
        end
    end
end