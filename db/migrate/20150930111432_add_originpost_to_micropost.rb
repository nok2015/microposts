class AddOriginpostToMicropost < ActiveRecord::Migration
  def change
    add_reference :microposts, :originpost, index: true, foreign_key: true
  end
end
