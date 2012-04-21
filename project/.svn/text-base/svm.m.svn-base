

X = dlmread('traindata.txt');
Y = dlmread('labels.txt');


%X = [X(:,[2,7,8,9,10,11])];
%X = [X(:,[5])];

accuracy =  0.0;
iter = 20;

for i=1:1:iter
    
    [train test] = crossvalind('HoldOut',Y ,0.2 );
    cp = classperf(Y);
    %svmStruct = svmtrain(X(train,:),Y(train),'Kernel_Function','polynomial','Method','SMO','PolyOrder',1);
    svmStruct = svmtrain(X(train,:),Y(train),'Kernel_Function','rbf','Method','SMO');
    %svmStruct = svmtrain(X(train,:),Y(train),'Kernel_Function','rbf','Method','SMO','showplot',true);
    classes = svmclassify(svmStruct,X(test,:));
    %aa = sum(classes)
    %bb = sum(Y(test))
    classperf(cp,classes,test);
    accuracy = (accuracy * (i-1) + cp.CorrectRate) ./ i;
    accuracy
    fprintf('\n--------------------------\n')
end


accuracy

[idx , z] = rankfeatures(X',Y,'Criterion','entropy');
