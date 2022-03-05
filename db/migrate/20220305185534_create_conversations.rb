class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :chat
      t.date :fecha_texto
      t.references :leads, null: false, foreign_key: true

      t.timestamps
    end
  end
end
