import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController.init()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    /* Hiding the window titlebar */
    self.titlebarAppearsTransparent = true
    self.isMovableByWindowBackground = true
    self.titleVisibility = .hidden
    self.styleMask.insert(NSWindow.StyleMask.fullSizeContentView)

    /* Making the window transparent */
  self.isOpaque = false
  self.backgroundColor = .clear

  /* Adding a NSVisualEffectView to act as a translucent background */
  let contentView = contentViewController!.view;
  let superView = contentView.superview!;

  let blurView = NSVisualEffectView()
  blurView.frame = superView.bounds
  blurView.autoresizingMask = [.width, .height]
  blurView.blendingMode = NSVisualEffectView.BlendingMode.behindWindow

  /* Replace the contentView and the background view */
  superView.replaceSubview(contentView, with: blurView)
  blurView.addSubview(contentView)

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
  }
}
