% Daniel Simon
% Ukol #3

clear all
clc

% definicni obor grafu
x = linspace(-3,3,50);
% hodnoty pro cos(x) > 0
y = linspace(0, pi/2, 10);

% predpis Gaussovy funkce
gauss = exp(-x.^2);

% pronasobeni gauss * cos(x)
for a = 1:50
    for b = 1:10
        % ulozeni vyslednych hodnot do matice
        hodnoty(b,a) = gauss(a).*cos(y(b));
    end
end

% colormap odstinu cervene (nepouzito)
% clr = colormap(hot);

% line width
lw = 1.5;
% marker size
ms = 65;

figure
hold on
% plot 10 gaussovych krivek
for c = 1:10
    % stinovani gaussovych krivek pomoci tripetu [r g b]
    plot(x, hodnoty(c,:), ...
               'Color', [(c/10) 0 0], ...
               'LineWidth', lw)
end
% plot bodu oznacujicich maximum
for d = 1:10
    scatter(0, hodnoty(d,25),ms, ...
              'MarkerEdgeColor',[0 d/10 0], ...
              'MarkerFaceColor',[0 0 1-d/10], ...
              'LineWidth', lw)
end
hold off  
xlabel('x')
ylabel('y')
title('2D graf deseti Gaussovych funkci nasobenych cosinem')
grid
