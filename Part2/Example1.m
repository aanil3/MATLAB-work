%% Assignment 2 - Abinav Anil
% Student ID: 250964140

%% Part A
Data = load('A2.mat');
figure;
scatter(xtr, ytr, "filled");
title('Figure 1: Scatter plot for xtr and ytr');
figure;
scatter(xte, yte, "filled");
title('Figure 2: Scatter plot for xte and yte');

%% Part B
figure;
p = polyfit(xtr,ytr,1)
x=linspace(0,3); 
fx=polyval(p,x);
hold on
scatter(xtr, ytr, "filled");
plot(x,fx);
hold off
fxtr=polyval(p,xtr);
err=sum((fxtr-ytr).^2)/length(xtr);
title('Figure 3:', ["order: 1 training error: " + err]);

%% Part C
figure;
scatter(xte,yte,[],"filled");
hold on
plot(x,fx);
hold off
fx = polyval(p,xtr);
err = sum((fx-ytr).^2)/length(xtr);
title('Figure 4:', ["order: 1 training error: " + err]);
%% Part D
col1 = ones(40,1);
X = [xtr,col1];
regCoeff = inv(X.'*X)*X.'*ytr

%% Part E
figure
p = polyfit(xtr,ytr,3)
x=linspace(0,3); 
fx=polyval(p,x);
hold on
scatter(xtr, ytr, [], "filled");
plot(x,fx);
hold off
fxtr=polyval(p,xtr);
err=sum((fxtr-ytr).^2)/length(xtr);
title('Figure 5:', ["order: 3 training error: " + err]);

x=linspace(0,3);
p = polyfit(xtr,ytr,3)
fx = polyval(p,x);
figure;
scatter(xte,yte,[],"filled");
hold on
plot(x,fx);
hold off
fxtr = polyval(p,xtr);
err = sum((fxtr-ytr).^2)/length(xtr);
title('Figure 6:', ["order: 3 training error: " + err]);

%% Part F
figure;
p = polyfit(xtr,ytr,10)
x=linspace(0,3); 
fx=polyval(p,x);

hold on
scatter(xtr, ytr, [], "filled")
plot(x,fx)
hold off

yxtr=polyval(p,xtr);
err=sum((yxtr-ytr).^2)/length(xtr);
title('Figure 7:', ["order: 10 training error: " + err]);

p = polyfit(xtr,ytr,10)
x=linspace(0,3);
fx = polyval(p,x);

figure;
hold on
scatter(xte,yte,[], "filled");
plot(x,fx);
hold off
fxtr = polyval(p,xtr);
err = sum((fxtr-ytr).^2)/length(xtr);
title('Figure 8:', ["order: 10 training error: " + err]);

