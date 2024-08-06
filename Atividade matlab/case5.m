clear;clc;
syms t
intervalo_teste = 0:28;
for tempo = intervalo_teste
    if tempo == 0
        v = 10*t^2 - 5*t;
         hold on
            fplot(v,[0,8])
         hold off
    elseif tempo == 8
        v = 624 - 3*t
         hold on
            fplot(v,[8,16])
         hold off
        elseif tempo == 16
            v = 36*t+12*(t-16)^2
             hold on
                fplot(v,[16,26])
             hold off
        elseif tempo == 26
               v = 2136*exp(-0.1*(t-26))
                hold on
                    fplot(v,[26,40])
                hold off
    end
end


% intervalo = linspace(0,27,200);
% intervalo1 = find(intervalo<=8)
% intervalo2 = find(intervalo>=8&intervalo<=16);
% intervalo3 = find(intervalo>=16&intervalo<=26);
% intervalo4 = find(intervalo>26);
% 
% intervalos = [intervalo1, intervalo2, intervalo3, intervalo4]
% for cont = intervalos
%     for tempo = intervalo(cont)
%         if tempo > intervalo(1) & tempo <= intervalo(8)
%             v = 10*tempo^2 - 5*tempo
%             hold on
%             plot(tempo,v,'-ro')
%             hold off
%         end
%         if tempo > intervalo(8) & tempo <= intervalo(16)
%             v = 624 - 3*tempo
%             hold on
%             plot(tempo,v,'-ro')
%             hold off
%         end
%     end
% end

