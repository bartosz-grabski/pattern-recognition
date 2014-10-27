function [x, theta] = find_lines(file)
    I = imread(file);
    I = rgb2gray(I);
    BW = edge(I);
    imshow(I), figure, imshow(BW)

    theta = 0:179;
    [R,xp] = radon(BW,theta);
    figure, imagesc(theta, xp, R); colormap(hot);
    xlabel('\theta (degrees)'); ylabel('x\prime');
    title('R_{\theta} (x\prime)');
    colorbar
end
