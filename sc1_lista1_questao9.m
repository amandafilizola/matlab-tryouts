function sc1_lista1_questao9(r)
    min_r = -r;
    max_r = r;
    step_r = r/1000;
    t = min_r:step_r:max_r;
    
    %na sintaxe correta do matlab, � necess�rio colocar 
    %um . antes do circunflexo referente � pot�ncia
    %caso seja escrito apenas ^, significa que se est� multiplicando 
    %de forma MATRICIAL e n�o ESCALAR como seria o comum 
    %em outros programas.
    
    %errado:
    %eq_circulo_positiva = sqrt(r^2-t^2);
    %eq_circulo_negativa = -sqrt(r^2-t^2);
    
    %certo:
    eq_circulo_positiva = sqrt(r.^2-t.^2);
    eq_circulo_negativa = -sqrt(r.^2-t.^2);
    plot(t, eq_circulo_positiva)
    hold on
    plot(t, eq_circulo_negativa)
    hold off
    grid
    
end