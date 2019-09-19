function sis_mma(M, B, K)
%Escreva um script (função) que retorne a função de transferência de um
%sistema massa-mola-amortecedor. A função deve ser escrita da forma sis_mma(M, B, K),
%onde M é o valor da massa em kg, B é a constante do amortecedor em Ns/m 
%e K é a constante da mola em N/m. Além de retornar a função de transferência, 
%a função deve imprimir na tela se o sistema massa-mola é estável ao degrau.
%Caso seja, deve imprimir o valor do overshoot em porcentagem e o valor 
%do tempo de assentamento(settling time) em segundos.
 
%sistema F = Mx'' + bx' + kx
%sistema F = M*s^2*x + b*s*x +kx
%sistema F = (M*s^2 + b*s + k)*x
%sistema F/(M*s^2 + b*s + k) = x
%sistema 1/(M*s^2 + b*s + k) = x/F
G = tf(1, [M B K])

informacoes = stepinfo(G);
estaEstavel = isstable(G);

%checar estabilidade e mostrar as informações
if(estaEstavel)
    fprintf('o sistema é estável\n');
    fprintf('Overshoot: %.4f%%\n', informacoes.Overshoot);
    fprintf('Tempo de Assentamento: %.4f\n', informacoes.SettlingTime);
else 
    fprintf('o sistema é instável\n');
    fprintf('Não há limite na função para existir o overshoot\n');
    fprintf('não há limite na função para existir tempo de assentamento\n');
end
end