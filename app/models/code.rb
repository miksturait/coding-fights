class Code < ActiveRecord::Base
  has_many :children, class_name: 'Code', foreign_key: :parent_id
  belongs_to :parent, class_name: 'Code'

end
