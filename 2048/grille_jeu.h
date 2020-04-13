#ifndef GRILLE_JEU_H
#define GRILLE_JEU_H

/* Cette classe gère le côté logique de la grille de jeu en modélisant celle-ci par une matrice.
 * On l'initialise à 0 avec un 2 ou 4 (proba 0.75 pour 2) placé de manière aléatoire sur la grille
 * Définition des fonctions:
 *
 * */

#include <iostream>
#include <QRandomGenerator>

class Grille_jeu
{

public:
    Grille_jeu(int l=4, int c=4);
    ~Grille_jeu();
    void Print();
    void Init();
    int random_number_between(int min, int max_excluded);
    void Set(int x, int y, int value); //Excepetion à écrire
    int Read(int x, int y);
    int insert_new_tile(int &x, int &y);
    bool partie_fini();
    bool title_2048_fait();
    void deplacer_droite();
    void deplacer_haut();
    void deplacer_bas();
    void deplacer_gauche();
    int Read_score();
    void Set_score(int value);

private:
    int** T;
    int L;
    int C;
    int score;
    //méthode
    void Alloc(int l, int c);
    void Free();

};

#endif // DAMIER_H
