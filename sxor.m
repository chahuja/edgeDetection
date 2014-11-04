function [out]=sxor(in)
horizontal=zeros(size(in,1),size(in,2));
vertical=zeros(size(in,1),size(in,2));

for i=1:size(in,1)-1
    horizontal(i,:)=xor(in(i,:),in(i+1,:));
end


for i=1:size(in,2)-1
    vertical(:,i)=xor(in(:,i),in(:,i+1));
end

out=or(horizontal,vertical);
