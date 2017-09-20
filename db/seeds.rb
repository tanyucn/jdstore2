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
  image: open("https://img14.360buyimg.com/n0/jfs/t3505/105/1066513479/244034/3fb987ba/581c01c5Necdb72c5.jpg")
  )

Product.create!(title: "Mac+",
  description: "苹果笔记本",
  price: 10000,
  quantity: 12,
  image: open("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1503317223434&di=236c6afab1605215879f01825363adbf&imgtype=0&src=http%3A%2F%2Fdesign.knowsky.com%2Fimg%2F1%2F201305191957521213.jpg")
  )

Product.create!(title: "Mac++",
  description: "苹果笔记本",
  price: 12800,
  quantity: 5,
  image: open("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1503317402295&di=59f18d4ede2a3b6f2f07db1f0ce5d08d&imgtype=0&src=http%3A%2F%2Fsource.shop.busionline.com%2F201612011636-1416651367.jpg")
  )

Product.create!(title: "cherry 80",
  description: "樱桃键盘",
  price: 799,
  quantity: 15,
  image: open("http://localhost:3000/uploads/product/image/13/medium_open-uri20170821-25387-1iw32xp")
  )
  def seed_image(notebook)
    File.open(File.join(Rails.root, "/app/assets/images/#{notebook}.jpg"))
  end

  Product.create([title:"笔记本",description:"一本",quantity:200,price:10,image:seed_image('notebook')])

def seed_image1(a1)
  File.open(File.join(Rails.root,"/public/images/#{a1}.jpg"))
end

Product.create([title:"咖啡",description:"香浓",quantity:100,price:50,image:seed_image1('a1')])
