function R = proximal_rotate(I, rotation_angle)
    % =========================================================================
    % Roteste imaginea alb-negru I de dimensiune m x n cu unghiul rotation_angle,
    % aplicând Interpolare Proximala.
    % rotation_angle este exprimat în radiani.
    % =========================================================================
    [m n nr_colors] = size(I);
    
    % Se converteste imaginea de intrare la alb-negru, daca este cazul.
    if nr_colors > 1
        R = -1;
        return
    endif
    
    % Obs:
    % Atunci când se aplica o scalare, punctul (0, 0) al imaginii nu se va deplasa.
    % În Octave, pixelii imaginilor sunt indexati de la 1 la n.
    % Daca se lucreaza în indici de la 1 la n si se inmultesc x si y cu s_x respectiv s_y,
    % atunci originea imaginii se va deplasa de la (1, 1) la (sx, sy)!
    % De aceea, trebuie lucrat cu indici în intervalul [0, n - 1].
    % TODO: Calculeaza cosinus si sinus de rotation_angle.
    s = sin(rotation_angle);
    c = cos(rotation_angle);
    % TODO: Initializeaza matricea finala.
    R = zeros(m, n);
    % TODO: Calculeaza matricea de transformare.
    T_rot = [c -s; s c];
    % TODO: Inverseaza matricea de transformare, FOLOSIND doar functii predefinite!
    T_rot = T_rot';
    % Se parcurge fiecare pixel din imagine.
    for y = 0 : m - 1
        for x = 0 : n - 1
            % TODO: Aplica transformarea inversa asupra (x, y) si calculeaza x_p si y_p
            % din spatiul imaginii initiale.
            aux = T_rot * [x y]';
            % TODO: Trece (xp, yp) din sistemul de coordonate [0, n - 1] în
            % sistemul de coordonate [1, n] pentru a aplica interpolarea.
            x_p = aux(1) + 1;
            y_p = aux(2) + 1 ;
            x1 = fix(x_p);
            y1 = fix(y_p);

            % TODO: Daca xp sau yp se afla în exteriorul imaginii,
            % se pune un pixel negru si se trece mai departe.
            % TODO: Afla punctele ce înconjoara(xp, yp).
            if(x1 >= 1 && y1 >= 1 && x_p <=n && y_p<=m)
                M = zeros(4,4);
                x2 = x1+1;
                y2 = y1+1;
                M(:,1) = [1 1 1 1];
                M(:,2) = [x1 x1 x2 x2];
                M(:,3) = [y1 y2 y1 y2];
                M(:,4) = [x1*y1 x1*y2 x2*y1 x2*y2];
                F = zeros(4,1);
                F = [I(y1,x1) I(y2,x1) I(y1,x2) I(y2,x2)]';
                % TODO: Calculeaza coeficientii de interpolare notati cu a
                A = zeros(4,1);
                A = double(inv(M)) * double(F);
                % TODO: Calculeaza valoarea interpolata a pixelului (x, y).
                R(y+1,x+1) = round(A(1) + A(2)*x_p + A(3)*y_p + A(4)*x_p*y_p);        
            endif            
        
        endfor
    endfor
    % TODO: Transforma matricea rezultata în uint8 pentru a fi o imagine valida.
    R = uint8(R);
endfunction
