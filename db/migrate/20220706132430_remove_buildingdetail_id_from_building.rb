class RemoveBuildingdetailIdFromBuilding < ActiveRecord::Migration[5.2]
  def change
    remove_reference :buildings, :buildingdetail_id, foreign_key: true
  end
end
