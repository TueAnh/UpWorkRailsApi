class CreateBusinessStreams < ActiveRecord::Migration[5.2]
  def change
    create_table :business_streams do |t|
      t.string :business_stream_name
      t.timestamps
    end
  end
end
