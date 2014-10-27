BW = 1256 - imread('line.png');

theta = 0:179;
[R,xp] = radon(BW,theta);
figure, imagesc(theta, xp, R); colormap(hot);
xlabel('\theta (degrees)'); ylabel('x\prime');
title('R_{\theta} (x\prime)');
colorbar
