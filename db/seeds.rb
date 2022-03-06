Category.create!([{
    name: "Energel"
  }])
  
for i in 1..8
  Product.create!([{
    code: "BL00#{i}",
    name: "Energel BL00#{i}",
    category_id: Category.first.id,
    image: "https://placehold.co/330x330?text=BL00#{i}"
  }])
end


