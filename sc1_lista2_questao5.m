function funcaoResposta = sc1_lista2_questao5(M,B,K,x,f)
%Escreva um script (função) que determine uma das nove possíveis funções de transferência. A função
%deve ser escrita na forma mma3(M,B,K,x,f), onde M é o vetor das massas, B é a matriz dos
%coeficientes de amortecimento, K é a matriz das constantes das molas, x determina qual das funções
%de transferência se quer (x = 1 ? G(s) =
%X1(s)/F(s) e f determina onde a força de entrada está atuando.
%Para f=1, há uma força de entrada atuando na massa 1.

%tentei ao máximo deixar o programa flexivel de acordo com as entradas
%todas as nove opções de resposta podem ser escolhidas

%declaração das variáveis úteis
zeroTf = tf(0,1);
forca = tf(1,1);

%alocação da força de acordo com onde ela está aplicada
if(f==1)
    Entrada = [forca;zeroTf;zeroTf];
else if(f==2)
        Entrada = [zeroTf;forca;zeroTf];
    else if(f==3)
        Entrada = [zeroTf;zeroTf;forca];
        end        
    end
    
end
    %matriz
    %A(1,1) = tf([M(1,1) sum(B(1)) sum(K(1))],1);
    %A(1,2) = tf([ -B(1,2) -K(1,2)],1);
    %A(1,3) = tf([-B(1,3) -K(1,3)],1);
    
    %A(2,1) = tf([-B(1,2) -K(1,2)],1);
    %A(2,2) = tf([M(1,2) (B(1,2)+B(2,2)+B(2,3)) (K(1,2)+K(2,2)+K(2,3))],1);
    %A(2,3) = tf([-B(2,3) -K(2,3)],1);
    
    %A(3,1) = tf([-B(1,3) -K(1,3)],1);
    %A(3,2) = tf([-B(2,3) -K(2,3)],1);
    %A(3,3) = tf([M(1,3) (B(1,3)+B(2,3)+B(3,3)) (K(1,3)+K(2,3)+K(3,3))],1);
    
    %construindo as matrizes
    somaB1 = B(1,1)+B(1,2)+B(1,3);
    somaK1 = K(1,1)+K(1,2)+K(1,3);
    A = [
            tf([M(1,1) somaB1 somaK1],1) tf([ -B(1,2) -K(1,2)],1) tf([-B(1,3) -K(1,3)],1);
        
            tf([-B(1,2) -K(1,2)],1) tf([M(1,2) (B(1,2)+B(2,2)+B(2,3)) (K(1,2)+K(2,2)+K(2,3))],1) tf([-B(2,3) -K(2,3)],1);
        
            tf([-B(1,3) -K(1,3)],1) tf([-B(2,3) -K(2,3)],1) tf(  [ M(1,3) B(1,3)+B(2,3)+B(1,3) K(1,3)+K(2,3)+K(1,3)],1)
        ];

    %customizando a resposta para o output com a variável já certa
    if(x==1)
        %chamando função já pronta de resolução de sistemas de tf
        X1 = sc1_lista2_questao3(A,Entrada,x)
        funcaoResposta = X1;
    end
    if(x==2)
        X2 = sc1_lista2_questao3(A,Entrada,x)
        funcaoResposta = X2;
    end
    if(x==3)
        X3 = sc1_lista2_questao3(A,Entrada,x)
        funcaoResposta = X3;
    end
    
end