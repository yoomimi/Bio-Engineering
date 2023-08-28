#phantom 이미지 불러오기
obj = phantom(256);
imagesc(obj); colormap gray; axis image; axis off;

#matlab 내장함수로 radon tranform
thetas = linspace(0,180,256);
[sinogram, x] = radon(obj, thetas);
imagesc(sinogram);

#matlab 내장함수로 inverse radon transform
I = iradon(sinogram,thetas);
imagesc(I); colormap gray;

#backprojection 방식으로 수동 radon transform
[row, col] = size(sinogram);
backproj = zeros(size(sinogram));
for i=1:1:length(thetas)
    backproj = backproj + imrotate(repmat(sinogram(:, i), [1,col]), -thetas(i), 'bilinear', 'crop');
end
backproj=backproj';
figure;
imagesc(backproj); colormap gray; axis image

