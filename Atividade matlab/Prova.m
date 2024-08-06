clear; clc;
 %Despesas do Projeto
 desp_execucao_inf = {};
 desp_execucao_valor = [];
 desp_competicao_inf = {};
 desp_competicao_valor = [];
 caixa_execucao = 8000;
 caixa_competicao = 12000;
 contGastosExecucao = 0;
 contGastosCompeticao = 0;
 
 while 1
     fprintf('Valor no caixa: \n Para Execução do projeto: %.3f | Competiçao: %.3f\n',caixa_execucao-sum(desp_execucao_valor),caixa_competicao-sum(desp_competicao_valor))
     Opcao = input('Digite 1 (alterar as despesas de execução) ou 2 (alterar as despesas de competição): ');
     if Opcao == 1
         desp_inf = input('Qual o tipo de despesa? ','s');
         desp_valor = input('Qual o valor da despesa? ');
         desp_execucao_valor = [desp_execucao_valor, desp_valor];
         desp_execucao_inf{end+1} = desp_inf;
         contGastosExecucao = contGastosExecucao + 1;
     end
     if Opcao == 2 
         desp_inf = input('Qual o tipo de despesa? ','s');
         desp_valor = input('Qual o valor da despesa? ');
         desp_competicao_valor = [desp_competicao_valor, desp_valor];
         desp_competicao_inf{end+1} = desp_inf;
         contGastosCompeticao = contGastosCompeticao + 1;
     end
     if caixa_execucao < sum(desp_execucao_valor) || caixa_competicao < sum(desp_competicao_valor)
         disp('Não temos verba para esse gasto! ');
     end
     condicaoSaida = input('Digite sair para fechar o programa ou enter para continuar...','s');
     if strcmp(condicaoSaida,'sair')
         break
     end
 end
 disp('Quantidade de gastos são:')
 disp(contGastosCompeticao+contGastosExecucao)
 disp('O valor total dos gastos são:')
 disp(sum(desp_execucao_valor)+sum(desp_competicao_valor))
 disp('As descrição dos gastos são: ')
 disp('Gastos para execução: ')
 for cont = 1:contGastosExecucao
     fprintf('Inf: %s | Valor: %.2f\n',desp_execucao_inf{cont},desp_execucao_valor(cont))
 end
  disp('Gastos para Competição: ')
 for cont = 1:contGastosCompeticao
    fprintf('Inf: %s | Valor: %.2f\n',desp_competicao_inf{cont},desp_competicao_valor(cont))
 end