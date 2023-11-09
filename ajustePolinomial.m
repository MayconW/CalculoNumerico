function coeficientes = ajustePolinomial(x, y, n)
    % Ajuste de quadrados mínimos para polinômio de grau <= n
    A = zeros(length(x), n + 1);
    for i = 1:n+1
        A(:,i) = x.^(n+1-i);
    end
    coeficientes = (A\y.').';
end

