function sc1_lista2_questao7(G)
%Escreva um script (função) que determine se a função de transferência é sobreamortecida,
%subamortecida, criticamente amortecida ou não-amortecida. Além disso, deve ser impresso também o
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
    fprintf('G é CRITICAMENTE amortecido\n');
else if(zeta(1)==0)
        fprintf('G é NÃO amortecido\n');
    else if(zeta(1)<1)
             fprintf('G é SUBamortecido\n');
        else
             fprintf('G é SUPER amortecido\n');
        end
    end
end
end