class PeopleScreen < ProMotion::GroupedTableScreen
  title "People"

  def table_data
    [{cells: cells
    }]
  end

  def cells
    @cells ||= begin
      cellz = [{ title: "Add person",  action: :add_person  }]
      50.times do |x|
        cellz << { title: "Person name", action: :view_person }
      end
      cellz
    end
  end

  def add_person
    open AddPersonScreen
  end

  def view_person(person_id)
    open ViewBillScreen
  end

  def will_appear
  end
end
