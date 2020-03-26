#include "pagemanagement.h"

PageManagement::PageManagement(QObject *parent) : QObject(parent)
{   pageChanged("Hello: HomePage 1");
    printf("Hello World: HomePage 1");
}


void PageManagement::showHomePage(const QString &text)
{   pageChanged(text);
    printf("Hello World: HomePage");
}

void PageManagement::showGamePage(const QString &text)
{   pageChanged(text);
    printf("Hello World: GamePage");
}
