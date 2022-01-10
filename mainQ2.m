clear all;
close all;


%ode45
[t,h] = ode45(@test_fun,[0 1],[10 1 0 0]);
figure;
hold on
plot(t(:),h(:,1),'g')
plot(t(:),h(:,2),'r')
plot(t(:),h(:,3),'c')
plot(t(:),h(:,4),'b')
xlabel('Time (min)')
ylabel('Concentration (µg)')
title('Evolution of Enzyme Kinetics (resolution with ode45)')
legend('S','E','ES','P')
hold off
grid on;

figure;
hold on
plot(t(:),h(:,4),'g')
xlabel('Time (min)')
ylabel('Concentration (µg)')
title('Evolution of S (resolution with ode45)')
hold off
grid on;

% runge kutta
[t1,h1] = runge_kutta(@test_fun,[10 1 0 0],0.0005,0,1);
figure
hold on
plot(t1(:),h1(1,:),'g')
plot(t1(:),h1(2,:),'r')
plot(t1(:),h1(3,:),'c')
plot(t1(:),h1(4,:),'b')
xlabel('Time (min)')
ylabel('Concentration (µg)')
title('Evolution of Enzyme Kinetics (resolution with runge kutta)')
legend('S','E','ES','P')
hold off
grid on;

figure;
hold on
plot(t1(:),h1(4,:),'g')
xlabel('Time (min)')
ylabel('Concentration (µg)')
title('Evolution of S (resolution with runge kutta)')
hold off
grid on;
