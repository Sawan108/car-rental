class RemovePictureUrlFromCars < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :picture_url, :string
  end
end
