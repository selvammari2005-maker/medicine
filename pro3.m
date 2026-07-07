clc;
clear;
close all;

img = imread('bird.jfif');
img = rgb2gray(img);

noise_image = imnoise(img,'salt & pepper',0.02);

subplot(2,2,1);
imshow(noise_image);
title('Noisy Image');

midfilter = medfilt2(noise_image,[3 3]);

subplot(2,2,2);
imshow(midfilter);
title('Median Filter');


avg_kernel = fspecial('average',[3 3]);
output = imfilter(noise_image, avg_kernel);

subplot(2,2,3);
imshow(output);
title('Mean Filter');