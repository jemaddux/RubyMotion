class HomeScreen < ProMotion::GroupedTableScreen
  title "app_name"._

  def table_data
    [{
      title: "manage_bills"._,
      cells: [
        { title: "overview"._, action: :overview },
        { title: "bills"._,    action: :bills    },
        { title: "people"._,   action: :people   },
        { title: "Payments",   action: :payments }
      ]
    }, {
      title: "settings"._,
      cells: [
        { title: "settings"._, action: :settings },
        { title: "about"._,    action: :about    }
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

  def payments
    open PaymentsScreen
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
