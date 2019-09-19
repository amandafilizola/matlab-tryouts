function sis_mma(M, B, K)
%Escreva um script (fun��o) que retorne a fun��o de transfer�ncia de um
%sistema massa-mola-amortecedor. A fun��o deve ser escrita da forma sis_mma(M, B, K),
%onde M � o valor da massa em kg, B � a constante do amortecedor em Ns/m 
%e K � a constante da mola em N/m. Al�m de retornar a fun��o de transfer�ncia, 
%a fun��o deve imprimir na tela se o sistema massa-mola � est�vel ao degrau.
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

%checar estabilidade e mostrar as informa��es
if(estaEstavel)
    fprintf('o sistema � est�vel\n');
    fprintf('Overshoot: %.4f%%\n', informacoes.Overshoot);
    fprintf('Tempo de Assentamento: %.4f\n', informacoes.SettlingTime);
else 
    fprintf('o sistema � inst�vel\n');
    fprintf('N�o h� limite na fun��o para existir o overshoot\n');
    fprintf('n�o h� limite na fun��o para existir tempo de assentamento\n');
end
end