class AddColumnParentToCodes < ActiveRecord::Migration
  def change
    add_reference :codes, :parent, index: true
  end
end
