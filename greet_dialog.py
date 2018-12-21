import sys
from PySide2.QtWidgets import (QLineEdit, QPushButton, QApplication, QVBoxLayout, QDialog)


class NameForm(QDialog):
    def __init__(self, parent=None):
        super(NameForm, self).__init__(parent)

        self.edit = QLineEdit("Enter your name here")
        self.button = QPushButton("Show greetings")

        layout = QVBoxLayout()
        layout.addWidget(self.edit)
        layout.addWidget(self.button)

        self.setLayout(layout)
        self.button.clicked.connect(self.greetings)

    def greetings(self):
        print("Hello %s" % self.edit.text())


if __name__ == '__main__':
    app = QApplication(sys.argv)

    form = NameForm()
    form.show()

    sys.exit(app.exec_())
