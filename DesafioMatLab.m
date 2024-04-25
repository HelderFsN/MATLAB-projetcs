clear(); clc;
%Cálculo de limite a resistência a tração para arames de mola comercial

%Registro dos dados da tabela de diâmetros dos arames
dadosDiametros = xlsread('Tabela de Diametros.xlsx');

%Definição de parâmetros
limiteDiametro = 0;
expoenteA = 0;
coeficienteB = 0;
encontradoNaLista = 0;
diametro = 0;
material = 0;

%Escolha do diâmetro
while encontradoNaLista ~= 1 || limiteDiametro == 0
    diametro = input('Qual o diâmetro da mola? ');
    for col = 1:2
        for lin = 1:length(dadosDiametros)
            if diametro == dadosDiametros(lin,col)
                encontradoNaLista = 1;
            end
        end
    end
    if encontradoNaLista
        %definir as propriedades do material escolhido
        try
            %Escolha do material
            fprintf('Menu: \nEscolha o material aplicado à mola \n1-Corda de Piano       3-Aço encruado     5-Aço-liga Cr-Si\n2-Aço revenido em óleo 4-Aço-liga Cr-Va\n');
            opcaoMaterial = input('Opção: ');
    
            switch opcaoMaterial 
                case 1 %Corda de Piano
                    material = 'Corda de Piano';
                    limiteDiametro = diametro >= 0.25 & diametro <= 6.5;
                    expoenteA = -0.1625;
                    coeficienteB = 2153.5;
                case 2 %Aço revenido em óleo
                    material = 'Aço revenido em óleo';
                    limiteDiametro = diametro >= 0.5 & diametro <= 16;
                    expoenteA = -0.1833;
                    coeficienteB = 1831.2;
                case 3 %Aço encrutado
                    material = 'aço encrutado';
                    limiteDiametro = diametro >= 0.5 & diametro <= 16;
                    expoenteA = -0.1822;
                    coeficienteB = 1753.3;
                case 4 %Aço-liga Cr-Va
                    material = 'Aço-Liga Cr-Va';
                    limiteDiametro = diametro >= 0.5 & diametro <= 13;
                    expoenteA = -0.1453;
                    coeficienteB = 1909.9;
                case 5 %Aço-liga Cr-Si
                    material = 'Aço-liga Cr-Si';
                    limiteDiametro = diametro >= 0.8 & diametro <= 11;
                    expoenteA = -0.0934;
                    coeficienteB = 2059.2;
                otherwise
                    disp('Digite um número entre 1 e 5 para ser compatível as opções')
            end
            if limiteDiametro == 0 & material ~= 0
                disp('o valor não se enquadra na faixa de diâmetro. Digite outro valor!')
            end
        catch
            disp('Error! Não foi digitado um número')
        end
    else
        disp('Diâmetro não encontrado comercialmente. Digite outro valor!')
    end

end

resistenciaLimiteT = coeficienteB*(diametro^expoenteA);
fprintf('A resistência limite à tração para arames de molas feito com o material %s e possuindo %.2f mm de diâmetro é\n%.2f MPA',material,diametro,resistenciaLimiteT)