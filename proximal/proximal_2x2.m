function out = proximal_2x2(f, STEP = 0.1)
    % ===================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 f cu puncte intermediare echidistante.
    % f are valori cunoscute în punctele (1, 1), (1, 2), (2, 1) ?i (2, 2).
    % Parametrii:
    % - f = imaginea ce se va interpola;
    % - STEP = distan?a dintre dou? puncte succesive.
    % ===================================================================================
    
    % TODO: Defineste coordonatele x si y ale punctelor intermediare.
    % Se afl? num?rul de puncte.
    %n = length(x_int);
    n = 1/STEP + 1;
    out = zeros(n);
    for i=1:n
      for j=1:n
        if(i-1 < n-i ) %=>sus
          if(j-1 < n-j) %=>stanga sus
            out(i,j) = f(1,1);
          else %=> dreapta sus
            out(i,j) = f(1,2);
          endif
        else %=> jos
          if(j-1 < n-j) %=>stanga jos
            out(i,j) = f(2,1);
          else %=>dreapta jos
            out(i,j) = f(2,2);
          endif
        endif
      endfor
    endfor
    
    % TODO: Cele 4 puncte încadratoare vor fi aceleasi pentru toate punctele din interior.
    % TODO: Initializeaza rezultatul cu o matrice nula n x n.
    % Se parcurge fiecare pixel din imaginea finala.
            % TODO: Afla cel mai apropiat pixel din imaginea initiala.
            % TODO: Calculeaza pixelul din imaginea finala.
    

endfunction