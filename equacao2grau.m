a = input("Qual o valor de a? ");
b = input("Qual o valor de b? ");
c = input("Qual o valor de c? ");

delta = b^2-4*a*c;

if(delta > 0)
    x1 = (-b + sqrt(delta))/2*a;
    x2 = (-b - sqrt(delta))/2*a;
    fprintf("O conjunto solução é \n{%.2f,%.2f}",x1,x2);
elseif (delta == 0)
    x1 = -b/2*a;
    fprintf("O conjunto solução é \n{%.2f}",x1);
else
    fprintf("a equação: %dX²+%dX+%d \nNão possui solução real",a,b,c);
end

