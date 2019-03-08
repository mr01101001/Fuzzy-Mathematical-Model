% 模糊聚类分析
% step1------数据标准化 step2------建立模糊相似矩阵 step3------聚类
% 例：某地区有12个气象观测站，10年来各观测站如表，为了节省开支，要适当减少气象观测站，试问应减少哪些观测站可以使所得到的降水量信息最多？

%step1
a = [276.2 324.5 158.6 412.5 292.8 258.4 334.1 303.2 292.9 243.2 159.7 331.2
    251.5 287.3 349.5 297.4 227.8 453.6 321.5 451.0 466.2 307.5 421.1 455.1
    192.7 433.2 289.9 366.3 466.2 239.1 357.4 219.7 245.7 411.1 357.0 353.2
    246.2 232.4 243.7 372.5 460.4 158.9 298.7 314.5 256.6 327.0 296.5 423.0
    291.7 311.0 502.4 254.0 245.6 324.8 401.0 266.5 251.3 289.9 255.4 362.1
    466.5 158.9 223.5 425.1 251.4 321.0 315.4 317.4 246.2 277.5 304.2 410.7
    258.6 327.4 432.1 403.9 256.6 282.9 389.7 413.2 466.5 199.3 282.1 387.6
    453.4 365.5 357.6 258.1 278.8 467.2 355.2 228.5 453.6 315.6 456.3 407.2
    158.2 271.0 410.2 244.2 250.0 360.7 376.4 179.4 159.2 342.4 331.2 377.7
    324.8 406.5 235.7 288.8 192.6 284.9 290.5 343.7 283.4 281.2 243.7 411.1];

mu = mean(a); sigma = std(a);
for i = 1:12
    for j = 1:12
        r(i,j) = exp(-(mu(j)-mu(i))^2 / (sigma(j)+sigma(i))^2);
    end
end
r
save data1 r a