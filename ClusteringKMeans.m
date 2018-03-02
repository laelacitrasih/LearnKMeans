%membaca dataset
a = xlsread('Aggregation.csv');
[m n] = size(a);


%centroid awal
centroids = zeros(max(a(:,3)),n-1);
centroids(1,:) = a(743,1:2);
centroids(2,:) = a(29,1:2);
centroids(3,:) = a(525,1:2);
centroids(4,:) = a(421,1:2);
centroids(5,:) = a(765,1:2);
centroids(6,:) = a(643,1:2);
centroids(7,:) = a(189,1:2);

%scatter plot data
for i=1: length(a(:,1));
    if a(i,3)==1
        scatter(a(i,1),a(i,2),'.b');hold on;
    elseif a(i,3)==2
        scatter(a(i,1),a(i,2),'.g');hold on;
    elseif a(i,3)==3
        scatter(a(i,1),a(i,2),'.r');hold on;
    elseif a(i,3)==4
        scatter(a(i,1),a(i,2),'.c');hold on;
    elseif a(i,3)==5
        scatter(a(i,1),a(i,2),'.m');hold on;
    elseif a(i,3)==6
        scatter(a(i,1),a(i,2),'.y');hold on;
    elseif a(i,3)==7
        scatter(a(i,1),a(i,2),'.k');hold on;
    end
    
    if (i<=7)
        scatter(centroids(i,1),centroids(i,2),'*');hold on;
    end
end


[ finalCentroids result ] = KMeans( a, centroids);
sse = SSE(result, finalCentroids);

%scatter plot result
for i=1: length(result(:,1));
    if result(i,3)==1
        scatter(result(i,1),result(i,2),'.b');hold on;
    elseif result(i,3)==2
        scatter(result(i,1),result(i,2),'.g');hold on;
    elseif result(i,3)==3
        scatter(result(i,1),result(i,2),'.r');hold on;
    elseif result(i,3)==4
        scatter(result(i,1),result(i,2),'.c');hold on;
    elseif result(i,3)==5
        scatter(result(i,1),result(i,2),'.m');hold on;
    elseif result(i,3)==6
        scatter(result(i,1),result(i,2),'.y');hold on;
    elseif result(i,3)==7
        scatter(result(i,1),result(i,2),'.k');hold on;
    end
    
    if (i<=7)
        scatter(finalCentroids(i,1),finalCentroids(i,2),'o');hold on;
    end
    
end
