#ifndef FUNCTION_H
#define FUNCTION_H

#include <QObject>

class InfSearch: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString index READ index WRITE setIndex NOTIFY indexAccepted)

    Q_PROPERTY(QString inf READ inf WRITE seInf NOTIFY infChanged)

public:
    explicit InfSearch(QObject *parent = nullptr);

    QString index();

    void setIndex(const QString &index);

    QString inf();

    void setInf(const QString &inf);

signals:
    void indexAccepted();

    void infChanged();

private slots:
    void indexChanged();

private:
    QString m_index;

    QString m_inf;

};

#endif //FUNCTION_H
