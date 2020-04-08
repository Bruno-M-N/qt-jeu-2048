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

//test
#include <QQmlProperty>
//#include <QQuickWindow>

#include <vector>

#include "grille_jeu.h"

const int BOARD_TILE_SPACED_SIZE = 151;
const int BOARD_MARGIN = 19;

class Game : public QObject
{
    Q_OBJECT
public:
    explicit Game(QQmlApplicationEngine *engineSetup, QQuickItem *rootSetup,
                  int rows = 4, int columns = 4,
                  QObject *parent = nullptr);
    //~Game();

    void createTile();
    void createTile(int x, int y, int value);
    void updateTiles();

    //void setBoardCornerPosition(QQmlApplicationEngine &engine);
    void setBoardCornerPosition();

    Q_INVOKABLE void moveRight();
    Q_INVOKABLE void moveUp();
    Q_INVOKABLE void moveDown();
    Q_INVOKABLE void moveLeft();

    Q_INVOKABLE void displayTiles();

signals:

private:
    QQmlApplicationEngine *engine;
    QQuickItem *root;

    int nRows; // number of rows
    int nColumns; //number of columns
    Grille_jeu currentGameRound;
    std::vector <Grille_jeu> previousGameRound;
    int xBoardGamePage; //coordinate x of the Board in GamePage.qml
    int yBoardGamePage; //coordinate y of the Board in GamePage.qml
    std::vector <QQuickItem*> tiles;
    unsigned int score;
    std::vector <unsigned int> scoreRound;
;


};

#endif // GAME_H
