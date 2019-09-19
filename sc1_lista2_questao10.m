function sc1_lista2_questao10(G, OS, Ts)
%Admitindo ainda a figura anterior, escreva um script (fun��o) que retorne KP
%para atender � especifica��o do %OS ou do ts(98%). A fun��o deve ser 
%escrita na forma kp_det(G,os,ts), onde G � uma vari�vel do tipo transfer 
%function. A fun��o entender� que a especifica��o necess�ria ser� uma 
%quando a outra for zero, ou seja, a fun��o s� pode receber kp_det(G,os,0)
%ou kp_det(G,0,ts). Caso ela receba as duas especifica��es diferentes de 
%zero, uma mensagem de erro dever� aparecer.
%C = feedback(Kp*G,1);


if(OS~=0 && Ts == 0)
    %para o overshoot
    for kp = 0.1:0.1:300
    %for kp = 300:-0.1:0
        T = feedback(G*kp,1);
        informacoes = stepinfo(T)
        risingTime(kp*10) = informacoes.RiseTime;
        if(informacoes.Overshoot<=OS)
            if(risingTime(kp*10)< min(risingTime))
                fprintf('menor rise time %d',risingTime(kp*10)) 
            end         
            fprintf('o kp necess�rio ser� %.2f\n',kp*10);
            break;           
        end
    end
    if(kp>=300)
        fprintf('n�o � poss�vel encontrar um kp abaixo de 300 para esta fun��o\n')
    end
    
    
elseif(OS==0 && Ts ~= 0)
    %para settling time
    for kp = 0.1:0.1:300
    %for kp = 300:-0.1:0
        T = feedback(G*kp,1);
        informacoes = stepinfo(T)
        if(informacoes.SettlingTime<=Ts)
            fprintf('o kp necess�rio ser� %.2f\n',kp);
            break;           
        end
    end
    if(kp>=300)
        fprintf('n�o � poss�vel encontrar um kp abaixo de 300 para esta fun��o\n')
    end
    
else
    %input errado, mensagem de erro
    fprintf('N�o h� como calcular com ambas especifica��es! Favor usar\n Overshoot ou Settling time como 0 e o outro diferente de 0\n');
end

end