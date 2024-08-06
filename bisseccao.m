clear; clc;
syms x
% funcString = input('Qual a função? ','s');
% func = str2sym(funcString);
func = (x + 2)/x
e = 0.00001;
n = 0;
while 1
    a = input('Qual o limite inferior? ');
    b = input('Qual o limite superior ');
    while 1
        try
            imagemA = subs(func,a);
            imagemB = subs(func,b);
            break
        catch e
            fprintf('\nERROR: %s \n \nDigite novos limites! \n \n',e.message)
        end
        a = input('Qual o novo limite inferior? ');
        b = input('Qual o novo limite superior ');
    end
    if imagemA == 0 
        res = a;
        break
    elseif imagemB == 0
        res = b;
        break
    elseif imagemA * imagemB < 0
        break
    else
        disp('Raiz não encontrada nesse intervalo, digite outros limites')
    end
end

disp('iterações         a           b               xm              f(a)*f(xm)<0')

while abs(a-b) > e & res == 0
    xm = (a+b)/2;
    imagemXM = subs(func, xm);
    if imagemXM == 0
        break
    end
    if imagemA * imagemXM < 0
        condicao = 'Verdadeiro';
        b = xm;
    else
        a = xm;
        condicao = 'Falso';
    end
    fprintf('   %d        %.5f           %.5f           %.5f         %s\n',n,a,b,xm,condicao);
    imagemA = subs(func,a);
    n = n + 1;
    res = xm;
end
res