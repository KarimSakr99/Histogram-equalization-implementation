clear;
clc;

img=imread('pout.tif');

eq_img=hsteq(img);

subplot(2,2,1),imshow(img),title('Original image')
subplot(2,2,2),imhist(img),title('Original histogram')
subplot(2,2,3),imshow(eq_img),title('Equalized image')
subplot(2,2,4),imhist(eq_img),title('Equalized histogram')