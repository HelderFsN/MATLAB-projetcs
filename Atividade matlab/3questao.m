clear; clc;
 %Despesas do Projeto

 desp_execucao = [];
 desp_competicao = [];
 caixa_execucao = 8000;
 caixa_competicao = 12000;
 cont_execucao = 0;
 contGastosCompeticao = 0;

 Opcao = input('Digite 1 (alterar as despesas de execução) ou 2 (alterar as despesas de competição)')
 condicaoSaida = 'sair'
 while condicaoSaida ~= 'sair'
     fprint('Valor no caixa: /n Para Execução do projeto: %.3f | Competiçao: %.3f',caixa_execucao-sum(desp_execucao),caixa_competicao-sum(desp_competicao))
     if Opcao == 1
         desp_inf = input('Qual o tipo de despesa? ')
         desp_valor = input('Qual o valor da despesa')
         desp_execucao = [desp_execucao, [desp_inf desp_valor]]
     end
        
     if caixa_execucao < sum(desp_execucao) || caixa_competicao < sum(desp_competicao)
         disp('Não temos verba para esse gasto')
     end
     condicaoSaida = input('Digite sair para fechar o programa ou enter para continuar','s')
 end
 desp_execucao