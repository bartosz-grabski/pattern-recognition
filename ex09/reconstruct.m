function P = reconstruct(image)
    P = image;
    subplot(2, 2, 1);
    imshow(P)

    theta1 = 0:10:170; [R1,xp] = radon(P,theta1);
    theta2 = 0:5:175;  [R2,xp] = radon(P,theta2);
    theta3 = 0:2:178;  [R3,xp] = radon(P,theta3);

    I1 = iradon(R1,10);
    I2 = iradon(R2,5);
    I3 = iradon(R3,2);

    subplot(2, 2, 2);
    imshow(I1);

    subplot(2, 2, 3);
    imshow(I2);

    subplot(2, 2, 4);
    imshow(I3);
end