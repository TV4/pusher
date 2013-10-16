class CreateFlashMessages < ActiveRecord::Migration
  def change
    create_table :flash_messages do |t|
      t.string :message
      t.string :site
      t.string :message_type

      t.timestamps
    end
  end
end
