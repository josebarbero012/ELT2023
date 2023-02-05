clc; clear;
load('log.mat');
figure(1)

%%%%    VALORES DE AIRSPEED DO VOO     %%%%
arsp_vel=[ARSP(1350:2750,2)];
arsp_time=[ARSP(1350:2750,3)];
subplot(2,2,1)
plot(arsp_vel,arsp_time);
title('ARSP')
xlabel('Time')
ylabel('ARSP')


%%%%    VALORES DE VEL GPS DO VOO     %%%%

time_gps=[GPS(600:1325,2)];
speed_gps=[GPS(600:1325,11)];
subplot(2,2,2)
plot(time_gps,speed_gps);
title('SPD GPS')
xlabel('Time')
ylabel('RSP')

%%%%    ALTITUDE DO BAROMETRO     %%%%
alt_baro=[BARO(1520:2430,3)];
time_baro=[BARO(1520:2430,2)];
subplot(2,2,3)
plot(time_baro,alt_baro);
title('ALT BARO')
xlabel('Time')
ylabel('Altitude')


%%%%    ALTITUDE DO GPS     %%%%

alt_gps=[GPS(600:1325,10)];
subplot(2,2,4)
plot(time_gps,alt_gps);
title('ALT GPS')
xlabel('Time')
ylabel('Altitude')


