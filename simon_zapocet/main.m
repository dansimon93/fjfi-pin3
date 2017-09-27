% Daniel Simon
% PIN3 2016/2017
% Tema: Algoritmy, radici algoritmy, cas slozitost, porovnani

%---------------------------main.m----------------------------------%

clear all
clc

%-----------------------------------------------------------------------%

% vygeneruje pole unikatnich integeru od 1 do 100
pole = generujPole();

% ulozeni casu
casy = zeros(1,6);

%-----------------------------------------------------------------------%

% najde nejmensi prvek
tic
minimum = algoritmy.najdiNejmensi(pole);
casy(1) = toc;

% quick sort
tic
qs = algoritmy.quickSort(pole);
casy(2) = toc;

% trideni vyberem
tic
ss = algoritmy.selectionSort(pole);
casy(3) = toc;

% trideni vkladanim
tic
is = algoritmy.insertionSort(pole);
casy(4) = toc;

% bublinkove trideni
tic
bs = algoritmy.bubbleSort(pole);
casy(5) = toc;

% gnome sort
tic
gs = algoritmy.gnomeSort(pole);
casy(6) = toc;

%-----------------------------------------------------------------------%
width = 0.85;
bar(casy, width);
title('Casove porovnani algoritmu')
xlabel('| nejmensi prvek | quick sort | selection sort | insertion sort | bubble sort | gnome sort |')
ylabel('cas [t]')
grid on