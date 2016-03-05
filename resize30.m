function out=resize30(image);
[x,y]=size(image);
tmp=zeros(30,30);
tmp(1:x,1:y)=image;
out=tmp;