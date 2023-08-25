x=-50:50;
y=-50:50;

[X,Y]=meshgrid(x,y);

kx=0.02;
ky=0.02;
img = exp(1j*2*pi*(-kx*X+ky*Y)); % x, y값중 하나(x)의 부호를 바꿈
figure; imagesc(real(img));colormap gray; axis equal;
title('flip');

img = exp(1j*2*pi*(0*X+ky*Y));% x, y값중 하나(x)를 0으로 만듦
figure; imagesc(real(img));colormap gray; axis equal;
title('rotation');
