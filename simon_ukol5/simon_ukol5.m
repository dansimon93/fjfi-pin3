% Daniel Simon
% PIN 3
% Ukol #5

clear all
clc
%***********************************************%


%****************DEKLARACE*********************%
% konstanty
pocet_kroku = 100;
sirka_cesty = 7;
pocet_experimentu = 150;

% preddeklarace mapy pohybu
mapa_pohybu = zeros(pocet_kroku, sirka_cesty);

% preddeklarace vektoru rozhodovani
rozdeleni_kroku = zeros(1,3);

% preddeklarace padu
pady = zeros(1,2);

% preddeklerace vsech experimentu
experimenty = zeros(1,pocet_experimentu);
%*************************************************%


%***************JEDNA CESTA**********************%
% uprostred je pocatek
mapa_pohybu(1,4) = 1;
% pozice pocatku 
pozice = 4;

for i = 2:100
        % vygenerovane cislo
        krok = generator();
        % rozdeleni kroku
        if krok == -1
            rozdeleni_kroku(1) = rozdeleni_kroku(1) + 1;
        elseif krok ==  0
             rozdeleni_kroku(2) = rozdeleni_kroku(2) + 1;
        else krok == 1
             rozdeleni_kroku(3) = rozdeleni_kroku(3) + 1;
        end
        % zapis pozice + aktualizace pozice
        mapa_pohybu(i, pozice + krok) = 1;
        pozice = pozice + krok;

       % vyhodnoceni padu
        if pozice == 1
            pady(1) = pady(1) + 1;
            break
        elseif pozice == 7
            pady(2) = pady(2) + 1;
            break
        end
        % pocet kroku + prvni krok
        usel = i + 1;
end
%************************************************%


%********************GRAFY**********************%
figure
hold on

% usla vzdalenost
subplot(2,2,1)
title('Ušlá vzdálenost')
xlabel('Poèet cest')
ylabel('Poèet krokù')

%rozdeleni kroku
subplot(2,2,2)
bar(rozdeleni_kroku, 1, 'g')
title('Rozdìlení krokù')
xlabel('vlevo - rovnì - vpravo')
ylabel('Poèet krokù')

% ukonceni cesty
subplot(2,2,3)
bar(pady,0.5,'g');
title('Ukonèení cesty')
xlabel('vlevo - vpravo')
ylabel('Poèet pádù')

% vytisteni cesty
subplot(2,2,4)
[y, x] = find(mapa_pohybu == 1);
plotOptions = {'LineStyle' , 'none' , 'MarkerEdgeColor', ...
                                'k' , 'MarkerSize' , 10}
plot(x, y, 'o' , 'MarkerFaceColor' , 'g' , plotOptions{:})
axis([1 7 1 usel])
title('Cesta')
xlabel('Smìr krokù')
ylabel('Poèet krokù')
grid on

hold off
%***********************************************%