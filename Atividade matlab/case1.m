clear;clc;
material = input('Qual a especificação? ','s');
tamString = size(material);
QuantCarbono = material(9:tamString(2));
QuantCarbono = str2num(QuantCarbono);
percentualCarbono = QuantCarbono/100;
if percentualCarbono < 0.76
    classificacao = 'hipoeutetoide';
elseif percentualCarbono == 0.76
    classificacao = 'eutetoide';
elseif percentualCarbono > 0.76 & percentualCarbono < 2.11
    classificacao = 'hipereutetoide';
elseif percentualCarbono >= 2.11 & percentualCarbono <= 6.7
    classificacao = 'Ferro fundido';
end
fprintf('Classificação: %s',classificacao)
