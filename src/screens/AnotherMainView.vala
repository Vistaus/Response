/**
 *
 */
public class AnotherMainView : Gtk.EventBox {


    public AnotherMainView () {
        var uri = new UriGen () ;
        var ua = new UserAgents () ;
        var thewebview = new IseView () ;
        var main_grid = new MainGrid () ;
        var url_entry = new UrlEntry () ;
        var entry_box = new HorizontalBox (5) ;
        var device_box0 = new HorizontalBox (3) ;
        var device_box1 = new HorizontalBox (3) ;
        var go_btn = new LabelButton ("Check",true) ;
        var iphone_se = new LabelButton ("iPhone SE",false) ;
        var moto_g4 = new LabelButton ("Moto G4",false) ;
        var iphone_8 = new LabelButton ("iPhone 8",false) ;
        var pixel_2 = new LabelButton ("Pixel 2",false) ;
        var sg_fold = new LabelButton ("Galaxy Fold",false) ;

        go_btn.clicked.connect (() => {
            thewebview.loadPage (uri.generateUri (url_entry)) ;
        }) ;

        iphone_se.clicked.connect (() => {
            thewebview.resizePage (320, 568, ua.iphone_se) ;
        }) ;
        iphone_8.clicked.connect (() => {
            thewebview.resizePage (375, 667, ua.iphone_8) ;
        }) ;
        moto_g4.clicked.connect (() => {
            thewebview.resizePage (360, 640, ua.moto_g4) ;
        }) ;
        pixel_2.clicked.connect (() => {
            thewebview.resizePage (411, 731, ua.pixel_2) ;
        }) ;
        sg_fold.clicked.connect (() => {
            thewebview.resizePage (280, 650, ua.sg_fold) ;
        }) ;


        device_box0.add (iphone_8) ;
        device_box0.add (iphone_se) ;
        device_box0.add (pixel_2) ;
        device_box1.add (moto_g4) ;
        device_box1.add (sg_fold) ;

        entry_box.pack_start (url_entry, true, true, 5) ;
        entry_box.pack_start (go_btn, true, true, 5) ;

        main_grid.add (entry_box) ;
        main_grid.add (device_box0) ;
        main_grid.add (device_box1) ;
        main_grid.add (thewebview) ;

        add (main_grid) ;

    }

}