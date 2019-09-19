function sc1_lista1_questao10()
    %declarando variaveis
    syms x y z;
    
    %declarando equações
    eq1 = 'sqrt(2)* x * y + z - 3';
    eq2 = 'x/z + y';
    eq3 = 'x * y / z + 3.45';
    
    %chamando a solucao
    s = solve(eq1,eq2,eq3);
    
    %printando a resposta
    fprintf('x: %d \n', s.x);
    fprintf('y: %d \n', s.y);
    fprintf('z: %d \n', s.z);
end