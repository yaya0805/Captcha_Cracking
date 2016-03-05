function out=doEverything(pic);
%% zero
zero_std=[0,0,0,0,1,1,1,1,0,0,0,0;0,0,1,1,1,1,1,1,1,0,0,0;0,1,1,1,1,1,1,1,1,1,0,0;0,1,1,1,0,0,0,1,1,1,1,0;1,1,1,1,0,0,0,0,1,1,1,0;1,1,1,0,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,0,1,1,1;0,1,1,1,0,0,0,0,1,1,1,0;0,1,1,1,1,0,0,0,1,1,1,0;0,0,1,1,1,1,1,1,1,1,1,0;0,0,1,1,1,1,1,1,1,1,0,0;0,0,0,0,1,1,1,1,0,0,0,0];
%% one
one_std=[0,0,1,1,1,0,0;0,1,1,1,1,0,0;1,1,1,1,1,0,0;1,1,1,1,1,0,0;0,0,1,1,1,0,0;0,0,1,1,1,0,0;0,0,1,1,1,0,0;0,0,1,1,1,0,0;0,0,1,1,1,0,0;0,0,1,1,1,0,0;0,0,1,1,1,0,0;0,0,1,1,1,0,0;0,0,1,1,1,0,0;0,0,1,1,1,0,0;1,1,1,1,1,1,1;1,1,1,1,1,1,1];
%% two
two_std=[0,0,0,1,1,1,0,0,0;0,1,1,1,1,1,1,1,0;1,1,1,1,1,1,1,1,1;1,1,1,1,0,1,1,1,1;1,1,0,0,0,0,1,1,1;0,0,0,0,0,0,1,1,1;0,0,0,0,0,0,1,1,1;0,0,0,0,0,1,1,1,1;0,0,0,1,1,1,1,1,0;0,0,1,1,1,1,1,0,0;0,1,1,1,1,1,0,0,0;1,1,1,1,0,0,0,0,0;1,1,1,0,0,0,0,0,0;1,1,1,0,0,0,0,0,0;1,1,1,1,1,1,1,1,0;1,1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1,1];
%% three
three_std=[0,0,0,1,1,1,1,1,0,0,0;0,1,1,1,1,1,1,1,1,0,0;1,1,1,1,1,1,1,1,1,1,0;0,1,1,0,0,0,0,1,1,1,0;0,0,0,0,0,0,0,1,1,1,0;0,0,0,0,0,0,0,1,1,1,0;0,0,0,0,1,1,1,1,1,1,0;0,0,0,1,1,1,1,1,1,0,0;0,0,0,1,1,1,1,1,1,1,0;0,0,0,0,0,0,0,1,1,1,1;0,0,0,0,0,0,0,0,1,1,1;0,0,0,0,0,0,0,0,1,1,1;0,1,0,0,0,0,0,0,1,1,1;1,1,1,1,0,0,0,1,1,1,1;0,1,1,1,1,1,1,1,1,1,0;0,1,1,1,1,1,1,1,1,0,0;0,0,0,1,1,1,1,0,0,0,0];
%% four
four_std=[0,0,0,0,0,0,1,1,1,0,0;0,0,0,0,0,1,1,1,1,0,0;0,0,0,0,0,1,1,1,1,0,0;0,0,0,0,1,1,1,1,1,0,0;0,0,0,0,1,1,0,1,1,0,0;0,0,0,1,1,1,0,1,1,0,0;0,0,1,1,1,0,0,1,1,0,0;0,0,1,1,1,0,0,1,1,0,0;0,1,1,1,0,0,0,1,1,0,0;1,1,1,1,0,0,0,1,1,0,0;1,1,1,1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1,1,1,1;0,0,0,0,0,0,0,1,1,0,0;0,0,0,0,0,0,0,1,1,0,0;0,0,0,0,0,0,0,1,1,0,0;0,0,0,0,0,0,0,1,1,0,0];
%% five
five_std=[1,1,1,1,1,1,1,1,1,1,1,0;1,1,1,1,1,1,1,1,1,1,1,0;1,1,1,1,1,1,1,1,1,1,0,0;1,1,1,0,0,0,0,0,0,0,0,0;1,1,1,1,1,1,1,1,1,0,0,0;1,1,1,1,1,1,1,1,1,1,0,0;1,1,1,1,1,1,1,1,1,1,1,0;1,1,1,1,0,0,0,0,1,1,1,0;1,1,1,0,0,0,0,0,0,1,1,1;0,0,0,0,0,0,0,0,0,1,1,1;0,0,0,0,0,0,0,0,0,1,1,1;0,0,0,0,0,0,0,0,1,1,1,0;1,1,1,0,0,0,0,0,1,1,1,0;1,1,1,1,0,0,1,1,1,1,1,0;1,1,1,1,1,1,1,1,1,1,0,0;0,1,1,1,1,1,1,1,1,0,0,0;0,0,0,0,1,1,0,0,0,0,0,0];
%% six
six_std=[0,0,0,0,0,0,1,1,0,0,0,0;0,0,0,0,0,1,1,1,1,0,0,0;0,0,0,0,1,1,1,1,0,0,0,0;0,0,0,1,1,1,1,0,0,0,0,0;0,0,1,1,1,1,0,0,0,0,0,0;0,0,1,1,1,0,0,0,0,0,0,0;0,1,1,1,0,1,1,1,1,0,0,0;0,1,1,1,1,1,1,1,1,1,1,0;1,1,1,1,1,1,1,1,1,1,1,0;1,1,1,1,0,0,0,0,1,1,1,1;1,1,1,0,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,0,1,1,1;0,1,1,1,0,0,0,0,1,1,1,1;0,1,1,1,1,1,1,1,1,1,1,0;0,0,1,1,1,1,1,1,1,1,0,0;0,0,0,1,1,1,1,1,1,0,0,0];
%% seven
seven_std=[1,1,1,1,1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1,1,1,1,1;0,0,0,0,0,0,0,1,1,1,1,0;0,0,0,0,0,0,0,1,1,1,0,0;0,0,0,0,0,0,1,1,1,0,0,0;0,0,0,0,0,0,1,1,1,0,0,0;0,0,0,0,0,1,1,1,1,0,0,0;0,0,0,0,0,1,1,1,0,0,0,0;0,0,0,0,0,1,1,1,0,0,0,0;0,0,0,0,1,1,1,1,0,0,0,0;0,0,0,0,1,1,1,0,0,0,0,0;0,0,0,0,1,1,1,0,0,0,0,0;0,0,0,1,1,1,1,0,0,0,0,0;0,0,0,1,1,1,0,0,0,0,0,0;0,0,0,1,1,1,0,0,0,0,0,0;0,0,0,1,1,0,0,0,0,0,0,0];
%% eight
eight_std=[0,0,1,1,1,1,1,1,1,0,0;0,1,1,1,1,1,1,1,1,1,0;1,1,1,1,1,1,1,1,1,1,0;1,1,1,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,1,1,1;1,1,1,1,0,0,1,1,1,1,0;1,1,1,1,1,1,1,1,1,1,0;0,1,1,1,1,1,1,1,1,0,0;1,1,1,1,1,1,1,1,1,1,0;1,1,1,0,0,0,0,1,1,1,0;1,1,1,0,0,0,0,0,1,1,0;1,1,1,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,1,1,1,0;1,1,1,1,0,0,1,1,1,1,0;1,1,1,1,1,1,1,1,1,1,0;0,1,1,1,1,1,1,1,1,0,0;0,0,0,0,1,1,0,0,0,0,0];
%% nine
nine_std=[0,0,0,1,1,1,1,1,0,0,0;0,0,1,1,1,1,1,1,1,0,0;0,1,1,1,1,1,1,1,1,1,0;1,1,1,1,0,0,0,1,1,1,1;1,1,1,0,0,0,0,0,1,1,1;1,1,1,0,0,0,0,0,0,1,1;1,1,1,0,0,0,0,0,0,1,1;1,1,1,0,0,0,0,0,1,1,1;1,1,1,1,0,0,0,1,1,1,1;0,1,1,1,1,1,1,1,1,1,1;0,1,1,1,1,1,1,1,1,1,1;0,0,0,1,1,1,1,1,1,1,1;0,0,0,0,0,0,0,1,1,1,0;0,0,0,0,0,0,1,1,1,1,0;0,0,0,0,0,1,1,1,1,0,0;0,0,0,1,1,1,1,1,0,0,0;0,0,1,1,1,1,1,0,0,0,0;0,0,1,1,1,0,0,0,0,0,0];
%% resize num
zero_std=resize30(zero_std);
one_std=resize30(one_std);
two_std=resize30(two_std);
three_std=resize30(three_std);
four_std=resize30(four_std);
five_std=resize30(five_std);
six_std=resize30(six_std);
seven_std=resize30(seven_std);
eight_std=resize30(eight_std);
nine_std=resize30(nine_std);
%% Start
pic_new=preprocess(pic);
L=bwlabel(pic_new,4);
[ele1 ele2 ele3 ele4]=cut(L,pic,0);
ele1(ele1>0)=1;
ele2(ele2>0)=1;
ele3(ele3>0)=1;
ele4(ele4>0)=1;
[ans1 ans2 ans3 ans4]=findAns(ele1,ele2,ele3,ele4,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
out=[ans1 ans2 ans3 ans4];
