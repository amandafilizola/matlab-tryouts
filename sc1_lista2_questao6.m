function sc1_lista2_questao6(G)

%setando variáveis e informações
degrau = tf(1,[1 0]);
informacoes = pole(G);

%é estável à rampa?
%checando se os polos de malha aberta contém 0
if(ismember(0,informacoes))
    fprintf('Sou estável à rampa!!\n');
    
    T = feedback(G,1);
    
    %construindo os inputs
    tfNaRampa = degrau*T;
    seno = tf(1,[1 0 1]);
    cosseno = tf([1 0], [1 0 1]);
    cossenoComplexo = tf(1,[1 0])-cosseno;
    expneg = tf(1,[1  1]);
    

    %plotando os gráficos  
    subplot(3,2,1);
    impulse(T);
    title('Resposta ao Impulso');
    grid;
    
    subplot(3,2,2);
    step(T);
    title('Resposta ao Degrau');
    grid;
    
    subplot(3,2,3);
    step(tfNaRampa,degrau);
    title('Resposta à Rampa');
    xlim([0 10]);
    ylim([0 10])
    hold on;
    legend('Tf','degrau')
    grid;
    
    subplot(3,2,4);
    step(T*seno/degrau);
    title('Resposta ao Seno');
    xlim([0 200]);
    grid;
    
    subplot(3,2,5)
    step(T,T*expneg);
    legend('T','T * Exponencial Negativa');
    title('Resposta à exponencial negativa');
    grid;
    
    subplot(3,2,6)
    step(T*cossenoComplexo/degrau);
    title('Resposta ao Cosseno complexo');
    xlim([0 200]);
    grid;
        
else
    fprintf('função não estável à rampa! Socorro!\n');
end

end