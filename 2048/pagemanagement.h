#ifndef PAGEMANAGEMENT_H
#define PAGEMANAGEMENT_H

#include <QObject>

class PageManagement : public QObject
{
    Q_OBJECT
public:
    explicit PageManagement(QObject *parent = nullptr);

    Q_INVOKABLE void showHomePage(const QString &text);
    Q_INVOKABLE void showGamePage(const QString &text);

signals:
    //    Ce signal doit être généré dès lors que le compteur change : il faut en
    //    informer l’interface graphique pour qu’elle lise la nouvelle valeur du
    //    compteur et l’affiche dans l’élément graphique « Text » que nous avons
    //    créé précédemment.
        void pageChanged(const QString &text);
};

#endif // PAGEMANAGEMENT_H
