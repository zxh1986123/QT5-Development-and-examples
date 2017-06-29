#ifndef HTMLHANDLER
#define HTMLHANDLER
#include <QQuickTextDocument>
#include <QtCore/QTextCodec>
#include <qqmlfile.h>

class QTextDocument;

class HtmlHandler : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QQuickItem *target READ target WRITE setTarget NOTIFY targetChanged)

    Q_PROPERTY(QUrl fileUrl READ fileUrl WRITE setFileUrl NOTIFY fileUrlChanged)
    Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
    Q_PROPERTY(QString htmlTitle READ htmlTitle WRITE setHtmlTitle NOTIFY htmlTitleChanged)

public:
    HtmlHandler();

    QQuickItem *target() { return m_target; }

    void setTarget(QQuickItem *target);

    QUrl fileUrl() const;
    QString text() const;
    QString htmlTitle() const;

public Q_SLOTS:
    void setFileUrl(const QUrl &arg);
    void setText(const QString &arg);
    void setHtmlTitle(QString arg);

Q_SIGNALS:
    void targetChanged();
    void fileUrlChanged();
    void textChanged();
    void htmlTitleChanged();

private:
    QQuickItem *m_target;
    QTextDocument *m_doc;

    int m_cursorPosition;
    int m_selectionStart;
    int m_selectionEnd;

    QFont m_font;
    QUrl m_fileUrl;
    QString m_text;
    QString m_htmlTitle;
};

#endif // HTMLHANDLER
