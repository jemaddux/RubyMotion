class AddBillScreen < PM::Screen
  title "Add Bill"

  def viewDidLoad
    self.view.backgroundColor = UIColor.whiteColor

    name_row
    amount_row
    people_row

    @save = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @save.setTitle("Save", forState: UIControlStateNormal)
    @save.frame = [[100, 250], [100, 50]]
    @save.addTarget(self,
      action: :create_bill,
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

  def people_row
    @people_label = UILabel.alloc.initWithFrame([[30, 200], [80, 40]])
    @people_label.text = "Payers:"
    self.view.addSubview(@people_label)
    # @people = UIPickerView.alloc.initWithFrame([[120, 200], [160, 40]])

    @picker_delegate = AwesomePickerDelegate.new
    @picker_view     = UIPickerView.alloc.initWithFrame([[120, 200], [160, 40]])
    @picker_view.showsSelectionIndicator = true
    @picker_view.delegate = @picker_view.dataSource = @picker_delegate
    # @picker_view.selectRow(@awesomeness, inComponent:0, animated:false)
    @keyboard_view = UIView.alloc.initWithFrame([[0, 460], [320, 260]])  # y: 460, so offscreen, at the bottom.
    # @keyboard_view << @picker_view
    # self.view << @keyboard_view
    # @keyboard_view.slide :up

    # @people.textColor = UIColor.blackColor
    # @people.backgroundColor = UIColor.whiteColor
    # @people.setBorderStyle(UITextBorderStyleRoundedRect)
    # self.view.addSubview(@picker_view)
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

AwesomeLabels = [
                  "Really awesome",
                  "Awesome",  # default
                  "Pretty darn awesome",
                  "I would still call this awesome",
                  "Not awesome, really, but maybe a little",
                  "Okay, yeah, it's awesome",
                ]

class AwesomePickerDelegate
  def numberOfComponentsInPickerView(picker_view)
    1
  end

  def pickerView(picker_view, numberOfRowsInComponent:section)
    AwesomeLabels.length
  end

  def pickerView(picker_view, titleForRow:row, forComponent:section)
    AwesomeLabels[row].to_s
  end
end