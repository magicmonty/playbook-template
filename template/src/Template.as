package {
    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    
    import qnx.ui.theme.ThemeGlobals;
    
    // The following metadata specifies the size and properties of the canvas that
    // this application should occupy on the BlackBerry PlayBook screen.
    [SWF(width="1024", height="600", backgroundColor="#333333", frameRate="30")]
    public class ${app.name} extends Sprite {
        public function ${app.name}() {
            stage.align = StageAlign.TOP_LEFT;
            stage.scaleMode = StageScaleMode.NO_SCALE;
            ThemeGlobals.currentTheme = ThemeGlobals.BLACK;
            
            initialize();
            				            
            stage.nativeWindow.visible = true;
        }
        
        private function initialize():void {
            // TODO initialize UI here
        }
    }
}
