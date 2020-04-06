#include "game.h"

Game::Game(QQmlApplicationEngine &engine, QObject *parent) : QObject(parent)
{   //Create grille_jeu
    currentGameRound =  Grille_jeu();
    score = 0;
    //Add element at the end; 0 because it's the first round
    scoreRound.push_back(0);

    //Loading QML Objects from C++
    //https://doc.qt.io/qt-5/qtqml-cppintegration-interactqmlfromcpp.html
    // Using QQmlComponent
    QQmlComponent component(&engine,
            QUrl::fromLocalFile("qrc:/Tile.qml"));
    //QObject object = component.create();
    QObject *test = component.create();
    if (test == nullptr)
        printf("C'est nullptr");

    //Peut-être https://doc.qt.io/qt-5/qqmlcomponent.html#create

    //QQuickItem *tileObject = qobject_cast<QQuickItem*>(component.create());

    //tileObject->setProperty("tileArea.x", 170);
    //tileObject->setProperty("tileArea.y", 170);


}

//Game::~Game()
//{
//}

void Game::moveRight()
{   score += currentGameRound.deplacer_droite();
    scoreRound.push_back(score);
}

void Game::moveUp()
{   score += currentGameRound.deplacer_haut();
    scoreRound.push_back(score);
}

void Game::moveDown()
{   score += currentGameRound.deplacer_bas();
    scoreRound.push_back(score);
}

void Game::moveLeft()
{   score += currentGameRound.deplacer_gauche();
    scoreRound.push_back(score);
}

void Game::displayTiles()
{
}
