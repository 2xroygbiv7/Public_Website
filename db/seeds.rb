require 'csv'

Category.create!([{
    name: "leads"
  }])
puts("#{Category.count} categories created")

csv_text = File.read(Rails.root.join('db', 'data', 'product.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Product.new
  t.code = row['code']
  t.name = row['name']
  t.category_id = Category.find_by(name: row['category']).id
  t.save
  puts "#{t.code}, #{t.name} saved"
end

puts("#{Product.count} products created")