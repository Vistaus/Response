class MainGrid : Gtk.Grid {
    public MainGrid () {
        Object (
            row_homogeneous: false,
            column_homogeneous: false,
            orientation: Gtk.Orientation.VERTICAL,
            row_spacing: 3
            ) ;
    }

}