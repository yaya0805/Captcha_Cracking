function [ bw1 bw2 bw1_ori bw2_ori] = extractConnect( input_bw )
level = multithresh(input_bw,2);
level = double(level);
th1 = level(1,1);
th2 = level(1,2);
% right number
bw2 = im2bw(input_bw,th2);
se = strel('disk',1);
bw2 = imerode(bw2,se);
bw2 = imdilate(bw2,se);
bw2_ori=input_bw;
bw2_ori(:)=bw2(:)+bw2_ori(:)-1;
bw2_ori(bw2_ori<0)=0;
%bw2_tmp = im2bw(bw2,0);
%figure, imshow(bw2);
% left number
bw1 = input_bw - bw2;
bw1_ori=input_bw-bw2_ori;
%bw1 = imerode(bw1,se);
%bw1 = imdilate(bw1,se);
%bw1 = im2bw(bw1,0);
bw1(bw1<0)=0;
%figure, imshow(bw1);

%test
bw1 = bwlabel(bw1,8);
bw1(bw1~=1)=0;
bw1_ori(:)=bw1_ori(:)+bw1(:)-1;
bw1_ori(bw1_ori<0)=0;
%bw1=im2bw(bw1,0);


end

