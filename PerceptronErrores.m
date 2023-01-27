clc; 
close all;
clear all;

%--------------------------------------------------------------------------
%ENTRENAMIENTO

Xprueba = xlsread('C:\Users\marce\OneDrive\Documents\MATLAB\DATASETTrain.xlsx');
dataXTrain = Xprueba(:, 1:end-1);
dataYTrain = Xprueba(:, end);


[NTrain, n] = size(dataXTrain);

W = zeros(1, n + 1); %pesos vector del tamaño de las caracteristicas mas el biass

dataXBias = [ones(NTrain, 1), dataXTrain]; %biass

dataYTrainHat = double( dataXBias*W' >= 0 );

ErrorBest = sum( dataYTrainHat ~= dataYTrain )/NTrain;
WBest = W;

errorBestHistory = zeros(1, NTrain);
errorTrainHistory = zeros(1, NTrain);


for idx = 1:1:NTrain
    i = mod(idx, NTrain);
    if i == 0
        i = NTrain;
    end
    
    dataYTrainHat_i = double( dataXBias(i, :)*W' >= 0 );
   
    error_i = dataYTrain(i) - dataYTrainHat_i;
  
    if error_i ~= 0
        W = W + error_i*[1, dataXTrain(i,:)];   
    end
 
    dataYTrainHat = double( dataXBias*W' >= 0 );
    errorTrainHistory(1, idx) = sum( dataYTrainHat ~= dataYTrain )/NTrain;

    if errorTrainHistory(1, idx) < ErrorBest
        ErrorBest = errorTrainHistory(1, idx);
        WBest = W;
        dataYTrainHat_b = double( dataXBias*WBest' >= 0 );
        errorBestHistory(1, idx) = sum( dataYTrainHat_b ~= dataYTrain )/NTrain;
    else
        if idx ~= 1
            errorBestHistory(1, idx) = errorBestHistory(1, idx - 1);
        else
            errorBestHistory(1, idx) = errorTrainHistory(1, 1);
        end
    end
end

W = WBest;

fprintf('Error de entrenamiento = %3.2f %%\n',100*ErrorBest);



j = tsne(dataXTrain);
gscatter(j(:,1),j(:,2),dataYTrain)

%--------------------------------------------------------------------------
%TESTEO


Xtest = xlsread('C:\Users\marce\OneDrive\Escritorio\DATASETTest.xlsx');
dataXTest = Xtest(:, 1:end-1);
dataYTest = Xtest(:, end);

[NTest, ntest] = size(dataXTest);

dataXtestBias = [ones(NTest, 1), dataXTest];
dataYTestHat = double( dataXtestBias*W' >= 0 );



EBest = sum( dataYTestHat ~= dataYTest )/NTest;


fprintf('Error de testeo = %3.2f %%\n', 100*EBest);

