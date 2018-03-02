function  nSSE  = SSE( datas , finalcentroids)

[m n] = size(datas);
s=0;

for i=1:max(datas(:,n))
        selectedrows = find(datas(:,n)== i);
        nA = datas(selectedrows,:);  
        for j=1:length(nA)
            s = norm(nA(j,1:2)-finalcentroids(i,:))*norm(nA(j,1:2)-finalcentroids(i,:))+s;
        end
end

nSSE = s;
end


