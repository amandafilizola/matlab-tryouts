function sc1_lista2_questao1()
%Dado o Diagrama de Blocos abaixo,
%escreva um script (macro) para calcular a função de transferência
%colocando as funções de transferência nas variáveis

G1 = tf(1,[1 0]);
G2 = tf(1,[1 0 0]);
G3 = tf(1, [1 1 1]);
H1 = tf(0.8266, 1);
H2 = tf(1,[1]);
H3 = tf(8,[1 8]);

%fazendo as simplificações do diagrama
GH3 = feedback(G3, H3);
%fazendo o feedback do isolado G2
G2_feed = feedback(G2, 1);

H2G2 = series(H2,G2);
H1G2 = series(H1,G2)/G1;
%somando os fios próximos à esquerda
primeiro_conjunto = H1G2 + H2G2 + G1;

%resposta final
G = minreal(series(series(primeiro_conjunto, G2_feed),GH3));
G
end
