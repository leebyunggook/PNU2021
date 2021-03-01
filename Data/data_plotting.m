clc; clear all; close all;
data = readtable('2019_whole.csv', 'VariableNamingRule', 'preserve');
%%
ws = table2array(data(:,3));
wd = table2array(data(:,4));
gust = table2array(data(:,5));
pr = table2array(data(:,6));
hu = table2array(data(:,7));
airtemp = table2array(data(:,8));
watertemp = table2array(data(:,9));
maxwv = table2array(data(:,10));
sigwv = table2array(data(:,11));
meanwv = table2array(data(:,12));
wvp = table2array(data(:,13));
wvd = table2array(data(:,14));


str = ["지점", "일시", "풍속", "풍향", "GUST풍속", "현지기압", "습도", "기온", "수온", "최대파고", "유의파고", "평균파고", "파주기", "파향"];
%%
figure;
for ii=3:8
    subplot(6,1,ii-2)
    plotdata = table2array(data(:,ii));
    plotdata = plotdata-nanmean(plotdata);
    plotdata = plotdata/nanstd(plotdata);
    plot(plotdata,'k');
    ylabel(str(ii))
    grid on
    set(gca, 'FontSize', 12);
end
%%
figure;
for ii=9:14
    subplot(6,1,ii-8)
    plotdata = table2array(data(:,ii));
    plotdata = plotdata-nanmean(plotdata);
    plotdata = plotdata/nanstd(plotdata);
    plot(plotdata,'k');
    ylabel(str(ii))
    grid on
    set(gca, 'FontSize', 12);
end