#include "MainController.h"
#include <QDebug>
#include <QQmlEngine>
#include <QCoreApplication>

MainController::MainController(QObject *parent)
    : QObject(parent)
{

}

MainController *MainController::instance()
{
    static MainController instance;
    return &instance;
}

void MainController::close()
{
    qDebug() << "Close";
    QCoreApplication::exit(-1);
}

void MainController::registerTypes(QQmlContext& context)
{
    context.setContextProperty("mainController", MainController::instance());
    context.setContextProperty("appModules", &MainController::instance()->appModules);

    qmlRegisterUncreatableType<AppModules>("App.AppModules", 1, 0,
                                            "AppModules",
                                            "You can't create an instance of the AppModules.");

    qmlRegisterUncreatableType<AppModule>("App.AppModules", 1, 0,
                                            "AppModule",
                                            "You can't create an instance of the AppModule.");

    qmlRegisterUncreatableType<ColorScheme>("App.ColorScheme", 1, 0,
                                            "ColorScheme",
                                            "You can't create an instance of the ColorScheme.");
}

