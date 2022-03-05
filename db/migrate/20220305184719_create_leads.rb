class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :nombre
      t.string :teléfono
      t.string :email
      t.date :fecha_ingreso
      t.references :statuses, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
