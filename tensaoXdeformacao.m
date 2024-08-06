clear;clc;
%Tensão x Deformação
dadosEnsaio = xlsread('dadosEnsaioTracao.xlsx');
cargas = dadosEnsaio(:,1);
deformacao = dadosEnsaio(:,2);

do = 0.0127;
area = (pi*do^2)/4;
tensao = cargas./area;
lo = 0.0508;
e = deformacao./lo;

limRT = max(tensao);

subplot(2,1,1)
plot(e,tensao)
xlabel('e [m]')
ylabel('Tensão [Pa]')

hold on 
plot(e(tensao == limRT),limRT, 'ro', 'MarkerSize', 10)
text(e(tensao == limRT),limRT-40000, 'Lim. de Resistência a Tração')
hold off


subplot(2,1,2)
plot(e,tensao)
axis([0 20 0 500000])
xlabel('e [m]')
ylabel('Tensão [Pa]')



hold on
tamanho = length(tensao);
antAngulo = round(atan(e(2)/tensao(2)),8)
limElast = 0;
for k = 3:tamanho
    angulo = round(atan(e(k)/tensao(k)),8)
    if angulo ~= antAngulo && limElast == 0
        limElast = tensao(k-1)
    end
end

plot(e(tensao == limElast),limElast, 'ro', 'MarkerSize', 20)
text(e(tensao == limElast)+1,limElast, 'Limite Elástico')
hold off