% Daniel Simon
% PIN3 2016/2017
% Tema: Algoritmy, radici algoritmy, cas slozitost, porovnani

%---------------------------algoritmy.m----------------------------------%

% trida reprezentujici vsechny algoritmy jako metody
classdef algoritmy
    
    % delka = ...
    
    methods (Static)
        % najde nejmensi prvek
        function[x] = najdiNejmensi(pole)
            x = min(pole);
        end
        
        % najde nejvetsi prvek
        function[x] = najdiNejvetsi(pole)
            x = max(pole);
        end
        
        % trideni vyberem, selection sort
        function[pole] = selectionSort(pole)
            for i = 1 : length(pole)
                maxIndex = i;
                for j = 1 : length(pole)
                    if pole(j) > pole(maxIndex)
                        maxIndex = j;
                    end
                    % prohod
                    tmp = pole(i);
                    pole(i) = pole(maxIndex);
                    pole(maxIndex) = tmp;
                end
            end
        end
        
        % trideni vyberem, insertion sort
        function[pole] = insertionSort(pole)
            for i = 1 : length(pole)
               tmp = pole(i);
               j = i - 1;
               while j > 0 && pole(j) > tmp
                   pole(j + 1) = pole(j);
                   j = j - 1;
               end
               pole(j + 1) = tmp;
            end
        end
        
        % bubble sort
        function [pole] = bubbleSort(pole)
            delka = length(pole);
            while delka > 0
                tmp = 0;
                    for i = 2:length(pole)
                        if pole(i - 1) > pole(i)
                            % prohod
                            pole([i-1 i]) = pole([i i-1]);
                            tmp = i;
                        end
                    end
                    delka = tmp;
            end
        end
       
        % gnome sort
        function [pole] = gnomeSort(pole)
            index = 1;
            while index < length(pole)
                if index == 1
                    index = index + 1;
                elseif pole(index) > pole(index-1)
                    index = index + 1;
                else
                    pole([index index-1]) = pole([index-1 index]);
                    index = index - 1;
                end
            end
        end
        
        % quick sort
        function [pole] = quickSort(pole)
            % preddeklarace pro intervaly
            vlevo = [];
            stred = [];
            vpravo = [];
            % delka pole
            delka = length(pole);
            % pozice pivota - priblizny stred
            [pivot] = round(delka / 2);
            % rozdel a panuj - hod doleva, doprostred, doprava
            if delka > 1
                for i = 1 : delka
                   if pole(i) < pole(pivot)
                       vlevo = [vlevo pole(i)] ;
                   elseif pole(i) > pole(pivot)
                       vpravo = [vpravo pole(i)] ;
                   else
                       stred = [stred pole(i)] ;
                   end
                end
                % setrid intervaly
                vlevo = algoritmy.quickSort(vlevo) ;
                vpravo = algoritmy.quickSort(vpravo) ;
                % vysledne pole
                pole = [vlevo stred vpravo] ;
            end
        end
        
    end
        
end