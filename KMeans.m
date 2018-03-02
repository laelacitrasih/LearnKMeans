function [ finalCentroids result ] = KMeans( datas , centroids)

c = centroids;
[m n] = size(datas);
d = zeros(length(datas(:,1)),max(datas(:,3))+1); 
a = ones(max(datas(:,3)),n-1);
c = centroids;

while (a~= c)
    a = c;
    for j=1:length(datas(:,1))
        for i=1:max(datas(:,3))
            d(j,i) = norm(datas(j,1:2)-c(i,:))*norm(datas(j,1:2)-c(i,:));
        end 
        [num] = min(d(j,1:7));
        [x y] = ind2sub(size(d(j,1:7)),find(d(j,1:7)==num));  
        d(j,max(datas(:,3))+1)=y;        
    end
    for i=1:max(datas(:,3))
        selectedrows = find(d(:,max(datas(:,3))+1)== i);
        nA = datas(selectedrows,:);
        c(i,:)= 1/length(nA)*sum(nA(:,1:2));    
    end
end

finalCentroids = c;
r = datas;
r(:,3) = d(:,max(datas(:,3))+1);
result = r;
end