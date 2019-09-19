function volume = lista1questao5(L1, L2, L3, T)
%declarando as variaveis para facilitar leitura da função
ESFERA = 1;
CUBO = 2;
PARALELEPIPEDO = 3;
%primeiro vemos quais as possibilidades de T num switch-case
    switch T
        case ESFERA
        disp('o tipo selecionado foi uma esfera')
        %calculando o volume
        volume = (4*pi*L1.^3)/3;
        fprintf('o volume da esfera é %d\n', volume)
        
        case CUBO
        disp('o tipo selecionado foi um cubo')
        %calculando o volume
        volume = L1.^3;
        fprintf('o volume do cubo é %d\n', volume)
        
        case PARALELEPIPEDO
        disp('o tipo selecionado foi um paralelepipedo')
        %calculando o volume
        volume = L1*L2*L3;
        fprintf('o volume do paralelepípedo é %d\n', volume)
        
        otherwise
            disp('parâmetro de tipo inválido. É o ultimo argumento da função, favor tentar novamente com valores: 1=esfera, 2=cubo,3=paralelepipedo')
    end
end