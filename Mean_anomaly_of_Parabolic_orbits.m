%% Coded by
% Mohamed Mohamed El-Sayed Atyya
% mohamed.atyya94@eng-st.cu.edu.eg



% Mean anomaly of Parabolic orbits
close all; clear all; clc;
%% inputs
theta=linspace(0,pi,100);  % True anomaly
E=linspace(0,2*pi,100);  %Mean anomaly 
%% calculations
n=pi;
m=1;
Mp(m)=0;
while Mp(m) <= n
    Mp(m+1)=0.5*tan(theta(m)/2)+(tan(theta(m)/2)).^3/6;
    m=m+1;
end
%% plotting
figure(1);
set(gcf,'color','w');
plot(theta(1:length(Mp)),Mp,'linewidth',2)
grid on;
xlim([0,pi]);
ylim([0,pi]);
xlabel('\theta','fontsize',18);
ylabel('M_p','fontsize',18);
title('Mean anomaly vs True anomaly','fontsize',18);






