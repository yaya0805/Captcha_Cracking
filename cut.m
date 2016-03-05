function [ele1 ele2 ele3 ele4 ele5 ele6]=cut(L,input,flag);
[M N]=size(L);
t=1;
word=1;
for k=1:6
    lx=100;ly=100;rx=0;ry=0;
    for i=1:M
        for j=1:N
            if i<lx && L(i,j)==k lx=i;
            end
            if i>rx && L(i,j)==k rx=i;
            end
            if j<ly && L(i,j)==k ly=j;
            end
            if j>ry && L(i,j)==k ry=j; 
            end   
        end
    end
    %lx,rx,ly,ry
    if ry-ly>=15 && lx~=100 && flag==0
        %lx,ly,rx,ry
        image=input;
        image=im2uint8(image);
        image(image<20)=0;
        image=im2single(image);
        get=image(lx:rx,ly:ry);
        %[tmp1 tmp2 tmp1_ori tmp2_ori]=extractConnect(get);
        %tmp1,get,tmp2
        if ry-ly<30
            [tmp1 tmp2]=extractMulti_Connect(get,2);
            %tmp1=ext(1);tmp2=ext(2);
            %sum(tmp1(:)),sum(tmp2(:))
            if sum(tmp1(:))==0 || sum(tmp2(:))==0
                [tmp1 tmp2]=extractMulti_Connect_New(get,2);
            end
            if sum(tmp1(:))==0 || sum(tmp2(:))==0
                [tmp1 tmp2]=extractMulti_Connect_Super(get,2);
            end
            tmp1=cut(tmp1,tmp1,1);
            %tmp1=cut(tmp1,tmp1);
            tmp2=cut(tmp2,tmp2,1);
            %tmp2=cut(tmp2,tmp2);
            tmp1(tmp1>0)=1;
            tmp2(tmp2>0)=1;
            if t==1 
                ele1=tmp1;
                ele2=tmp2;
            elseif t==2
                ele2=tmp1;
                ele3=tmp2;
            elseif t==3
                ele3=tmp1;
                ele4=tmp2;
            elseif t==4
                ele4=tmp1;
                ele5=tmp2;
            elseif t==5
                ele5=tmp1;
                ele6=tmp2;
            end
            word=word+1;
            t=t+2;
            k=k+2;
            continue;
        elseif ry-ly<40
            [tmp1 tmp2 tmp3]=extractMulti_Connect(get,3);
            %sum(tmp1(:)),sum(tmp2(:)),sum(tmp3(:))
            if sum(tmp1(:))==0 || sum(tmp2(:))==0 || sum(tmp3(:))==0
                [tmp1 tmp2 tmp3]=extractMulti_Connect_New(get,3);
            end
            if sum(tmp1(:))==0 || sum(tmp2(:))==0 || sum(tmp3(:))==0
                [tmp1 tmp2 tmp3]=extractMulti_Connect_Super(get,3);
            end
            tmp1=cut(tmp1,tmp1,1);
            tmp2=cut(tmp2,tmp2,1);
            tmp3=cut(tmp3,tmp3,1);
            tmp1(tmp1>0)=1;
            tmp2(tmp2>0)=1;
            tmp3(tmp3>0)=1;
            if t==1 
                ele1=tmp1;
                ele2=tmp2;
                ele3=tmp3;
            elseif t==2
                ele2=tmp1;
                ele3=tmp2;
                ele4=tmp3;
            elseif t==3
                ele3=tmp1;
                ele4=tmp2;
                ele5=tmp3;
            elseif t==4
                ele4=tmp1;
                ele5=tmp2;
                ele6=tmp3;
            end
            word=word+1;
            t=t+3;
            k=k+3;
            continue;
        elseif ry-ly<50
            [tmp1 tmp2 tmp3 tmp4]=extractMulti_Connect(get,4);
            %sum(tmp1(:)),sum(tmp2(:)),sum(tmp3(:)),sum(tmp4(:))
            if sum(tmp1(:))==0 || sum(tmp2(:))==0 || sum(tmp3(:))==0 || sum(tmp4(:))==0
                [tmp1 tmp2 tmp3 tmp4]=extractMulti_Connect_New(get,4);
            end
            if sum(tmp1(:))==0 || sum(tmp2(:))==0 || sum(tmp3(:))==0 || sum(tmp4(:))==0
                [tmp1 tmp2 tmp3 tmp4]=extractMulti_Connect_Super(get,4);
            end
            tmp1=cut(tmp1,tmp1,1);
            tmp2=cut(tmp2,tmp2,1);
            tmp3=cut(tmp3,tmp3,1);
            tmp4=cut(tmp4,tmp4,1);
            tmp1(tmp1>0)=1;
            tmp2(tmp2>0)=1;
            tmp3(tmp3>0)=1;
            tmp4(tmp4>0)=1;
            if t==1 
                ele1=tmp1;
                ele2=tmp2;
                ele3=tmp3;
                ele4=tmp4;
            elseif t==2
                ele2=tmp1;
                ele3=tmp2;
                ele4=tmp3;
                ele5=tmp4;
            elseif t==3
                ele3=tmp1;
                ele4=tmp2;
                ele5=tmp3;
                ele6=tmp4;
            end
            word=word+1;
            t=t+4;
            k=k+4;
            continue;
        else
            [tmp1 tmp2 tmp3 tmp4 tmp5]=extractMulti_Connect(get,5);
            %sum(tmp1(:)),sum(tmp2(:)),sum(tmp3(:)),sum(tmp4(:)),sum(tmp5(:))
            if sum(tmp1(:))==0 || sum(tmp2(:))==0 || sum(tmp3(:))==0 || sum(tmp4(:))==0 || sum(tmp5(:))==0
                [tmp1 tmp2 tmp3 tmp4 tmp5]=extractMulti_Connect_New(get,5);
            end
            if sum(tmp1(:))==0 || sum(tmp2(:))==0 || sum(tmp3(:))==0 || sum(tmp4(:))==0 || sum(tmp5(:))==0
                [tmp1 tmp2 tmp3 tmp4 tmp5]=extractMulti_Connect_Super(get,5);
            end
            tmp1=cut(tmp1,tmp1,1);
            tmp2=cut(tmp2,tmp2,1);
            tmp3=cut(tmp3,tmp3,1);
            tmp4=cut(tmp4,tmp4,1);
            tmp5=cut(tmp5,tmp5,1);
            tmp1(tmp1>0)=1;
            tmp2(tmp2>0)=1;
            tmp3(tmp3>0)=1;
            tmp4(tmp4>0)=1;
            tmp5(tmp5>0)=1;
            if t==1 
                ele1=tmp1;
                ele2=tmp2;
                ele3=tmp3;
                ele4=tmp4;
                ele5=tmp5;
            elseif t==2
                ele2=tmp1;
                ele3=tmp2;
                ele4=tmp3;
                ele5=tmp4;
                ele6=tmp5;
            end
            word=word+1;
            t=t+5;
            k=k+5;
            continue;
            
            
        end
    end
    
    if lx~=100 && t==1 && ry<=80
        ele1=L(lx:rx,ly:ry);
        ele1(ele1~=word)=0;
        t=t+1;
        word=word+1;
    elseif lx~=100 && t==2 && ry<=80
        ele2=L(lx:rx,ly:ry);
        ele2(ele2~=word)=0;
        t=t+1;
        word=word+1;
    elseif lx~=100 && t==3 && ry<=80
        ele3=L(lx:rx,ly:ry);
        ele3(ele3~=word)=0;
        t=t+1;
        word=word+1;
    elseif lx~=100 && t==4 && ry<=80
        ele4=L(lx:rx,ly:ry);
        ele4(ele4~=word)=0;
        t=t+1;
        word=word+1;
    elseif lx~=100 && t==5 && ry<=80
        ele5=L(lx:rx,ly:ry);
        ele5(ele5~=word)=0;
        t=t+1;
        word=word+1;
    elseif lx~=100 && t==6 && ry<=80
        ele6=L(lx:rx,ly:ry);
        ele6(ele6~=word)=0;
        t=t+1;
        word=word+1;
    end  
    
end
end

