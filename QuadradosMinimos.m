% Pontos tabelados
x = [-5, -3, -1, 0, 2, 4, 5];
y = [25.1, 8.93, 0.98, 0.03, 3.96, 16.05, 25];

residuos = zeros(1, length(x) - 1);
ajustes = cell(1, length(x) - 1);

figure;

for n = 1:length(x) - 1
    coeficientes = ajustePolinomial(x, y, n);
    ajustes{n} = coeficientes;

    polinomio = polyval((coeficientes), x);

    residuo = sum((y - polinomio).^2);
    residuos(n) = residuo;

    subplot(2, 3, n);

    pos = get(gca, 'Position');
    set(gca, 'Position', [pos(1) pos(2) pos(3) 0.85*pos(4)]);

    plot(x, y, 'o', 'DisplayName', 'Pontos tabelados');
    hold on;

    fplot(@(x) polyval((coeficientes), x), [-6, 20], 'DisplayName', ['Grau ' num2str(n)]);
    title(['Grau do polinômio = ' num2str(n)]);
    xlim([-6, 20]);
    ylim([-10, 60]);
    hold off;

end

