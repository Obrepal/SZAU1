close all;
a1 = 16;
il = 2;
if il == 5
    Y0 = 33;%54
    Y1 = 45;%90
    Y2 = 54;%10
    Y3 = 65;%73
    Y4 = 75;%21
end
if il == 4
    Y0 = 30;%54
    Y1 = 45;%90
    Y2 = 60;%10
    Y3 = 75;%73
    Y4 = 0;%21
end
if il == 3
    Y0 = 40;%54
    Y1 = 54;%90
    Y2 = 70;%10
    Y3 = 0;%73
    Y4 = 0;%21
end
if il == 2
    Y0 = 40;%54
    Y1 = 70;%90
    Y2 = 0;%10
    Y3 = 0;%73
    Y4 = 0;%21
end
F_D = 10;
h2 = zeros (100,1);
h2_l0 = h2;
h2_l1 = h2;
h2_l2 = h2;
h2_l3 = h2;
h2_l4 = h2;
for i = 24:84
    h2(i)= ((i+F_D)/a1)^2;
    h2_l0(i)= ((Y0+F_D)/a1)^2+2*((Y0+F_D)/a1)*(i-Y0)/a1;
    h2_l1(i)= ((Y1+F_D)/a1)^2+2*((Y1+F_D)/a1)*(i-Y1)/a1;
    h2_l2(i)= ((Y2+F_D)/a1)^2+2*((Y2+F_D)/a1)*(i-Y2)/a1;
    h2_l3(i)= ((Y3+F_D)/a1)^2+2*((Y3+F_D)/a1)*(i-Y3)/a1;
    h2_l4(i)= ((Y4+F_D)/a1)^2+2*((Y4+F_D)/a1)*(i-Y4)/a1;
end
plot(24:84,h2(24:84));
hold on;
if il == 5
    plot(24:uint8((Y0+Y1)/2),h2_l0(24:uint8((Y0+Y1)/2)));
    plot(uint8((Y0+Y1)/2):uint8((Y1+Y2)/2),h2_l1(uint8((Y0+Y1)/2):uint8((Y1+Y2)/2)));
    plot(uint8((Y1+Y2)/2):uint8((Y2+Y3)/2),h2_l2(uint8((Y1+Y2)/2):uint8((Y2+Y3)/2)));
    plot(uint8((Y2+Y3)/2):uint8((Y3+Y4)/2),h2_l3(uint8((Y2+Y3)/2):uint8((Y3+Y4)/2)));
    plot(uint8((Y3+Y4)/2):84,h2_l4(uint8((Y3+Y4)/2):84));
end
if il == 4
    plot(24:uint8((Y0+Y1)/2),h2_l0(24:uint8((Y0+Y1)/2)));
    plot(uint8((Y0+Y1)/2):uint8((Y1+Y2)/2),h2_l1(uint8((Y0+Y1)/2):uint8((Y1+Y2)/2)));
    plot(uint8((Y1+Y2)/2):uint8((Y2+Y3)/2),h2_l2(uint8((Y1+Y2)/2):uint8((Y2+Y3)/2)));
    plot(uint8((Y2+Y3)/2):84,h2_l3(uint8((Y2+Y3)/2):84));
    
end
if il == 3
    plot(24:uint8((Y0+Y1)/2),h2_l0(24:uint8((Y0+Y1)/2)));
    plot(uint8((Y0+Y1)/2):uint8((Y1+Y2)/2),h2_l1(uint8((Y0+Y1)/2):uint8((Y1+Y2)/2)));
    plot(uint8((Y1+Y2)/2):84,h2_l2(uint8((Y1+Y2)/2):84));
end
if il == 2
    plot(24:uint8((Y0+Y1)/2),h2_l0(24:uint8((Y0+Y1)/2)));
    plot(uint8((Y0+Y1)/2):84,h2_l1(uint8((Y0+Y1)/2):84));
end