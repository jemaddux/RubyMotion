class BillsScreen < ProMotion::GroupedTableScreen
  title "Bills"

  def table_data
    [{cells:
      [ { title: "Add bill",  action: :add_bill  },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill },
        { title: "Bill name", action: :view_bill }
      ]
    }]
  end

  def add_bill
    open AddBillScreen
  end

  def view_bill(bill_id)
    open ViewBillScreen
  end

  def will_appear
  end
end
