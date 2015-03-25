class PaymentsScreen < ProMotion::GroupedTableScreen
  title "Payments"

  def table_data
    [{cells: cells}]
  end

  def cells
    @cells ||= begin
      cellz = [{ title: "Add payment",  action: :add_payment  }]
      Payment.each do |payment|
        cellz << { title: "#{payment.amount.round(2)} paid by #{payment.name}", action: :view_payment }
      end
      cellz
    end
  end

  def add_payment
    open AddPaymentScreen
  end

  def view_payment(bill_id)
    open ViewPaymentScreen
  end

  def will_appear
  end
end
