function  result  = CentroidBased( cluster1 , cluster2)


[m1 n1]=size(cluster1);
[m2 n2]=size(cluster2);


c1 = sum(cluster1,1)*1/m1;
c2 = sum(cluster2,1)*1/m2;

result = norm(c1-c2);


end