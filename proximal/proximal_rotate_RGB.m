function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: Extrage canalul rosu al imaginii.
    R = img(:,:,1);
    % TODO: Extrage canalul verde al imaginii.
    G = img(:,:,2);
    % TODO: Extrage canalul albastru al imaginii.
    B = img(:,:,3);
    % TODO: Aplica rotatia pe fiecare canal al imaginii.
    R_new = proximal_rotate(R, rotation_angle);
    G_new = proximal_rotate(G, rotation_angle);
    B_new = proximal_rotate(B, rotation_angle);
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out(:,:,1) = R_new;
    out(:,:,2) = G_new;
    out(:,:,3) = B_new;
endfunction