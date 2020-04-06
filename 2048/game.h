#ifndef GAME_H
#define GAME_H

#include <QObject>

//QQmlApplicationEngine provides a convenient way to load an application from a
//single QML file. Inherits QQMLEngine
//The QQmlEngine class provides an environment for instantiating QML components.
#include <QQmlApplicationEngine>
//The QQmlComponent class encapsulates a QML component definition.
#include <QQmlComponent>

#include <QQuickItem>

#include <vector>

#include "grille_jeu.h"


class Game : public QObject
{
    Q_OBJECT
public:
    explicit Game(QQmlApplicationEngine &engine, QObject *parent = nullptr);
    //~Game();

    Q_INVOKABLE void moveRight();
    Q_INVOKABLE void moveUp();
    Q_INVOKABLE void moveDown();
    Q_INVOKABLE void moveLeft();

    Q_INVOKABLE void displayTiles();

signals:

private:
    Grille_jeu currentGameRound;
    std::vector <Grille_jeu> previousGameRound;
    std::vector <QObject> tiles;
    int score;
    std::vector <int> scoreRound;
;


};

#endif // GAME_H
