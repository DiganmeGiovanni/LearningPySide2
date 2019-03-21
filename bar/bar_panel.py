from Xlib.display import Display


class BarWindow:
    def __init__(self, window_id):
        self._display = Display()
        self._window = self._display.create_resource_object('window', window_id)

    def reserve_space(self, left=0, right=0, top=0, bottom=0):
        self._window.change_property(
            self._display.intern_atom('_NET_WM_STRUT'),
            self._display.intern_atom('CARDINAL'),
            32,
            [left, right, top, bottom])
        self._display.sync()
