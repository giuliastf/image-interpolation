
proximal_2x2
-am aflat n folosindu-ma de STEP
-cu ajutorul a doua for-uri am construit matricea out, afland
cel mai apropiat punct din cele 4

proximal_2x2_RGB
-am extras cele 3 matrici de culori 
-am apelat functia anterioara pt fiecare
-am format imaginea finala folosind rezultatul functiilor ape-
late

proximal_resize
-am initializat factorii de scalare, matricea de transformare
-folosind factorizarea QR am aflat inversa transformatei
-in interiorul a doua for-uri am aflat x_p si y_p, tinand cont 
de sistemul de coordonate(for-urile pleaca de la zero). De ase-
menea am folosit functia round pentru a afla cel mai apropiat
numar intreg(pixel). La final am construit matrice R folosindu-ma 
de pixelii din I (x_p si y_p).

proximal_resize_RGB
-am extras cele 3 matrici de culori 
-am apelat functia anterioara pt fiecare
-am format imaginea finala folosind rezultatul functiilor ape-
late

proximal_rotate
-am construit matricea de rotatie, am aflat inversa ei cu ajutorul
transpusei.
-am aflat punctele x_p si y_p, de data aceasta folosind functia
fix pentru a prelua partea intreaga
-am aflat punctele din jurul lui x_p si y_p. Am aplicat formu-
lele din pdf :))

proximal_rotate_RGB
-am extras cele 3 matrici de culori 
-am apelat functia anterioara pt fiecare
-am format imaginea finala folosind rezultatul functiilor ape-
late




precal_d
-aici am aplicat direct ccu ajutorul for-urilor formulele
pentru matricile cu derivate

bicubic_coef
am aflat matricea F cu pixelii specifici 
am aflat matricea A, (formula)

bicubic_resize
-am calculat dactorii de scalare
si punctele inconjuratoare lui xp yp
