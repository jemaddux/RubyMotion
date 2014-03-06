class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = klass.alloc.init
    @window.makeKeyAndVisible
    true
  end

  # Usage
  #
  # PART=1 rake
  def klass
    part = ENV['PART']
    if part.nil?
      part = '1'
      puts "Using default part: #{part}"
    else
      puts "Using part: #{part}"
    end

    case part
    when '1'
      Loginv1Controller
    # when '2'
    #   Loginv2Controller
    # when '3'
    #   StandardAppearance.set_named_fonts_and_colors
    #   Loginv3Controller
    # when '4'
    #   StandardAppearance.set_named_fonts_and_colors
    #   Loginv4Controller
    # when '5'
    #   StandardAppearance.set_named_fonts_and_colors
    #   Loginv5Controller
    # when '6'
    #   StandardAppearance.set_named_fonts_and_colors
    #   Loginv6Controller
    end
  end
end
