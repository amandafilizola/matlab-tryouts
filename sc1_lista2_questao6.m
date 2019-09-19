function sc1_lista2_questao6(G)

%setando vari�veis e informa��es
degrau = tf(1,[1 0]);
informacoes = pole(G);

%� est�vel � rampa?
%checando se os polos de malha aberta cont�m 0
if(ismember(0,informacoes))
    fprintf('Sou est�vel � rampa!!\n');
    
    T = feedback(G,1);
    
    %construindo os inputs
    tfNaRampa = degrau*T;
    seno = tf(1,[1 0 1]);
    cosseno = tf([1 0], [1 0 1]);
    cossenoComplexo = tf(1,[1 0])-cosseno;
    expneg = tf(1,[1  1]);
    

    %plotando os gr�ficos  
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
    title('Resposta � Rampa');
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
    title('Resposta � exponencial negativa');
    grid;
    
    subplot(3,2,6)
    step(T*cossenoComplexo/degrau);
    title('Resposta ao Cosseno complexo');
    xlim([0 200]);
    grid;
        
else
    fprintf('fun��o n�o est�vel � rampa! Socorro!\n');
end

end