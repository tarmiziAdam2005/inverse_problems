imC = imread('Cameraman256.png', 'png');
imC = double(imC);
% imagesc(imC); 
colormap(gray);

sigma = 50;
imgNew = addNoise(imC, sigma);
imagesc(imgNew); 

alpha = 1;
% deconvolve using preconditioned conjugate gradients
AtApAlphaI = imgNew'*imgNew + alpha.* eye(size(imgNew,2));

%TODO write A(f) is the addBlurNoise function
fa = pcg(AtApAlphaI, imgNew' * );



imB = imread('boat.tiff', 'tiff');
