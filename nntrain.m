%Before run this script first open the inputdata.mat and targetdata.mat in the workspace from the folder DATA
net=newff(minmax(inputs),[10],{'tansig'},'trainlm','learngdm','mse');
[trainInd,valInd,testInd] = dividerand(0.70,0.15,0.15);
net=train(net,inputs);
y=net(inputs);
perf=perform(net,y,targets);
e = targets - y;
view(net);
ploterrhist(e);


