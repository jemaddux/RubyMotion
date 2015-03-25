class Payment
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter
  include MotionModel::Validatable

  columns :person_id => :integer,
          :amount    => :float,
          :name      => :string
  # validates :person_id, :presence => true
  validates :amount,    :presence => true
end
