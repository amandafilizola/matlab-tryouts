function sc1_lista2_questao7(G)
%Escreva um script (fun��o) que determine se a fun��o de transfer�ncia � sobreamortecida,
%subamortecida, criticamente amortecida ou n�o-amortecida. Al�m disso, deve ser impresso tamb�m o
%valor de ?N e ?.
[num,deng] = tfdata(G,'v');
%calculando o Wn
omegaN = sqrt(deng(3)/deng(1));
%calculando o Zeta
zeta=(deng(2)/deng(1))/(2*omegaN);

fprintf('Wn = %d\n',omegaN);
fprintf('Zeta = %d\n',zeta);

%de acordo com o zeta, mostrar a resposta!
if(zeta(1)==1)
    fprintf('G � CRITICAMENTE amortecido\n');
else if(zeta(1)==0)
        fprintf('G � N�O amortecido\n');
    else if(zeta(1)<1)
             fprintf('G � SUBamortecido\n');
        else
             fprintf('G � SUPER amortecido\n');
        end
    end
end
end