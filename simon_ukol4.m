% Daniel Simon
% Ukol #4

clear all
clc

% vyber funkce
volba = input('Vyberte funkci: lin=linearni, ln=logaritmus naturalis, kva=kvadraticka ', 's');
% zadani mezi a dosazeni do intervalu
leva_mez = input('Zadejte levou mez intervalu: ');
prava_mez = input('Zadejte pravou mez intervalu: ');
% vysledny interval
x = linspace(leva_mez, prava_mez, 1000);

% vyhodnoceni vstupu
switch volba
    % vyhodnoceni linearni funkce
    case 'lin'
        % zadani parametru
        a = input('Zadejte parametr a: ');
        b = input('Zadejte parametr b: ');
        % predpis funkce a zobrazeni
        f1 = a.*x+b;
        plot(x, f1);
        title('Graf linearni funkce')
        xlabel('x')
        ylabel('y')
        grid
    % vyhodnoceni prirozeneho logaritmu
    case 'ln'
        % predpis funkce
        f2 = log(x);
        % osetreni intervalu
        if (leva_mez < 0 && prava_mez < 0)
            msgbox('Nedefinovano!', 'Varovani', 'warn')
            
        elseif (leva_mez < 0)
            x_indef = linspace(0, prava_mez, 1000);
            f2_2 = log(x_indef);
            plot(x_indef, f2_2);
            title('Graf prirozeneho logaritmu')
            xlabel('x')
            ylabel('y')
            grid 
        else
        % zobrazeni
            plot(x, f2);
            title('Graf prirozeneho logaritmu')
            xlabel('x')
            ylabel('y')
            grid
        end
    % vyhodnoceni kvadraticke funkce
    case 'kva'
        % zadani parametru
        a = input('Zadejte parametr a: ');
        b = input('Zadejte parametr b: ');
        c = input('Zadejte parametr c: ');
        % predpis funkce a zobrazeni
        f3 = a*x.^2+b*x+c;
        plot(x,f3)
        title('Graf kvadraticke funkce')
        xlabel('x')
        ylabel('y')
        grid
    otherwise
        % hlaska pro spatnou volbu
        msgbox('Spatny pocatecni vyber. Opakujte prosim.', 'Varovani', 'warn')
end
