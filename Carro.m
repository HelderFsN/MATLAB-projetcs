clc;clear;
texto = input('Parâmetros: \n','s')
campos = strsplit(texto,', ')
nCampos = length(campos)
% for aux = 1:nCampos
%     carro.(campos{aux}) = []
% end
carro = cell2struct(cell(nCampos),campos)
nCarros = input('Número de carros que você deseja cadastrar: ')

for cont = 1:nCarros
    fprintf('Informações sobre o %dº Carro: \n',cont)
    for i = 1:nCampos
        textoInput = [campos{i} ': ']
        carro(cont).(campos{i}) = input(textoInput,'s')
    end
end

% Converte a struct em uma tabela
dataTable = struct2table(carro);

% Define o nome do arquivo Excel
nomeArquivo = 'dados2.xlsx';

% Exporta a tabela para a planilha
writetable(dataTable, nomeArquivo);

% Exibe uma mensagem de confirmação
disp('Dados exportados com sucesso para dados.xlsx');
