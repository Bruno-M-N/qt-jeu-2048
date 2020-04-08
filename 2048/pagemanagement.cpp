#include "pagemanagement.h"

PageManagement::PageManagement(QQmlApplicationEngine *engine, QQuickItem *root,
                               int rows, int columns,
                               QObject *parent) : QObject(parent),
                                                  game (engine, root,
                                                        rows, columns)
{   pageChanged("Hello: HomePage 1");
    printf("Hello World: HomePage 1 (constructor)\n");

    //Create a new game
    //Game game (engine);
    engine->rootContext()->setContextProperty("cppGame", &game);
    gameRunning = false;
}


void PageManagement::showHomePage(const QString &text)
{   pageChanged(text);
    printf("Hello World: HomePage\n");
}

void PageManagement::showGamePage(const QString &text)
{   pageChanged(text);
    printf("Hello World: GamePage\n");
}

void PageManagement::startGame()
{   if (gameRunning == false)
    {   gameRunning = true;
        game.createTile();
    }
}

