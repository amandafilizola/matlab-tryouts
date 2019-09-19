function volume = lista1questao5(L1, L2, L3, T)
%declarando as variaveis para facilitar leitura da fun��o
ESFERA = 1;
CUBO = 2;
PARALELEPIPEDO = 3;
%primeiro vemos quais as possibilidades de T num switch-case
    switch T
        case ESFERA
        disp('o tipo selecionado foi uma esfera')
        %calculando o volume
        volume = (4*pi*L1.^3)/3;
        fprintf('o volume da esfera � %d\n', volume)
        
        case CUBO
        disp('o tipo selecionado foi um cubo')
        %calculando o volume
        volume = L1.^3;
        fprintf('o volume do cubo � %d\n', volume)
        
        case PARALELEPIPEDO
        disp('o tipo selecionado foi um paralelepipedo')
        %calculando o volume
        volume = L1*L2*L3;
        fprintf('o volume do paralelep�pedo � %d\n', volume)
        
        otherwise
            disp('par�metro de tipo inv�lido. � o ultimo argumento da fun��o, favor tentar novamente com valores: 1=esfera, 2=cubo,3=paralelepipedo')
    end
end