class AddPersonScreen < PM::Screen
  title "Add Person"

def viewDidLoad
    self.view.backgroundColor = UIColor.whiteColor

    name_row

    @save = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @save.setTitle("Save", forState: UIControlStateNormal)
    @save.frame = [[100, 250], [100, 50]]
    @save.addTarget(self,
      action: :create_person,
      forControlEvents: UIControlEventTouchUpInside)
    self.view.addSubview(@save)
  end

  def name_row
    @name_label = UILabel.alloc.initWithFrame([[30, 80], [80, 40]])
    @name_label.text = "Name:"
    self.view.addSubview(@name_label)
    @name = UITextField.alloc.initWithFrame([[120, 80], [160, 40]])
    @name.textColor = UIColor.blackColor
    @name.backgroundColor = UIColor.whiteColor
    @name.setBorderStyle(UITextBorderStyleRoundedRect)
    self.view.addSubview(@name)
  end


  def create_person
    @person = Person.create(:name => @name.text)

    @alert_box = UIAlertView.alloc.initWithTitle("Person Saved",
        message:"#{@name.text}",
        delegate: nil,
        cancelButtonTitle: "ok",
        otherButtonTitles:nil)
    @alert_box.show
  end

  def will_appear
  end
end
