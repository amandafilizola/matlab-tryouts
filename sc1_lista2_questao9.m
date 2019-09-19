function sc1_lista2_questao9(G)
%Escreva um script (macro) que plote dois gráficos: KP versus %OS e 
%KP versus ts(98%) (utilizando subplot). Admita que G(s) =1/s2+s+1.
%Teste alguns valores de KP a priori para definir uma região (KPmin e KPmax)
%que faça sentido.

%funcao G

Kp = linspace(0.1,10,70);

%loop para construir o vetor do overshoot e settling time
for x = 1:70
    T = feedback(Kp(x)*G,1);
    informacoes = stepinfo(T);
    OS(x) = informacoes.Overshoot;
    Ts(x) = informacoes.SettlingTime;
    
    %para a quarta questao da prova
end
fprintf('%d\n',min(Ts))
%descobrindo o menor Ts

%descobrindo o kp respectivo ao menor Ts
for x = 1:70
    T = feedback(Kp(x)*G,1);
    if(Ts(x)==min(Ts))
        fprintf('Kp(x) = %d\n',Kp(x))
    end
end



%plotando os graficos

subplot(1,2,1);
plot(Kp, OS);
title('Kp pelo Overshoot');

subplot(1,2,2);
plot(Kp, Ts);
title('Kp pelo Settling Time');

end