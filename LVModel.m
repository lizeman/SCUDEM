clear
clc



LVMODEL1(0)
LVMODEL1(0.001)




function result = LVMODEL1(alpha)

    x10=2000;
    x20=500;
    [T,Y]=ode45('catcher',[0 80],[x10 x20 alpha]);
    subplot(121)
    plot(T,Y(:,1),'-',T,Y(:,2),'o','LineWidth',2);
    legend('The Total Population of Butterfly','The Total Population of Wasp');
    xlabel('time (Days)');
    ylabel('The Total Population');
    title('The Total Population of Spices With Respect to Time');
    set(gca,'FontSize',18,'LineWidth',2);
    subplot(122);
    plot(Y(:,1),Y(:,2),'LineWidth',2);
    xlabel('The Total Population of Butterfly');
    ylabel('The Total Population of Wasp');
    title('The Ratio Between Population of Butterfly and Wasp');
    set(gca,'FontSize',18,'LineWidth',2);
    result = max(Y(80,1));
end
