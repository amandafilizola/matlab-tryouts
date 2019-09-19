function solucao = raiz_equacao_linear(equacao)
%resolvendo o sistema com o comando roots
solucao = roots(equacao);
%printando solucao
fprintf('%d \n', solucao)
end