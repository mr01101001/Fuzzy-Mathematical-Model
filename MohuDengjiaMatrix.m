load data1
r1 = hecheng(r);
r2 = hecheng(r1);
r3 = hecheng(r2);
bh = zeros(12);
bh(find(r2>0.998))=1;
r1
r2
r3