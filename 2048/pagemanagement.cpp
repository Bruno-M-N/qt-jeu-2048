#include "pagemanagement.h"

PageManagement::PageManagement(QObject *parent) : QObject(parent)
{   pageChanged("Hello: HomePage 1");
    printf("Hello World: HomePage 1 (constructor)\n");
    gameRunning = false;
}


void PageManagement::showHomePage(const QString &text)
{   pageChanged(text);
    printf("Hello World: HomePage\n");
}

void PageManagement::showGamePage(const QString &text)
{   pageChanged(text);
    printf("Hello World: GamePage\n");
    if (gameRunning == false)
    {   gameRunning = true;
    }
}
