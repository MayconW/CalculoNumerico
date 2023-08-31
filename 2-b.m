
x = 0;
qtd=0;

function fx1 = formulation1(x)
    fx1 = sqrt(x^2 + 1) - 1;

end

function fx2 = formulation2(x)
    fx2 = x^2 / (sqrt(x^2 + 1) + 1);

end

prompt = "Digite o valor de X: ";
x = input(prompt)

fx1 = formulation1(x);
fx2 = formulation2(x);

if fx1 > 0
  disp(['Para a primeira formulação, f(', num2str(x), ') é maior que 0.']);
else
  disp(['Para a primeira formulação, f(', num2str(x), ') é menor que 0.']);
end

if fx2 > 0
  disp(['Para a segunda formulação, f(', num2str(x), ') é maior que 0.']);
else
  disp(['Para a segunda formulação, f(', num2str(x), ') é menor que 0.']);
end

