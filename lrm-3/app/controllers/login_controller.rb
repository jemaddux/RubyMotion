class LoginController < UIViewController
  def viewDidLoad
    super
    rmq.append(UIView, :login_form).tap do |q|
      email    = q.append(UITextField, :email).get
      password = q.append(UITextField, :password).get

      rmq(email).style do |e|
        e.frame = {l: 100, t: 80, w: 100, h: 30}
        e.background_color = rmq.color.white
      end

      rmq(password).style do |p|
        p.frame = {l: 100, t: 120, w: 100, h: 30}
        p.background_color = rmq.color.white
      end
    end

    rmq(:login_form).style do |form|
      form.frame = {l: 20, t: 30, w: 200, h: 250}
      form.background_color = rmq.color.white
    end
  end
end

