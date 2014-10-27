x = zeros(100);
x(25:75, 25:75) = 1;
subplot(2, 3, 1);
imshow(x); 

[R, xp] = radon(x, 30);
subplot(2, 3, 4);
plot(xp, R);

x = zeros(100);
x(25:75, 25:75) = 1;
x(40:60, 40:60) = 2;
subplot(2, 3, 2);
mesh(x);

[R, xp] = radon(x, 0);
subplot(2, 3, 5);
plot(xp, R);

[X, Y] = meshgrid(linspace(0, 100), linspace(0, 100));
Z = X.^2 + Y.^2;
subplot(2, 3, 3);
mesh(X, Y, Z);

[R, xp] = radon(Z, 90);
subplot(2, 3, 6);
plot(xp, R)