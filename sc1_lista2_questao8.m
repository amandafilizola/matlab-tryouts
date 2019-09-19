function sc1_lista2_questao8()
%Escreva um script (macro) que exiba na tela se a função é 
%estável, seus polos, zeros e especificações no tempo.
num = 0.00026;
den = [1 2.1 2.94 2.708 1.535 0.5117 0.09177 0.007952 0.00026];
G = tf(num,den);

%mostrando os polos e os zeros
polos = pole(G)
zeros = zero(G)

%adquirindo as informações
informacoes = stepinfo(G);
estaEstavel = isstable(G);

%caso o sistema seja estável, mostrar as informações
if(estaEstavel)
    fprintf('o sistema é estável\n');
    fprintf('Overshoot: %.4f%%\n', informacoes.Overshoot);
    fprintf('Tempo de Assentamento: %.4f\n', informacoes.SettlingTime);
    fprintf('Tempo de Subida: %.4f\n', informacoes.RiseTime);
    fprintf('Tempo de Pico: %.4f\n', informacoes.PeakTime);
    fprintf('Pico: %.4f\n', informacoes.Peak);
else 
    fprintf('o sistema é instável\n');
    fprintf('Não há limite na função para existir o overshoot\n');
    fprintf('não há limite na função para existir tempo de assentamento\n');
    fprintf('Não há limite na função para existir o tempo de subida\n');
    fprintf('Não há limite na função para existir o tempo de pico\n');
    fprintf('Não há limite para o pico da função\n');
end

end