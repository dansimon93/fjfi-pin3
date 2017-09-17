% UKOL #1
% Daniel Simon

rameno_A = input('Zadej delku ramena A: ');
rameno_B = input('Zadej delku ramena B: ');

if (rameno_A < rameno_B)
    uhel = linspace(0,360,360);
    rad = uhel*(pi/180);
    zakladna = rameno_A.*cos(rad)+sqrt(rameno_B.^2 - (rameno_A.^2).*(sin(rad).^2)) % zakladna "trojuhelniku"
    plot(uhel, zakladna), xlabel('stupne'), ylabel('poloha pistu v jednotkach'),
    title('Graf zavislosti polohy pistu na stupnich')
    axis([0,360, -inf, inf]) % xmin, xmax, ymin, ymax pro graf
    grid
else
    disp('Rameno A nesmi byt vetsi nez rameno B! ');
end
