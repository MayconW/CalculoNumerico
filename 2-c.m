
x = 1;
qtd=0;

function fx1 = formulation1(x)
    fx1 = sqrt(x^2 + 1) - 1;

end

function fx2 = formulation2(x)
    fx2 = x^2 / (sqrt(x^2 + 1) + 1);

end


disp('Ciclos:')
while true
    % Calculando os valores de f(x) para ambas as formulações
    fx1 = formulation1(x);
    fx2 = formulation2(x);

    % Verificando se f(x) > 0 para ambas as formulações
    if fx1 <= 0
        disp(['Para a primeira formulação, f(', num2str(x), ') não é maior que 0.']);
        break;
    end

    if fx2 <= 0
        disp(['Para a segunda formulação, f(', num2str(x), ') não é maior que 0.']);
        break;
    end

    x = x / 2;
    qtd++;
    disp([num2str(qtd)]);
end

if fx2 > 0
        disp(['Para a segunda formulação, f(', num2str(x), ') é maior que 0.']);
end

if fx1 > 0
        disp(['Para a primeira formulação, f(', num2str(x), ') é maior que 0.']);
end

