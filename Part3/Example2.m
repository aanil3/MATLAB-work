% 250964140
% Abinav Anil
%% Sample answers given to verify solutions
expsinplot(-3,5)
figure
expsinplot(1,10)
figure
expsinplots([-5, -2, 10], [20, 10, 5])
expsinsubplot([-5, -2, 10], [20, 10, 5])

%% Construct vector with 1001 values between 0 and 10. Get y value using given formula and then plot the function
function expsinplot(tau, omega)
    t = linspace(0,10,1001);
    y = 10*exp(-t/tau).*sin(omega*t);
    plot(t,y,'r');
    grid on; 
    title(['Plot of y(t) = 10e^{-t/\tau} sin (\omega t), \tau = ',num2str(tau),' \omega = ',num2str(omega)]); %With B) create title with given values and formulas and label axis' with fontsize 14
    xlabel('x', FontSize=14);
    ylabel('y(t)', FontSize=14);
end

%% Create a function that allows for 2-dimensional vectors using length(taus) to obtain value of M and call expsinplot M times to plot M figures
function expsinplots(taus, omegas)
    for i=1:length(taus)
        expsinplot(taus(i),omegas(i));
        figure;
    end
end

%% Create a function similar to expsinplot but has M graphs in one figure
function expsinsubplot(taus, omegas)
    for i=1:length(taus)
        expsinplot(taus(i),omegas(i));
        hold on;
    end
end