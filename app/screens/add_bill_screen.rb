class AddBillScreen < PM::Screen
  title "Add Bill"

  def viewDidLoad
    self.view.backgroundColor = UIColor.whiteColor

    @amount_label = UILabel.alloc.initWithFrame([[30, 80], [80, 40]])
    @amount_label.text = "Amount:"
    self.view.addSubview(@amount_label)

    @amount = UITextField.alloc.initWithFrame([[120, 80], [160, 40]])
    @amount.textColor = UIColor.blackColor
    @amount.backgroundColor = UIColor.whiteColor
    @amount.setBorderStyle(UITextBorderStyleRoundedRect)
    self.view.addSubview(@amount)

    @save = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @save.setTitle("Save", forState: UIControlStateNormal)
    @save.frame = [[100, 250], [100, 50]]
    @save.addTarget(self,
      action: :create_bill,
      forControlEvents: UIControlEventTouchUpInside)
    self.view.addSubview(@save)
  end

  def create_bill
    @alert_box = UIAlertView.alloc.initWithTitle("Bill Saved",
        message:"#{@amount.text.to_i}",
        delegate: nil,
        cancelButtonTitle: "ok",
        otherButtonTitles:nil)
    @alert_box.show
  end

  def will_appear
  end
end
