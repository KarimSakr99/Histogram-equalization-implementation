function [img]=hsteq(img)

img=im2uint8(img);

[counts] = imhist(img);
sz=size(img);

sum=0;
newlevels=zeros([256 1]);

for i=1:256
    sum=sum+counts(i);
    newlevels(i)=sum*255/(sz(1)*sz(2));
    newlevels=round(newlevels);  
end

for j=1:sz(1)
    for k=1:sz(2)
    img(j,k)=newlevels(img(j,k)+1);   
    end
end
end
