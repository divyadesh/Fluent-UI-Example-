QT += quick core widgets quickcontrols2 quicktemplates2 quick-private \
	quicktemplates2-private \
	quickcontrols2-private

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        src/AppInfo.cpp \
        src/component/CircularReveal.cpp \
        src/component/FileWatcher.cpp \
        src/component/FpsItem.cpp \
	src/helper/SettingsHelper.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
	Version.h \
	src/AppInfo.h \
	src/component/CircularReveal.h \
	src/component/FileWatcher.h \
	src/component/FpsItem.h \
	src/helper/SettingsHelper.h \
	src/singleton.h \
	src/stdafx.h
