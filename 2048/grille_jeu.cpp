#include "grille_jeu.h"
using namespace std;

Grille_jeu::Grille_jeu()
{
    Alloc(4,4); //la taille sera à adapter en fonction des modes
    Init();
}

Grille_jeu::~Grille_jeu()
{
    if (T != NULL)
    {
        Free();
        T = NULL;
    }
}

void Grille_jeu::Alloc(int l, int c){
    L = l;
    C = c;
    T = new int*[L];
    for(int i=0; i<L; i++)
        T[i] = new int[C];
}

void Grille_jeu::Init()
{
    for(int i=0;i<L;i++)
    {
        for (int j=0;j<C;j++)
        {
            T[i][j]=0;
        }
    }
    int a=random_number_between(0,100);
    int x=random_number_between(0,L);
    int y=random_number_between(0,C);
    if (a>=75)
    {
      Set(x,y,4);
    }
    else
    {
        Set(x,y,2);
    }
}

void Grille_jeu::Set(int x, int y, int value)
{
    if(x<L and y<C and x>=0 and y>=0)
    {
        T[x][y]=value;
    }
}

int Grille_jeu::Read(int x, int y)
{
    if(x<L and y<C and x>=0 and y>=0)
    {
        return T[x][y];
    }
    else
    {
        return -1;
    }
}

void Grille_jeu::Free(){
    for (int i=0; i<L; i++) {
        delete [] T[i];
    }
    delete [] T;
}

void Grille_jeu::Print(){
    cout << endl;
    for(int i=0; i<L; i++) {
        cout << endl;
        for(int j=0; j<C; j++)
            cout << T[i][j] << ", ";
    }
}

int Grille_jeu::random_number_between(int min, int max_excluded)
{
    return QRandomGenerator::global()->bounded(min,max_excluded);
}
