class AddReferenceToReplies < ActiveRecord::Migration[5.0]
  def change
    add_reference :replies, :post, index:true
  end
end
