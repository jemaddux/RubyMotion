class PaymentsScreen < ProMotion::GroupedTableScreen
  title "Payments"

  def table_data
    [{cells: cells
    }]
  end

  def cells
    @cells ||= begin
      cellz = [{ title: "Add payment",  action: :add_payment  }]
      Payment.each do |payment|
        cellz << { title: "#{payment.name}: #{payment.amount}", action: :view_payment }
      end
      cellz
    end
  end

  def add_payment
    open AddPaymentsScreen
  end

  def view_payment(bill_id)
    open ViewPaymentsScreen
  end

  def will_appear
  end
end
