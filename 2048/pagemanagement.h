#ifndef PAGEMANAGEMENT_H
#define PAGEMANAGEMENT_H

#include <QObject>

//QQmlApplicationEngine provides a convenient way to load an application from a
//single QML file. Inherits QQMLEngine
//The QQmlEngine class provides an environment for instantiating QML components.
#include <QGuiApplication>
#include <QQmlApplicationEngine>

//The QQmlContext class defines a context within a QML engine.
// Needed for PageManagement constructor in
// engine.rootContext()->setContextProperty(...)
#include <QQmlContext>

#include "game.h"

class PageManagement : public QObject
{
    Q_OBJECT
public:
    explicit PageManagement(QQmlApplicationEngine *engine, QQuickItem *root,
                            int rows = 4, int columns = 4,
                            QObject *parent = nullptr);

    Q_INVOKABLE void showHomePage(const QString &text);
    Q_INVOKABLE void showGamePage(const QString &text);

    Q_INVOKABLE void startGame();

signals:
    //Ce signal doit être généré dès lors que le compteur change : il faut en
    //informer l’interface graphique pour qu’elle lise la nouvelle valeur du
    //compteur et l’affiche dans l’élément graphique « Text » que nous avons
    //créé précédemment.
    void pageChanged(const QString &text);

private:
    bool gameRunning;
    Game game;
};

#endif // PAGEMANAGEMENT_H
