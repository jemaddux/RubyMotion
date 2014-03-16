class Bill
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter
  include MotionModel::Validatable

  columns :name   => :string,
          :amount => :float
  validates :name,   :presence => true
  validates :amount, :presence => true
end
