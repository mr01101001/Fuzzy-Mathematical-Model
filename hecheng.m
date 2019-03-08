function rhat = hecheng(r)
n =length(r);
for i= 1:n
    for j= 1:n
        rhat(i,j) = max(min([r(i,:);r(:,j)']));
    end
end