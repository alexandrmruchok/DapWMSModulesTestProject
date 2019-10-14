#ifndef MAINCONTROLLER_H
#define MAINCONTROLLER_H

#include <QObject>
#include <QColor>
#include <QQmlContext>
#include <AppModules.h>

class MainController : public QObject
{
    Q_OBJECT
public:
    explicit MainController(QObject *parent = nullptr);

    static MainController* instance();

    void initModules();

    Q_INVOKABLE void close();

    static void registerTypes(QQmlContext& context);

signals:

public slots:

public:
    AppModules appModules;
};



#endif // MAINCONTROLLER_H
