function [ bw1 bw2 bw3 bw4 bw5 bw6]= extractMulti_Connect( input_bw, dim )
%warning
boundary = drawLine(input_bw, 0.1, 0.5, 1);
input_bw = input_bw - boundary;
input_bw(input_bw<0) = 0;
%figure, imshow(boundary)
%warning
level = multithresh(input_bw,dim);
level = double(level);
[input_r input_c] = size(input_bw);
[r c] = size(level);
% initialize outputs
bw1 = zeros(input_r,input_c,'double');
bw2 = zeros(input_r,input_c,'double');
bw3 = zeros(input_r,input_c,'double');
bw4 = zeros(input_r,input_c,'double');
bw5 = zeros(input_r,input_c,'double');
bw6 = zeros(input_r,input_c,'double');
for i=c:-1:1,
    if i==c,
        bw = im2bw(input_bw, level(1,i));
        %bw = im2bw(input_bw, 0.235);
        last_one = input_bw;
    else
        bw = im2bw(last_one, level(1,i));
    end
    % dilate and erosion
    %se = strel('disk',1);
    se = [1;1];
    %[edgelist, bw, etype] = edgelink(bw,100);
    %boundary = drawLine(last_one, 0.25, 0.5, 1.5);
    %figure, imshow(bw);
    %bw = imdilate(bw,se);
    %figure, imshow(bw);
    bw = imerode(bw,se);
    %bw = imerode(bw,se);
    bw = imdilate(bw,se);
    bw = im2bw(bw,0);
    %figure, imshow(bw);
    last_one = last_one - bw;
    last_one(last_one<0) = 0;
    if i==6,
        bw6 = bw;
    elseif i==5,
        bw5 = bw;
    elseif i==4,
        bw4 = bw;
    elseif i==3,
        bw3 = bw;
        %bw4 = last_one;
    elseif i==2,
        bw2 = bw;
        %bw5 = last_one;
    elseif i==1,
        bw1 = bw;
        %bw6 = last_one;
    end
    %figure, imshow(bw);
    %figure, imshow(last_one);
end

end

