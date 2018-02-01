class AddPinCodeToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :pincode, :string
  end
end
