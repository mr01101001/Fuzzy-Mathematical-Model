dele = a(:,[1:4,8:11])'
aver_beforeDel = mean(a');
aver_AfterDel = mean(dele);
time =[1981:1:1990];
subplot(1,2,1);plot(time,aver_beforeDel,'g');title('删除前平均降水量');xlabel('年份');ylabel('平均降水量');
subplot(1,2,2);plot(time,aver_AfterDel,'r');title('删除后平均降水量');xlabel('年份');ylabel('平均降水量');

