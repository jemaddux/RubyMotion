class HomeScreen < ProMotion::GroupedTableScreen
  title "Home"

  def table_data
    [{
      title: "Manage Bills",
      cells: [
        { title: "Bills",  action: :bills  },
        { title: "People", action: :people }
      ]
    }, {
      title: "Settings",
      cells: [
        { title: "Settings", action: :settings },
        { title: "About",    action: :about    }
      ]
    }]
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

  def about
    open AboutScreen
  end

  # def on_load
  #   # set_toolbar_items [
  #   #   { system_item: :flexible_space },
  #   #   { title: "Bills",
  #   #     action: :bills },
  #   #   { system_item: :flexible_space },
  #   #   { title: "People",
  #   #     action: :people
  #   #     # target: some_other_object
  #   #   },
  #   #   { system_item: :flexible_space },
  #   #   { title: "Settings",
  #   #     action: :settings },
  #   #   { system_item: :flexible_space }
  #   # ]
  # end

  def will_appear
  end

end
