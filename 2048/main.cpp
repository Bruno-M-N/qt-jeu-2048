#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QtQml>
#include "pagemanagement.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    //PageManagement
    //Create an instance of that and expose it to QML
    PageManagement pageManagement;
    engine.rootContext()->setContextProperty("cppPageManagement",
                                             &pageManagement);


    engine.load(url);

    return app.exec();
}
