class CreateLeitontons < ActiveRecord::Migration[5.0]
  def change
    create_table :leitontons do |t|

      t.timestamps
    end
  end
end
