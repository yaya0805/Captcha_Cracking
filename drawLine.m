function [ output ] = drawLine( input, r1, r2, sigma)
%input = im2double(input);
%YCBCR=rgb2ycbcr(input);
Y=input(:,:,1);
%sigma=1.5;
output=edge(Y,'canny',[r1 r2],sigma,'Thinning');

end

