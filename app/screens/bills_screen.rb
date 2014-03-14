class BillsScreen < ProMotion::GroupedTableScreen
  title "Bills"

  def table_data
    [{cells: cells
    }]
  end

  def cells
    @cells ||= begin
      cellz = [{ title: "Add bill",  action: :add_bill  }]
      50.times do |x|
        cellz << { title: "Bill name", action: :view_bill }
      end
      cellz
    end
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
