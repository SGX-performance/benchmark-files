% E call hot WARM %%%%%%%%%%%%%%%%%%%%%

HotEcall_warm = xlsread('HotEcall_latencies_in_cycles.xlsx', 'HotEcall_latencies_in_cycles', 'A2: B200001');

x1 = HotEcall_warm(:,1);
y1 = HotEcall_warm(:,2);

figure(1);
subplot(2,1,1);
plot(x1,y1,'r');

title('System 2: Ubuntu 18.04.02 Linux 4.18.0-17-generic');
text(12000,0.5,'Hot Ecalls','Color','black','FontSize',14)

% xlabel('Cycles (x1000)');
% ylabel('Probability');

xlim([0 20000]);
xticks([0 2000 4000 6000 8000 10000 12000 14000 16000 18000 20000]);
xticklabels([0 2 4 6 8 10 12 14 16 18 20]);

ylim([0 1]);
yticks([0 0.5 1]);

% E call Hot COLD %%%%%%%%%%%%%%%%%%%%%

HotEcall_cold = xlsread('HotEcall_latencies_in_cycles.xlsx', 'HotEcall_latencies_in_cycles', 'C2: D200001');

x2 = HotEcall_cold(:,1);
y2 = HotEcall_cold(:,2);

hold on
figure(1);
plot(x2,y2,'b');

legend('Warm cache','Cold cache', 'Location', 'southeast');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% O call Hot WARM %%%%%%%%%%%%%%%%%%%%%

HotOcall_warm = xlsread('HotOcall_latencies_in_cycles.xlsx', 'HotOcall_latencies_in_cycles', 'A2: B200001');

x3 = HotOcall_warm(:,1);
y3 = HotOcall_warm(:,2);

figure(1);
subplot(2,1,2);
plot(x3,y3,'r');

text(12000,0.5,'Hot Ocalls','Color','black','FontSize',14)

xlabel('Cycles (x1000)');
ylabel('Probability');

xlim([0 20000]);
xticks([0 2000 4000 6000 8000 10000 12000 14000 16000 18000 20000]);
xticklabels([0 2 4 6 8 10 12 14 16 18 20]);

ylim([0 1]);
yticks([0 0.5 1]);

% O call Hot COLD %%%%%%%%%%%%%%%%%%%%%

HotOcall_cold = xlsread('HotOcall_latencies_in_cycles.xlsx', 'HotOcall_latencies_in_cycles', 'C2: D200001');

x4 = HotOcall_cold(:,1);
y4 = HotOcall_cold(:,2);

hold on
figure(1);
plot(x4,y4,'b');

legend('Warm cache','Cold cache', 'Location', 'southeast');

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% E call regular WARM %

SDKEcall_warm = xlsread('SDKEcall_latencies_in_cycles.xlsx', 'SDKEcall_latencies_in_cycles', 'A2: B200001');

x5 = SDKEcall_warm(:,1);
y5 = SDKEcall_warm(:,2);

figure(2);
subplot(2,1,1);
plot(x5,y5,'r');

title('System 2: Ubuntu 18.04.02 Linux 4.18.0-17-generic');
text(10000,0.5,'Ecalls','Color','black','FontSize',14)

% xlabel('Cycles (x1000)');
% ylabel('Probability');

xlim([8000 20000]);
xticks([8000 10000 12000 14000 16000 18000 20000]);
xticklabels([8 10 12 14 16 18 20]);

ylim([0 1]);
yticks([0 0.5 1]);

% E call regular COLD %

SDKEcall_cold = xlsread('SDKEcall_latencies_in_cycles.xlsx', 'SDKEcall_latencies_in_cycles', 'C2: D200001');

x6 = SDKEcall_cold(:,1);
y6 = SDKEcall_cold(:,2);

hold on
figure(2);
plot(x6,y6,'b');

legend('Warm cache','Cold cache', 'Location', 'southeast');

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% O call regular WARM %

SDKOcall_warm = xlsread('SDKOcall_latencies_in_cycles.xlsx', 'SDKOcall_latencies_in_cycles', 'A2: B200001');

x7 = SDKOcall_warm(:,1);
y7 = SDKOcall_warm(:,2);

figure(2);
subplot(2,1,2);
plot(x7,y7,'r');

text(10000,0.5,'Ocalls','Color','black','FontSize',14)

xlabel('Cycles (x1000)');
ylabel('Probability');

xlim([8000 20000]);
xticks([8000 10000 12000 14000 16000 18000 20000]);
xticklabels([8 10 12 14 16 18 20]);

ylim([0 1]);
yticks([0 0.5 1]);

% O call regular COLD %

SDKOcall_cold = xlsread('SDKOcall_latencies_in_cycles.xlsx', 'SDKOcall_latencies_in_cycles', 'C2: D200001');

x8 = SDKOcall_cold(:,1);
y8 = SDKOcall_cold(:,2);

hold on
figure(2);
plot(x8,y8,'b');

legend('Warm cache','Cold cache', 'Location', 'southeast');
