function t = plot_predictor(yd, y_g, L, N)
%PLOT_PREDICTOR 此处显示有关此函数的摘要
%   此处显示详细说明
    yd = yd;
    y_pre = y_g;
    L = L;
    N = N;
    length = size(yd,2);
    length_pre = size(y_pre,2);
    y_pre_1 = [];
    
    for i = 1 : L :length_pre
    y_pre_1 = [y_pre_1 y_pre(:,i)];
    end
    yd = yd(:,N+1:end);
    
    
    % 设置 tiled layout
    t = tiledlayout(2, 2); 
    t.TileSpacing = 'compact';
    t.Padding = 'compact';
    
    % 设置全局字体属性
    font_size = 18; % 字体大小
    font_name = 'Times New Roman'; % 字体名称
    
    % 左侧方图，占据左侧的 2x1 区域
    nexttile([2, 1]); % 跨两行一列
    plot(yd(1,:), yd(2,:), 'black', 'LineWidth', 1.5); 
    hold on; 
    plot(y_pre_1(1,:), y_pre_1(2,:), 'r', 'LineStyle', '--', 'LineWidth', 1.5); 
    
    % 添加图例，并设置字体大小和字体类型
    legend('actual trajectory', 'predicted trajectory', 'FontSize', font_size, 'FontName', font_name);
    
    % 设置轴标签和字体
    xlabel('y2', 'FontSize', font_size, 'FontName', font_name);
    ylabel('y1', 'FontSize', font_size, 'FontName', font_name);
    xlim([-1.2, 1.2]);
    ylim([-1.2,1.2]);
    % axis square;
    grid on;
    
    % 右上图
    nexttile
    plot(1:size(yd,2), yd(1,:) - y_pre_1(1,:), 'black', 'LineWidth', 1); 
    hold on;
    plot([1 size(yd,2)], [mean(abs(yd(1,:) - y_pre_1(1,:))) mean(abs(yd(1,:) - y_pre_1(1,:)))], 'r', 'LineStyle', '--', 'LineWidth', 1); 
    
    % 添加文本注释，标出均值
    text(100, mean(abs(yd(1,:) - y_pre_1(1,:))), sprintf('mean = %.4f', mean(abs(yd(1,:) - y_pre_1(1,:)))), ...
    'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'FontSize', font_size, 'FontName', font_name);
    
    % 设置轴标签和字体
    xlim([0, size(yd,2)+2]);
    ylim([-0.008, 0.008]);
    xlabel('t', 'FontSize', font_size, 'FontName', font_name);
    ylabel('prediction error of y1', 'FontSize', font_size, 'FontName', font_name);
    
    % 右下图
    nexttile
    plot(1:size(yd,2), yd(2,:) - y_pre_1(2,:), 'black', 'LineWidth', 1); 
    hold on;
    plot([1 size(yd,2)], [mean(abs(yd(2,:) - y_pre_1(2,:))) mean(abs(yd(2,:) - y_pre_1(2,:)))], 'r', 'LineStyle', '--', 'LineWidth', 1); 
    
    % 添加文本注释，标出均值
    text(80, mean(abs(yd(2,:) - y_pre_1(2,:))) + 0.002, sprintf('mean = %.4f', mean(abs(yd(2,:) - y_pre_1(2,:)))), ...
    'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'FontSize', font_size, 'FontName', font_name);
    
    % 设置轴标签和字体
    xlim([0, size(yd,2)+2]);
    ylim([-0.05, 0.05]);
    xlabel('t', 'FontSize', font_size, 'FontName', font_name);
    ylabel('prediction error of y2', 'FontSize', font_size, 'FontName', font_name);
    
    hold off;
end

