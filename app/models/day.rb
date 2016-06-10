class Day < ActiveRecord::Base
belongs_to :guide
has_many(:acts, :class_name => "Act", :foreign_key => "day_id")

validates :title, presence: true
validates :image_url, presence: true
validates :city,  presence: true, length: { maximum:50}

end
