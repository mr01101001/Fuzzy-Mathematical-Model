load data1
ind1 = [1,5];ind2 = [2:3,6,8:11];ind3 = [4,7];
so =[];
for i =1:length(ind1)
    for j =1:length(ind3)
        for k =1:length(ind2)
            t = [ind1(i),ind3(j),ind2(k)];
            err = wucha(a,t);
            so = [so;[t,err]];
        end
    end
end
so
tm = find(so(:,4)==min(so(:,4)));
shanchu = so(tm,1:3);
shanchu