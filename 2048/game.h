#ifndef GAME_H
#define GAME_H

#include <QObject>
#include <vector>

#include "grille_jeu.h"


class Game : public QObject
{
    Q_OBJECT
public:
    explicit Game(QObject *parent = nullptr);

signals:

private:
    Grille_jeu currentGameRound;
    //std::vector <Grille_jeu> previousGameRound;
;


};

#endif // GAME_H
