#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQuickStyle::setStyle(QStringLiteral("Material"));
    QQmlApplicationEngine appEngine(QUrl("qrc:/main.qml"));
    return app.exec();
}
