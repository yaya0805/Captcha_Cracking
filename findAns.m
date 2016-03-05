function [ans1 ans2 ans3 ans4]=findAns(ele1,ele2,ele3,ele4,...
                                                    zero_std,one_std,two_std,three_std,four_std,...
                                                        five_std,six_std,seven_std,eight_std,nine_std);
[num1 pro1]=identify(ele1,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
[num2 pro2]=identify(ele2,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
[num3 pro3]=identify(ele3,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
[num4 pro4]=identify(ele4,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);

tele1=imrotate(ele1,10);
tele1=bwlabel(tele1);
tele1=cut(tele1,tele1,0);
tele2=imrotate(ele2,10);
tele2=bwlabel(tele2);
tele2=cut(tele2,tele2,0);
tele3=imrotate(ele3,10);
tele3=bwlabel(tele3);
tele3=cut(tele3,tele3,0);
tele4=imrotate(ele4,10);
tele4=bwlabel(tele4);
tele4=cut(tele4,tele4,0);


[tnum1 tpro1]=identify(tele1,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
[tnum2 tpro2]=identify(tele2,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
[tnum3 tpro3]=identify(tele3,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
[tnum4 tpro4]=identify(tele4,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);

tele1=imrotate(ele1,-10);
tele1=bwlabel(tele1);
tele1=cut(tele1,tele1,0);
tele2=imrotate(ele2,-10);
tele2=bwlabel(tele2);
tele2=cut(tele2,tele2,0);
tele3=imrotate(ele3,-10);
tele3=bwlabel(tele3);
tele3=cut(tele3,tele3,0);
tele4=imrotate(ele4,-10);
tele4=bwlabel(tele4);
tele4=cut(tele4,tele4,0);


[ttnum1 ttpro1]=identify(tele1,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
[ttnum2 ttpro2]=identify(tele2,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
[ttnum3 ttpro3]=identify(tele3,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);
[ttnum4 ttpro4]=identify(tele4,zero_std,one_std,two_std,three_std,four_std,five_std,six_std,seven_std,eight_std,nine_std);

tmp=pro1;
ans1=num1;
if tmp<tpro1
    tmp=tpro1;
    ans1=tnum1;
end 
if tmp<ttpro1
    tmp=ttpro1;
    ans1=ttnum1;
end
tmp=pro2;
ans2=num2;
if tmp<tpro2
    tmp=tpro2;
    ans2=tnum2;
end 
if tmp<ttpro2
    tmp=ttpro2;
    ans2=ttnum2;
end
tmp=pro3;
ans3=num3;
if tmp<tpro3
    tmp=tpro3;
    ans3=tnum3;
end 
if tmp<ttpro3
    tmp=ttpro3;
    ans3=ttnum3;
end
tmp=pro4;
ans4=num4;
if tmp<tpro4
    tmp=tpro4;
    ans4=tnum4;
end 
if tmp<ttpro4
    tmp=ttpro4;
    ans4=ttnum4;
end


