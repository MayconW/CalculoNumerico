% Estimativa de y(3) e y(10) para o polinômio de grau 6
coeficientes_grau6 = ajustePolinomial(x, y, 6);
y_estimado_3 = polyval((coeficientes_grau6), 3);
y_estimado_10 = polyval((coeficientes_grau6), 10);

fprintf('Estimativa para y(3) com polinômio de grau 6: %.4f\n', y_estimado_3);
fprintf('Estimativa para y(10) com polinômio de grau 6: %.4f\n', y_estimado_10);

