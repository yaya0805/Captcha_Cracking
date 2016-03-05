function [output out]=identify(num,zero_std,one_std,two_std,three_std,four_std,...
                            five_std,six_std,seven_std,eight_std,nine_std);

num=resize30(num);
zero_pos=0;one_pos=0;two_pos=0;three_pos=0;four_pos=0;
five_pos=0;six_pos=0;seven_pos=0;eight_pos=0;nine_pos=0;
for i=1:30
    for j=1:30
    if num(i,j)==zero_std(i,j)
        zero_pos=zero_pos+1;
    end
    if num(i,j)==one_std(i,j)
        one_pos=one_pos+1;
    end
    if num(i,j)==two_std(i,j)
        two_pos=two_pos+1;
    end
    if num(i,j)==three_std(i,j)
        three_pos=three_pos+1;
    end
    if num(i,j)==four_std(i,j)
        four_pos=four_pos+1;
    end
    if num(i,j)==five_std(i,j)
        five_pos=five_pos+1;
    end
    if num(i,j)==six_std(i,j)
        six_pos=six_pos+1;
    end
    if num(i,j)==seven_std(i,j)
        seven_pos=seven_pos+1;
    end
    if num(i,j)==eight_std(i,j)
        eight_pos=eight_pos+1;
    end
    if num(i,j)==nine_std(i,j)
        nine_pos=nine_pos+1;
    end
    end
end
%zero_pos,one_pos,two_pos,three_pos,four_pos,
%five_pos,six_pos,seven_pos,eight_pos,nine_pos
out=zero_pos;
output=0;
if out<one_pos
    out=one_pos;
    output=1;
end
if out<two_pos
    out=two_pos;
    output=2;
end
if out<three_pos
    out=three_pos;
    output=3;
end
if out<four_pos
    out=four_pos;
    output=4;
end
if out<five_pos
    out=five_pos;
    output=5;
end
if out<six_pos
    out=six_pos;
    output=6;
end
if out<seven_pos
    out=seven_pos;
    output=7;
end
if out<eight_pos
    out=eight_pos;
    output=8;
end
if out<nine_pos
    out=nine_pos;
    output=9;
end
%imshow(num);
end



        


