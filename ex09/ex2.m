I = 255 - rgb2gray(imread('triangle.jpg'));
subplot(2, 5, 1);
imshow(I);

[R, xp] = radon(I, 0);
subplot(2, 5, 6);
plot(xp, R);

I = 255 - rgb2gray(imread('points.png'));
subplot(2, 5, 2);
imshow(I);

[R, xp] = radon(I, 0);
subplot(2, 5, 7);
plot(xp, R);

I = 255 - rgb2gray(imread('circle.png'))
subplot(2, 5, 3);
imshow(I);

[R, xp] = radon(I, 0);
subplot(2, 5, 8);
plot(xp, R);

I = 255 - rgb2gray(imread('circle2.jpg'));
subplot(2, 5, 4);
imshow(I);

[R, xp] = radon(I, 0);
subplot(2, 5, 9);
plot(xp, R);

I = 255 - imread('line.png');
subplot(2, 5, 5);
imshow(I);

[R, xp] = radon(I, 60);
subplot(2, 5, 10);
plot(xp, R);