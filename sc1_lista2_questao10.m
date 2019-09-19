function sc1_lista2_questao10(G, OS, Ts)
%Admitindo ainda a figura anterior, escreva um script (função) que retorne KP
%para atender à especificação do %OS ou do ts(98%). A função deve ser 
%escrita na forma kp_det(G,os,ts), onde G é uma variável do tipo transfer 
%function. A função entenderá que a especificação necessária será uma 
%quando a outra for zero, ou seja, a função só pode receber kp_det(G,os,0)
%ou kp_det(G,0,ts). Caso ela receba as duas especificações diferentes de 
%zero, uma mensagem de erro deverá aparecer.
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
            fprintf('o kp necessário será %.2f\n',kp*10);
            break;           
        end
    end
    if(kp>=300)
        fprintf('não é possível encontrar um kp abaixo de 300 para esta função\n')
    end
    
    
elseif(OS==0 && Ts ~= 0)
    %para settling time
    for kp = 0.1:0.1:300
    %for kp = 300:-0.1:0
        T = feedback(G*kp,1);
        informacoes = stepinfo(T)
        if(informacoes.SettlingTime<=Ts)
            fprintf('o kp necessário será %.2f\n',kp);
            break;           
        end
    end
    if(kp>=300)
        fprintf('não é possível encontrar um kp abaixo de 300 para esta função\n')
    end
    
else
    %input errado, mensagem de erro
    fprintf('Não há como calcular com ambas especificações! Favor usar\n Overshoot ou Settling time como 0 e o outro diferente de 0\n');
end

end