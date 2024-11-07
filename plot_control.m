function t = plot_control(yd, ud, N)
%PLOT_CONTROL 此处显示有关此函数的摘要
%   此处显示详细说明
% 加载数据

    yd = yd;
    ud = ud;
    N = N;
    
    % 设置布局为上下排列
    t = tiledlayout(4, 1); % 2 行 1 列布局
    t.TileSpacing = 'compact';
    t.Padding = 'compact';
    
    % 设置字体属性
    font_size = 16; % 字体大小
    font_name = 'Times New Roman'; % 字体名称
    max_state = max(max(abs(yd(1,:))), max(abs(yd(2,:))));
    
    % 上方窄长图
    nexttile;
    plot(1:N, ud(1, 1:N), 'Color', 'black', 'LineWidth', 1.2);
    hold on;
    plot(N+1:length(ud), ud(1, N+1:end), 'Color','r', 'LineWidth', 1.2);
    plot(N:N+1, ud(N: N+1), 'Color','black', 'LineWidth', 1.2);
    %legend('data collection', 'control', 'FontSize', font_size, 'FontName', font_name,'Location','northwest');
    xlabel('t', 'FontSize', font_size, 'FontName', font_name);
    ylabel('u', 'FontSize', font_size, 'FontName', font_name);
    ylim([-6,6]);
    hold off;
    
    % 设置窄长型图的比例
    set(gca, 'Position', [0.1, 0.55, 0.8, 0.35]); % 手动设置图的位置和大小
    
    % 下方方形图
    nexttile([3, 1]);
    plot(yd(1, 1:N), yd(2, 1:N), 'Color', 'black', 'LineWidth', 1.2);
    hold on;
    plot(N:N+1, yd(N:N+1), 'Color', 'black', 'LineWidth', 1.2,'HandleVisibility','off');
    plot(yd(1, N+1:end), yd(2, N+1:end), 'Color', 'r', 'LineWidth', 1.2);
    legend('data collection', 'control', 'FontSize', font_size, 'FontName', font_name,'Location','southeast');
    xlabel('y2', 'FontSize', font_size, 'FontName', font_name);
    ylabel('y1', 'FontSize', font_size, 'FontName', font_name);
    
    axis equal; % 保持 x 和 y 轴比例一致
    ax = gca;
    xlim([-max_state, max_state]); % 根据数据调整
    ylim([-max_state, max_state]); % 根据数据调整
    
    
    % 在原点处绘制红色圆点
    hold on;
    plot(0, 0, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r', 'HandleVisibility', 'off'); % 将 HandleVisibility 设置为 'off'hold off;
    % annotation('textarrow', [0.3, 0.6], [0.5, 0.5], 'String', 'equilibrium point', ...
    %     'FontSize', 14, 'FontName', 'Times New Roman', 'FontWeight', 'bold');
    axis square;
    grid
    hold off;
    
    % 设置方形图的比例
    set(gca, 'Position', [0.1, 0.1, 0.8, 0.35]); % 手动设置图的位置和大小
end

