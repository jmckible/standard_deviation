ActiveRecord::Schema.define(:version=>0) do
  create_table :measurements, :force=>true do |t|
    t.column :integer, :integer
    t.column :decimal, :decimal
  end
end