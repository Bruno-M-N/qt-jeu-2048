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

void Grille_jeu::Alloc(int l, int c)
{
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
    insert_new_tile();
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

void Grille_jeu::Free()
{
    for (int i=0; i<L; i++) {
        delete [] T[i];
    }
    delete [] T;
}

void Grille_jeu::Print()
{
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

bool Grille_jeu::partie_fini()
{
    bool partie_fini=true;
    for(int i=0;i<L;i++)
    {
        for(int j=0;j<C;j++)
        {
            if(T[i][j]==0) //S'il y a encore une case sans tile la partie peut continuer
            {
                partie_fini=false;
            }
        }
    }
    return partie_fini;
}

int Grille_jeu::insert_new_tile()
{
    //Cette fonction permet de créer la nouvelle tile placé aléatoirement à chaque tour tout en vérifiant si la partie est fini ou pas
    bool continuer=true;
    int a,x,y;
    if(partie_fini())//on teste d'abord si la partie est finie ou pas
    {
        return -1;
    }
    else //sinon on place la tile
    {
        while(continuer) //Comme la place est aléatoire on teste jusqu'à trouver une place viable
        {
           a=random_number_between(0,100);
           x=random_number_between(0,L);
           y=random_number_between(0,C);
           if(T[x][y]==0)
           {
               if(a>=75)
               {
                   T[x][y]=4;
               }
               else
               {
                   T[x][y]=2;
               }
               continuer=false;
           }
        }
        return 0;
    }
}

void Grille_jeu::deplacer_droite()
{
    //deplacement 1: Le principe est basé sur celui du tri à bulle. On emmène les 0 à l'opposé du déplacement sans changer l'ordre
    for(int i=0;i<L;i++)
    {
        for(int k=0;k<C;k++)//Mise en plae du tri à bulle pour une ligne. Il n'est pas optimisé ici donc entraine une perte de temps
        {
            for(int j=C-1;j>0;j--)
            {
                if(T[i][j]==0)
                {
                    T[i][j]=T[i][j-1]; //on échange les 2 nombres mais comme l'un est connu on peut procéder à seulement 2 affectations
                    T[i][j-1]=0;
                }
            }
        }
    }
    //Partie Somme: Les nombres étant tous les uns à côté des autres il reste plus qu'à sommer ceux identiques et à mettre un 0 dans l'une des cases
    for(int i=0;i<L;i++)
    {
        for(int k=C-1;k>0;k--)
        {
            if(T[i][k]==T[i][k-1])
            {
                T[i][k]=T[i][k]*2;
                T[i][k-1]=0;
            }
        }
    }
    //Déplacement 2: Les 0 qui ont pu apparaitre à la suite des sommes sont déplacés selon le principe précédent
    for(int i=0;i<L;i++)
    {
        for(int k=0;k<C;k++)
        {
            for(int j=C-1;j>0;j--)
            {
                if(T[i][j]==0)
                {
                    T[i][j]=T[i][j-1];
                    T[i][j-1]=0;
                }
            }
        }
    }
}

void Grille_jeu::deplacer_gauche()
{

    //deplacement 1: Le principe est basé sur celui du tri à bulle. On emmène les 0 à l'opposé du déplacement sans changer l'ordre
    for(int i=0;i<L;i++)
    {
        for(int k=0;k<C;k++)
        {
            for(int j=0;j<C-1;j++)
            {
                if(T[i][j]==0)
                {
                    T[i][j]=T[i][j+1];
                    T[i][j+1]=0;
                }
            }
        }
    }
    //Partie Somme: Les nombres étant tous les uns à côté des autres il reste plus qu'à sommer ceux identiques et à mettre un 0 dans l'une des cases
    for(int i=0;i<L;i++)
    {
        for(int k=0;k<C-1;k++)
        {
            if(T[i][k]==T[i][k+1])
            {
                T[i][k]=T[i][k]*2;
                T[i][k+1]=0;
            }
        }
    }
    //Déplacement 2: Les 0 qui ont pu apparaitre à la suite des sommes sont déplacés selon le principe précédent
    for(int i=0;i<L;i++)
    {
        for(int k=0;k<C;k++)
        {
            for(int j=0;j<C-1;j++)
            {
                if(T[i][j]==0)
                {
                    T[i][j]=T[i][j+1];
                    T[i][j+1]=0;
                }
            }
        }
    }
}

void Grille_jeu::deplacer_bas()
{

    //deplacement 1: Le principe est basé sur celui du tri à bulle. On emmène les 0 à l'opposé du déplacement sans changer l'ordre
    for(int j=0;j<C;j++)
    {
        for(int k=0;k<L;k++)
        {
            for(int i=L-1;i>0;i--)
            {
                if(T[i][j]==0)
                {
                    T[i][j]=T[i-1][j];
                    T[i-1][j]=0;
                }
            }
        }
    }
    //Partie Somme: Les nombres étant tous les uns à côté des autres il reste plus qu'à sommer ceux identiques et à mettre un 0 dans l'une des cases
    for(int j=0;j<C;j++)
    {
        for(int k=L-1;k>0;k--)
        {
            if(T[k][j]==T[k-1][j])
            {
                T[k][j]=T[k][j]*2;
                T[k-1][j]=0;
            }
        }
    }
    //Déplacement 2: Les 0 qui ont pu apparaitre à la suite des sommes sont déplacés selon le principe précédent
    for(int j=0;j<C;j++)
    {
        for(int k=0;k<L;k++)
        {
            for(int i=L-1;i>0;i--)
            {
                if(T[i][j]==0)
                {
                    T[i][j]=T[i-1][j];
                    T[i-1][j]=0;
                }
            }
        }
    }
}

void Grille_jeu::deplacer_haut()
{

    //deplacement 1: Le principe est basé sur celui du tri à bulle. On emmène les 0 à l'opposé du déplacement sans changer l'ordre
    for(int j=0;j<C;j++)
    {
        for(int k=0;k<L;k++)
        {
            for(int i=0;i<L-1;i++)
            {
                if(T[i][j]==0)
                {
                    T[i][j]=T[i+1][j];
                    T[i+1][j]=0;
                }
            }
        }
    }
    //Partie Somme: Les nombres étant tous les uns à côté des autres il reste plus qu'à sommer ceux identiques et à mettre un 0 dans l'une des cases
    for(int j=0;j<C;j++)
    {
        for(int k=0;k<L-1;k++)
        {
            if(T[k][j]==T[k+1][j])
            {
                T[k][j]=T[k][j]*2;
                T[k+1][j]=0;
            }
        }
    }
    //Déplacement 2: Les 0 qui ont pu apparaitre à la suite des sommes sont déplacés selon le principe précédent
    for(int j=0;j<C;j++)
    {
        for(int k=0;k<L;k++)
        {
            for(int i=0;i<L-1;i++)
            {
                if(T[i][j]==0)
                {
                    T[i][j]=T[i+1][j];
                    T[i+1][j]=0;
                }
            }
        }
    }
}
