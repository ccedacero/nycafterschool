class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :program
      t.string :site_name
      t.string :borough_community
      t.string :grade_level_age_group
      t.string :number_and_street_address

      t.timestamps
    end
  end
end
