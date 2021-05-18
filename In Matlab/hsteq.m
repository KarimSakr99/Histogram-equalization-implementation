function [img]=hsteq(img)
[counts] = imhist(img);
sz=size(img);
sum=0;
for i=1:256
    sum=sum+counts(i);
    counts(i)=sum*255/(sz(1)*sz(2));
    counts=round(counts);
    
end

for j=1:sz(1)
    for k=1:sz(2)
    img(j,k)=counts(img(j,k));   
    end
end
end