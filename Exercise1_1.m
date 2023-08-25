x=-50:50; % -50부터 50까지 101개의 정수 생성
y=-50:50;

[X,Y]=meshgrid(x,y); % 101*101 matrix 생성

figure(); imagesc(X); %행렬이니까 imagesc로 plot

kx=0.02;
ky=0.02;
img = exp(1j*2*pi*(kx*X+ky*Y));
figure; imagesc(real(img));colormap gray; axis equal;
