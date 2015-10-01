class AddOriginpostToMicropost < ActiveRecord::Migration
  def change
    add_reference :microposts, :originpost, index: true
  end
end
