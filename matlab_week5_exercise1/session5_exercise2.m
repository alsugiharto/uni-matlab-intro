
I = imread('cell.tif');

F = figure;

subplot(221),
h1 = imagesc(I);
colormap(gray);
title('this is a cell')
xlabel('x-axis')
ylabel('y-label')



sp = subplot(222);
h2 = imagesc(I');
h2.AlphaData = 0.5; %set(h2, 'AlphaData', 0.5);
colormap(sp,'jet')
title('this is a rotated cell')
axis('off');
axis square; 
set(F, 'Color', 'w');

sp2 = subplot(2,2,3:4);
h3 = plot(I);


sp2.FontSize = 15; % set(gca,'FontSize',15);
sp2.FontAngle = 'italic';
sp2.XTick = linspace(1,150,3);
sp2.XTickLabel = {'Begin', 'Middle', 'End'};
sp2.XTickLabelRotation = 10;
ylim([-100 300])
grid minor;
sp2.XAxis.Color = 'b';
sp2.LineWidth = 2; %set(gca,'LineWidth',2);
