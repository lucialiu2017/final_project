class Guide < ActiveRecord::Base
  validates :name, presence: true
  validates :age, :numericality => {only_integer: true, :greater_than_or_equal_to => 18, :less_than_or_equal_to => 150 }
  validates :bio, length: { maximum:300}

end
