import subprocess
import sys
import time
from PyQt4.QtGui import *

#==============================================================================
class Window(QWidget):
    def __init__(self, *args, **kwargs):
        QWidget.__init__(self, *args, **kwargs)

        # Widgets
        self.label = QLabel('Battery Percentage Low - ' + self.battery(), self) 
        self.btnLeft = QPushButton('Shutdown', self)
        self.btnRight = QPushButton('Suspend', self)

        self.btnLeft.clicked.connect(self.shutdown)
        self.btnRight.clicked.connect(self.suspend)

        self.label.move(65, 20)
        self.btnLeft.move(70, 55)
        self.btnRight.move(170, 55)

        # Layout
        self.resize(320, 100)
        self.show()

    def battery(self):
        percentage = subprocess.check_output("acpi -b | awk -F ', ' '{print $2}'", shell=True)
        return percentage.decode('utf-8')

    def shutdown(self):
        subprocess.call('shutdown now', shell=True)

    def suspend(self):
        self.close()
        time.sleep(0.2)
        subprocess.call('systemctl suspend', shell=True)

#==============================================================================
if __name__ == "__main__":
    app = QApplication(sys.argv)
    win = Window()
    sys.exit(app.exec_())
