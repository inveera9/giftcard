class CreateFiledets < ActiveRecord::Migration
  def change
    create_table :filedets do |t|
      t.attachment :data
      t.timestamps null: false
    end
  end
end
