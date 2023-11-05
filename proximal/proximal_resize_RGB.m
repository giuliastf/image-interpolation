function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel încât aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    R = img(:, :, 1);
    % TODO: Extrage canalul verde al imaginii.
    G = img(:, :, 2);
    % TODO: Extrage canalul albastru al imaginii.
    B = img(:, :, 3);
    % TODO: Aplica functia proximal pe cele 3 canale ale imaginii.
    R_new = proximal_resize(R, p, q);
    G_new = proximal_resize(G, p, q);
    B_new = proximal_resize(B, p, q);
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = zeros(p, q, 3);
    out(:, :, 1) = R_new;
    out(:, :, 2) = G_new;
    out(:, :, 3) = B_new;
endfunction
