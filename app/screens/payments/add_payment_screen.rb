class AddPaymentScreen < PM::Screen
  title "Add Payment"

def viewDidLoad
    self.view.backgroundColor = UIColor.whiteColor

    name_row
    amount_row

    @save = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @save.setTitle("Save", forState: UIControlStateNormal)
    @save.frame = [[100, 250], [100, 50]]
    @save.addTarget(self,
      action: :create_payment,
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

  def amount_row
    @amount_label = UILabel.alloc.initWithFrame([[30, 140], [80, 40]])
    @amount_label.text = "Amount:"
    self.view.addSubview(@amount_label)
    @amount = UITextField.alloc.initWithFrame([[120, 140], [160, 40]])
    @amount.textColor = UIColor.blackColor
    @amount.backgroundColor = UIColor.whiteColor
    @amount.setBorderStyle(UITextBorderStyleRoundedRect)
    self.view.addSubview(@amount)
  end


  def create_payment
    @payment = Payment.create(:amount => @amount.text.to_f, :name => @name.text)

    @alert_box = UIAlertView.alloc.initWithTitle("Payment Saved",
        message:"#{@amount.text.to_f.round(2)} paid.",
        delegate: nil,
        cancelButtonTitle: "ok",
        otherButtonTitles:nil)
    @alert_box.show
    @name.text = ""
    @amount.text = ""
  end

  def will_appear
  end
end
