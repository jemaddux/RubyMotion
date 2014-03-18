class PeopleScreen < ProMotion::GroupedTableScreen
  title "People"

  def table_data
    [{cells: cells}]
  end

  def cells
    @cells ||= begin
      cz = [{ title: "Add person",  action: :add_person  }]
      Person.each do |person|
        cz << { title: "#{person.name}", action: :view_person }
      end
      cz
    end
  end

  def add_person
    open AddPersonScreen
  end

  def view_person(person_id)
    open ViewPersonScreen
  end

  def will_appear
  end
end
