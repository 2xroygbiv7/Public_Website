Category.create!([{
    name: "Energel"
  }])
  
for i in 1..5
  Product.create!([{
    code: "BL00#{i}",
    name: "Energel BL00#{i}",
    category_id: Category.first.id
  }])
end


