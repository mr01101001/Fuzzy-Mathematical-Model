function err = wucha(a,t);
b = a;
b(:,t) = [];
mu1 = mean(a,2);
mu2 = mean(b,2);
err = sum((mu1-mu2).^2);