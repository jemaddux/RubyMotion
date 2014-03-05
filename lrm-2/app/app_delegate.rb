class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @langauges_controller = LanguagesController.alloc.initWithNibName(nil, bundle: nil)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(@languages_controller)

    @window.makeKeyAndVisible
    true
  end
end

