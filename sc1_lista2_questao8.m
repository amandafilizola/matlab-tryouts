function sc1_lista2_questao8()
%Escreva um script (macro) que exiba na tela se a fun��o � 
%est�vel, seus polos, zeros e especifica��es no tempo.
num = 0.00026;
den = [1 2.1 2.94 2.708 1.535 0.5117 0.09177 0.007952 0.00026];
G = tf(num,den);

%mostrando os polos e os zeros
polos = pole(G)
zeros = zero(G)

%adquirindo as informa��es
informacoes = stepinfo(G);
estaEstavel = isstable(G);

%caso o sistema seja est�vel, mostrar as informa��es
if(estaEstavel)
    fprintf('o sistema � est�vel\n');
    fprintf('Overshoot: %.4f%%\n', informacoes.Overshoot);
    fprintf('Tempo de Assentamento: %.4f\n', informacoes.SettlingTime);
    fprintf('Tempo de Subida: %.4f\n', informacoes.RiseTime);
    fprintf('Tempo de Pico: %.4f\n', informacoes.PeakTime);
    fprintf('Pico: %.4f\n', informacoes.Peak);
else 
    fprintf('o sistema � inst�vel\n');
    fprintf('N�o h� limite na fun��o para existir o overshoot\n');
    fprintf('n�o h� limite na fun��o para existir tempo de assentamento\n');
    fprintf('N�o h� limite na fun��o para existir o tempo de subida\n');
    fprintf('N�o h� limite na fun��o para existir o tempo de pico\n');
    fprintf('N�o h� limite para o pico da fun��o\n');
end

end