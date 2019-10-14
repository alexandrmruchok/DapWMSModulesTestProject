#ifndef APPMODULES_H
#define APPMODULES_H

#include <QObject>
#include <QColor>

struct ColorScheme:QObject
{
    Q_OBJECT
    Q_PROPERTY(QColor  base             MEMBER base             CONSTANT)
    Q_PROPERTY(QColor  background       MEMBER background       CONSTANT)
    Q_PROPERTY(QColor  background_hover MEMBER background_hover CONSTANT)

public:
    QString name;
    QColor base;
    QColor background;
    QColor background_hover;
};

struct AppModule:QObject
{
    Q_OBJECT
    Q_PROPERTY(QString      name        MEMBER name        CONSTANT)
    Q_PROPERTY(ColorScheme* colorScheme READ   colorScheme CONSTANT)

public:
    QString name;
    ColorScheme* colorScheme() { return &m_colorScheme; }

private:
    ColorScheme m_colorScheme;
};

struct AppModules:QObject
{
    Q_OBJECT
    Q_PROPERTY(AppModule* none     READ none        CONSTANT)
    Q_PROPERTY(AppModule* purchase READ purchase    CONSTANT)
    Q_PROPERTY(AppModule* storage  READ storage     CONSTANT)
    Q_PROPERTY(AppModule* logistic READ logistic    CONSTANT)

public:
    AppModules()
    {
        none()->name = "none"   ;
        ColorScheme *currentScheme = none()->colorScheme();
        currentScheme->base             = "#666666";
        currentScheme->background       = "#D9D9D9";
        currentScheme->background_hover = "#CBCBCB";

        storage()->name = "storage";
        currentScheme = storage()->colorScheme();
        currentScheme->base             = "#1C4401";
        currentScheme->background       = "#BFDCAC";
        currentScheme->background_hover = "#B2D49C";

        purchase()->name = "purchase"   ;
        currentScheme = purchase()->colorScheme();
        currentScheme->base             = "#36012E";
        currentScheme->background       = "#BA92B4";
        currentScheme->background_hover = "#AA7DA3";

        logistic()->name = "logistic";
        currentScheme = logistic()->colorScheme();
        currentScheme->base             = "#011233";
        currentScheme->background       = "#909CB3";
        currentScheme->background_hover = "#7B87A0";
    }

    static AppModule* none()
    {
        static AppModule mdlNone;
        return &mdlNone;
    }
    static AppModule* purchase()
    {
        static AppModule mdlPurchase;
        return &mdlPurchase;
    }
    static AppModule* storage()
    {
        static AppModule mdlstorage;
        return &mdlstorage;
    }
    static AppModule* logistic()
    {
        static AppModule mdlLogistic;
        return &mdlLogistic;
    }
};


#endif // APPMODULES_H


