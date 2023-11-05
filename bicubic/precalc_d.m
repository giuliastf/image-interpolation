function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia.
    % =========================================================================
    %format short g
    % Obtinem dimensiunea imaginii.
    [m n nr_colors] = size(I);
    % TODO: Tranforma matricea I in double.
    I = double(I);
    % TODO: Calculeaza matricea cu derivate fata de x Ix.
    Ix = zeros(m,n);
    for i = 1 : m %fac pe ox 
        for j = 2 : n-1 % pe oy
          Ix(i,j) = (0.5)*((I(i,j+1)-I(i, j-1)));
        endfor
    endfor
    % TODO: Calculeaza matricea cu derivate fata de y Iy.
    Iy = zeros(m,n);
    for i = 2 : m-1 %fac pe ox 
        for j = 1 : n % pe oy
          Iy(i,j) = (0.5)*((I(i+1,j) - I(i-1,j)));
        endfor
    endfor
    % TODO: Calculeaza matricea cu derivate fata de xy Ixy.
    Ixy = zeros(m,n);
    for i = 2 : m-1 %fac pe ox / coloane
        for j = 2 : n-1 % pe oy
          Ixy(i,j) = (0.25) * ((I(i+1, j+1) + I(i-1,j-1)) - (I(i+1, j-1) + I(i-1, j+1)));
        endfor
    endfor
endfunction
