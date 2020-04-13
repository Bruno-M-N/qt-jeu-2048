#include "game.h"

Game::Game(QQmlApplicationEngine *engineSetup, QQuickItem *rootSetup,
           int rows, int columns,
           QObject *parent) : QObject(parent)
{   nRows = rows;
    nColumns = columns;

    engine = engineSetup;
    root = rootSetup;

    //Create grille_jeu
    Grille_jeu currentGameRound(nRows, nColumns);

    //Création du tableau stockant la grille au coup précédent
    Alloc(nRows,nColumns);
    Copy();

    xBoardGamePage = 0;
    yBoardGamePage = 0;
    //this->setBoardCornerPosition(engineSetup);
    this->setBoardCornerPosition();
//    qDebug() << "Board Property value x:" << xBoardGamePage;
//    qDebug() << "Board Property value y:" << yBoardGamePage;
}

void Game::Alloc(int l, int c)
{
    previousGameRound = new int*[l];
    for(int i=0; i<l; i++)
        previousGameRound[i] = new int[c];
}

void Game::Copy() //Met à jour le tableau sotckant le coup précédent
{
    for(int i=0;i<nRows;i++)
    {
        for(int j=0;j<nRows;j++)
        {
            previousGameRound[i][j]=currentGameRound.Read(i,j);
            score_precedent=currentGameRound.Read_score();
        }
    }
}

bool Game::Grille_differente_de_grille_precedente()
{
    for(int i=0;i<nRows;i++)
    {
        for(int j=0;j<nRows;j++)
        {
            if(currentGameRound.Read(i,j)!=previousGameRound[i][j])
            {
                return true;
            }
        }
    }
    return false;
}
//Game::~Game()
//{
//}

void Game::createTile()
{   int i = 0, j = 0, value = 0;
    value = currentGameRound.insert_new_tile(i, j);
    qDebug() << "Insert_new_tile: i" << i << "j" << j << " ";

    currentGameRound.Print();

    //Loading QML Objects from C++
    //doc.qt.io/qt-5/qtqml-cppintegration-interactqmlfromcpp.html
    //Using QQmlComponent
    //QQmlComponent component(&engine, QUrl::fromLocalFile("qrc:/Tile.qml"));

    const QUrl url(QStringLiteral("qrc:/Tile.qml"));
    //QQmlComponent component(&engineSetup, url);
    //before engineSetup was passed by reference (&engineSetup)
    QQmlComponent component(engine, url);

    QQuickItem *tileObject = qobject_cast<QQuickItem*>(component.create());

    //To avoid the Javascript garbage collector to kill it, tell QML that C++
    //takes care of it:
    QQmlEngine::setObjectOwnership(tileObject, QQmlEngine::CppOwnership);

    //Set the visual parent of the item.
    tileObject->setParentItem(root);
    //Makes the object a child of parent.
    //tileObject->setParent(&engineSetup);
    tileObject->setParent(engine);

    if (value == 4)
    {   tileObject->setProperty("tileColor", "#ede0c8");
        tileObject->setProperty("tileTextText", "4");
    }

    tileObject->setProperty("x", xBoardGamePage + BOARD_TILE_SPACED_SIZE * j
                            + BOARD_MARGIN);
    tileObject->setProperty("y", yBoardGamePage + BOARD_TILE_SPACED_SIZE * i
                            + 2 * BOARD_MARGIN);

    tiles.push_back(tileObject);
}

void Game::createTile(int x, int y, int value)
{   //Loading QML Objects from C++
    //doc.qt.io/qt-5/qtqml-cppintegration-interactqmlfromcpp.html
    //Using QQmlComponent
    //QQmlComponent component(&engine, QUrl::fromLocalFile("qrc:/Tile.qml"));

    const QUrl url(QStringLiteral("qrc:/Tile.qml"));
    //QQmlComponent component(&engineSetup, url);
    //before engineSetup was passed by reference (&engineSetup)
    QQmlComponent component(engine, url);

    QQuickItem *tileObject = qobject_cast<QQuickItem*>(component.create());

    //To avoid the Javascript garbage collector to kill it, tell QML that C++
    //takes care of it:
    QQmlEngine::setObjectOwnership(tileObject, QQmlEngine::CppOwnership);

    //Set the visual parent of the item.
    tileObject->setParentItem(root);
    //Makes the object a child of parent.
    //tileObject->setParent(&engineSetup);
    tileObject->setParent(engine);

    if (value == 4)
    {   tileObject->setProperty("tileColor", "#ede0c8");
        tileObject->setProperty("tileTextText", "4");
    }else if (value == 8)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#f2b179");
        tileObject->setProperty("tileTextText", "8");
    }else if (value == 16)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#f59563");
        tileObject->setProperty("tileTextText", "16");
    }else if (value == 32)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#f67c5f");
        tileObject->setProperty("tileTextText", "32");
    }else if (value == 64)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#f65e3b");
        tileObject->setProperty("tileTextText", "64");
    }else if (value == 128)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#edcf72");
        tileObject->setProperty("tileTextText", "128");
    }else if (value == 256)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#edcc61");
        tileObject->setProperty("tileTextText", "256");
    }else if (value == 512)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#edc850");
        tileObject->setProperty("tileTextText", "512");
    }else if (value == 1024)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#edc53f");
        tileObject->setProperty("tileTextText", "1024");
    }else if (value == 2048)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#edc22e");
        tileObject->setProperty("tileTextText", "2048");
    }else if (value == 4096)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#3c3a32");
        tileObject->setProperty("tileTextText", "4096");
    }else if (value != 0 && value != 2)
    {   tileObject->setProperty("tileTextColor", "#f9f6f2");
        tileObject->setProperty("tileColor", "#3c3a32");
        tileObject->setProperty("tileTextText", value);
    }

    tileObject->setProperty("x", xBoardGamePage + BOARD_TILE_SPACED_SIZE * y
                            + BOARD_MARGIN);
    tileObject->setProperty("y", yBoardGamePage + BOARD_TILE_SPACED_SIZE * x
                            + 2 * BOARD_MARGIN);

    tiles.push_back(tileObject);

}



