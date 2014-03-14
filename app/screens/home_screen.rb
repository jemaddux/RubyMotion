class HomeScreen < ProMotion::GroupedTableScreen
  title "Home"

  def table_data
    [{
      title: "Manage Bills",
      cells: [
        { title: "Overview", action: :overview },
        { title: "Bills",    action: :bills  },
        { title: "People",   action: :people }
      ]
    }, {
      title: "Settings",
      cells: [
        { title: "Settings", action: :settings },
        { title: "About",    action: :about    }
      ]
    }]
  end

  def about
    open AboutScreen
  end

  def bills
    open BillsScreen
  end

  def overview
    open OverviewScreen
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
