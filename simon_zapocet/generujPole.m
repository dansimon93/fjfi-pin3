% Daniel Simon
% PIN3 2016/2017
% Tema: Algoritmy, radici algoritmy, cas slozitost, porovnani

%---------------------------generujPole.m----------------------------------%

function f = generujPole()
    % generuje unikatni cela cisla
    pocetCisel = 1000;
    delkaPole = 250;
    f = randperm(pocetCisel, delkaPole);
end

