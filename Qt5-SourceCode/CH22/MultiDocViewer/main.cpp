#include <QApplication>
#include <QQmlApplicationEngine>
#include "htmlhandler.h"//
#include "texthandler.h"//
#include <QtQml/qqml.h>//
#include <QIcon>//

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    app.setWindowIcon(QIcon(":/images/vieweye.png"));
    qmlRegisterType<HtmlHandler>("org.qtproject.easybooks", 1, 0, "HtmlHandler");//
    qmlRegisterType<TextHandler>("org.qtproject.easybooks", 1, 0, "TextHandler");//

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
