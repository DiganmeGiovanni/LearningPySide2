#!/usr/bin/env python

import sys
from PySide2.QtWidgets import QApplication, QPushButton
from PySide2.QtCore import Slot


@Slot()
def toggle():
    print('Toggling play')


app = QApplication(sys.argv)
button = QPushButton("Toggle play")
button.clicked.connect(toggle)
button.show()

app.exec_()

