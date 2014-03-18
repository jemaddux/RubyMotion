class OverviewScreen < PM::Screen
  title "Overview"

  def on_load
    self.view.backgroundColor = UIColor.whiteColor
    amount_outstanding
    people_who_owe_money
    reminder_button
  end

  def amount_outstanding
    @amount = UILabel.alloc.initWithFrame([[30, 80], [400, 40]])
    bill_total = 0
    Bill.each do |bill|
      bill_total += bill.amount
    end
    payments_total = 0
    Payment.each do |payment|
      payments_total += payment.amount
    end
    @amount.text = "Amount Outstanding: $#{bill_total - payments_total}"
    self.view.addSubview(@amount)
  end

  def people_who_owe_money
    @people = UILabel.alloc.initWithFrame([[30, 140], [400, 40]])
    @people.text = "People Who Owe Money: 4"
    self.view.addSubview(@people)
  end

  def reminder_button
    @reminder_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @reminder_button.setTitle("Send Reminders", forState: UIControlStateNormal)
    @reminder_button.frame = [[90, 200], [120, 50]]
    @reminder_button.addTarget(self,
      action: :send_reminder,
      forControlEvents: UIControlEventTouchUpInside)
    self.view.addSubview(@reminder_button)

    # @reminder_button = UIButton.alloc.initWithFrame([[30, 200], [400, 40]])
    # @reminder_button.text = "People Who Owe Money: 4"
    # self.view.addSubview(@reminder_button)
  end

  def send_reminder
    ####### Trigger SMSs and Emails
  end

  def will_appear
  end
end