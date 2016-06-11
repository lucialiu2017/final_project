class Guide < ActiveRecord::Base
  validates :name, presence: true
  validates :age, :numericality => {only_integer: true, :greater_than_or_equal_to => 18, :less_than_or_equal_to => 150 }
  validates :bio, length: { maximum:300}
has_many(:days,:class_name => "Day", :foreign_key => "guide_id")
end
