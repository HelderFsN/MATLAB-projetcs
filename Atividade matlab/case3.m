clear;clc;
vetorF = [14 18 8 9 13];
vetorX = [0.013 0.020 0.009 0.010 0.012];
tamVetor = size(vetorX);
tamVetor = tamVetor(2);
k = vetorF./vetorX;
u = (1/2)*k.*vetorX.^2; 
disp('          F         X           K           U')
coluna = 1;
for mola = 1:tamVetor
    matriz(mola,:) = [vetorF(mola),vetorX(mola),k(mola),u(mola)];
    fprintf('%dº MOLA| %2.f     %.4f    %.4f    %.4f|\n',mola,vetorF(mola),vetorX(mola),k(mola),u(mola))

end