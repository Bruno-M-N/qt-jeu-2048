#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QtQml>

#include <QQuickWindow>

#include "pagemanagement.h"
#include "game.h"
#include "grille_jeu.h"

int main(int argc, char *argv[])
{   //Aplication atributes
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication::setApplicationName("2048");
    QGuiApplication::setOrganizationName("Bruno et Corentin QtProjects SA");

    //The application class
    QGuiApplication app(argc, argv);

    //The QML Engine
    QQmlApplicationEngine engine;
    QQmlApplicationEngine *ptrEngine = &engine;

    //The URL of the QML file, notice this is a compiled resource
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    //Connecting a signal and a slot - making sure the object and url match
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);


    //The engine loading the QML file
    engine.load(url);

    QQuickWindow *window =
            qobject_cast<QQuickWindow*>(engine.rootObjects().at(0));
    if (!window) {
        qFatal("Error: Your root item has to be a window.");
        return -1;
    }
    window->show();
    QQuickItem *root = window->contentItem();

//    QQmlComponent component(&engine, QUrl("qrc:/Tile.qml"));
//    QQuickItem *object = qobject_cast<QQuickItem*>(component.create());

//    QQmlEngine::setObjectOwnership(object, QQmlEngine::CppOwnership);

//    object->setParentItem(root);
//    object->setParent(&engine);

//    object->setProperty("x", 320);
//    object->setProperty("y", 320);




    //PageManagement
    //Create an instance of that and expose it to QML
    PageManagement pageManagement(ptrEngine, root);
    engine.rootContext()->setContextProperty("cppPageManagement",
                                             &pageManagement);

    printf("A Game shall begging. And it's going to be AWESOME\n");
    //Game game(engine, root, 4, 4);


    // The application entering an event loop that keeps the application open
    return app.exec();
}
