# Initialize Admin User

if User.find_by(email: "tanyumr@gmail.com").nil?
  u = User.new
  u.email = "tanyumr@gmail.com"           # 可以改成自己的 email

  u.password = "qweqwe"                # 最少要六码

  u.password_confirmation = "qweqwe"   # 最少要六码

  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end


# Initialize Product

Product.create!(title: "Mac",
  description: "苹果笔记本",
  price: 8800,
  quantity: 26,
  image: open("http://image.tianjimedia.com/uploadImages/2016/339/47/W3K26FNL92DA.jpg")
  )

Product.create!(title: "Mac+",
  description: "苹果笔记本",
  price: 10000,
  quantity: 12,
  image: open("http://images.busionline.com/goods/storeid-18241-55fa9ebd8167855fa9ebd816c11442487997.JoteXXXXXbtXXXXXXXXXXXX_%21%21111686382.jpg")
  )

Product.create!(title: "Mac++",
  description: "苹果笔记本",
  price: 12800,
  quantity: 6,
  image: open("http://a.hiphotos.baidu.com/zhidao/pic/item/9a504fc2d5628535351b57c997ef76c6a6ef635b.jpg")
  )

  Product.create!(title: "cherry 80",
    description: "樱桃键盘",
    price: 799,
    quantity: 15,
    image: open("http://localhost:3000/uploads/product/image/13/medium_open-uri20170821-25387-1iw32xp")
    )
