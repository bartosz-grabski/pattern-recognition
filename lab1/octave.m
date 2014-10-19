# 3.0

x = linspace(0, 2*pi);
y = sin(x);
noise = randn(1,numel(x)) * 0.1;
ynoise = y+noise;

plot(x,y,x, ynoise);

window = 5;
mesh = ones(1,window) / window;
c = conv(ynoise, mesh, 'same');

plot(x,y,x,ynoise,x,c);

# 4.0

################# Exercise 1

a = randn(100,100); 	# 100x100 matrix of normally distributed numbers
# mesh(a);		# 3D plot
s = [1 2 1; 0 0 0; -1 -2 -1];
a = rand(3)
b = rand(4)
#print('same')

conv2(a,s,'same')

#print('full')

conv2(b,s,'full')

#print('valid')

conv2(b,s,'valid')


################# Exercise 2

Z = peaks(100);
clevels = -7:1:10; % contour levels for all plots

figure
contour(Z,clevels)
axis([0,100,0,100])
title('Peaks Surface (underlying data)')

ZN = Z + rand(100) - .5;

figure
contour(ZN,clevels)
axis([0,100,0,100])
title('Peaks Surface (noise added)')

F = [.05 .1 .05; .1 .4 .1; .05 .1 .05];
ZC = conv2(ZN,F,'same');

figure
contour(ZC, clevels)
axis([0,100,0,100])
title('Noisy Surface (smoothed once)')


################# Exercise 3

I = imread('deblurring3.gif');
I2= conv2(I, fspecial('gaussian',50,100) , 'same');
imshow(I2,[])

I = imread ("deblurring3.gif");
S = conv2 (I, ones (5, 5) / 25, "same");
imshow(S,[])

I = imread ("deblurring3.gif");
S = conv2 (I, fspecial("sobel"), "same");
imshow(S,[])


################ Exercise 4

c = padarray(fspecial("sobel"),[4 4]);
mesh(c)



