clear;clc;

x = linspace(0,10)
plot(x,u(x))
function des = u(x)
    des = -(5/6).*(sing(x,0,4)-sing(x,5,5))+(15/6).*sing(x,8,3)+75.*sing(x,7,2)+(57/6).*(x.^3)*238.25.*x
end

function singularidade = sing(x,a,n)
    if x > a
        singularidade = (x-a).^n
    else
        singularidade = 0;
    end
end