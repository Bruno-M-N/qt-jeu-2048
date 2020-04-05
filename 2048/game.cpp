#include "game.h"

Game::Game(QObject *parent) : QObject(parent)
{   //Create grille_jeu
    currentGameRound =  Grille_jeu();

}