void Game::setBoardCornerPosition()
{   //Loading QML Objects from C++
    //doc.qt.io/qt-5/qtqml-cppintegration-interactqmlfromcpp.html
    //Using QQmlComponent
    qDebug() << "Game::setBoardCornerPosition";

    const QUrl url(QStringLiteral("qrc:/GamePage.qml"));
    //QQmlComponent component(&engine, url);
    QQmlComponent component(engine, url);
    qDebug() << "QQmlComponent component(&engine, url);";

//    QObject *test = nullptr;
//    test = component.create();
//    if (test == nullptr)
//        printf("C'est nullptr");

    QObject *object = component.create();


    qDebug() << "Board Property value x:" <<
                QQmlProperty::read(object, "boardX").toInt();
    xBoardGamePage = QQmlProperty::read(object, "boardX").toInt();
    qDebug() << "Board Property value y:" <<
                QQmlProperty::read(object, "boardY").toInt()
                + QQmlProperty::read(object, "headerSize").toInt();
    yBoardGamePage = QQmlProperty::read(object, "boardY").toInt()
                + QQmlProperty::read(object, "headerSize").toInt();
}


void Game::moveRight()
{
    Copy(); //On sauvegarde l'état de la grille avant de tenter le déplacement
    currentGameRound.deplacer_droite();
    if(Grille_differente_de_grille_precedente())
    {
        this->createTile();
        this->displayTiles();
        this->displayScores();
    }
}

void Game::moveUp()
{
    Copy(); //On sauvegarde l'état de la grille avant de tenter le déplacement
    currentGameRound.deplacer_haut();
    if(Grille_differente_de_grille_precedente())
    {
        this->createTile();
        this->displayTiles();
        this->displayScores();
    }
}

void Game::moveDown()
{
    Copy(); //On sauvegarde l'état de la grille avant de tenter le déplacement
    currentGameRound.deplacer_bas();
    if(Grille_differente_de_grille_precedente())
    {
        this->createTile();
        this->displayTiles();
        this->displayScores();
    }
}

void Game::moveLeft()
{
    Copy(); //On sauvegarde l'état de la grille avant de tenter le déplacement
    currentGameRound.deplacer_gauche();
    if(Grille_differente_de_grille_precedente()) //On va modifier l'affichage qui s'il y a eu réellement un déplacement
    {
        this->createTile();
        this->displayTiles();
        this->displayScores();
    }
}

void Game::annuler()
{
    for(int i=0;i<nRows;i++)
    {
        for (int j=0;j<nColumns;j++)
        {
            int a = previousGameRound[i][j];
            currentGameRound.Set(i,j,a);
        }
    }
    currentGameRound.Set_score(score_precedent);
    this->displayTiles();
    this->displayScores();
}

void Game::displayTiles()
{
    currentGameRound.Print();
    //really not the most efficient way
    //but without changing grille_jeu deplacer_x, we don't know all tiles that
    //were merged
    //Maybe delete the vector part of createTile is a solution with we want to
    //make a new interface every time instead of following the tiles evolution
    for (unsigned int i = 0; i < tiles.size(); i++)
    {
        delete tiles[i];
    }

    tiles.clear();


    for (int i = 0; i < nRows; i++)
    {   for (int j = 0; j < nColumns; j++)
        {   int value = currentGameRound.Read(i,j);
            if (value != 0)
            {
                this->createTile(i, j, value);
            }
        }
    }

//    for (unsigned int i = 0; i < tiles.size(); i++)
//    {   //tiles[i]

//    }
}

void Game::displayScores()
{
    const QUrl url(QStringLiteral("qrc:/TextBox.qml"));
    QQmlComponent component(engine, url);
    QQuickItem *scoreObject = qobject_cast<QQuickItem*>(component.create());

    //To avoid the Javascript garbage collector to kill it, tell QML that C++
    //takes care of it:
    QQmlEngine::setObjectOwnership(scoreObject, QQmlEngine::CppOwnership);

    //Set the visual parent of the item.
    scoreObject->setParentItem(root);
    //Makes the object a child of parent.
    scoreObject->setParent(engine);
    scoreObject->setProperty("descriptionText","SCORE");
    scoreObject->setProperty("scoreText",currentGameRound.Read_score());
    scoreObject->setX(250);
    scoreObject->setY(69);
}
