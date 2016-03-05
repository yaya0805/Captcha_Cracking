function output=preprocess(image);
output=image;
output(output<20)=255;
output(output<255)=0;
output=im2single(output);
output=1-output;
%imshow(output);

end

