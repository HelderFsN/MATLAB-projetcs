clear;clc;
tipoCorrente = input('digite 1 (corrente alternada) ou 2 (corrente continua): \n');
tensao = input('Tensão(v): ');

switch tipoCorrente
    case 1
        if  tensao > 50 & tensao < 1000
            tensaoSaida = 'Baixa Tensão';
        elseif tensao > 1000
            tensaoSaida = 'Alta Tensão';
        end
    case 2
        if  tensao > 120 & tensao < 1500
            tensaoSaida = 'Baixa Tensão';
        elseif tensao > 1500
            tensaoSaida = 'Alta Tensão';
        end
end
tensaoSaida
