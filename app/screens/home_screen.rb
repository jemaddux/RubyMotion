class HomeScreen < PM::Screen
  title "Home"

  def on_load
    set_toolbar_items [
      { system_item: :flexible_space },
      { title: "Bills",
        action: :bills },
      { system_item: :flexible_space },
      { title: "People",
        action: :people
        # target: some_other_object
      },
      { system_item: :flexible_space },
      { title: "Settings",
        action: :settings },
      { system_item: :flexible_space }
    ]
  end

  def bills
    open BillsScreen
  end

  def people
    open PeopleScreen
  end

  def settings
    open SettingsScreen
  end

  def will_appear
  end

end
