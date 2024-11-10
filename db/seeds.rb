# test用アカウント
User.create(email: "test@test.com", password: 'password', first_name: "太郎", last_name: "山田", confirmed_at: Time.now)

5.times.each do |n|
  User.create(email: "test#{n}@test.com", password: 'password', first_name: "#{n}郎", last_name: "山田", confirmed_at: Time.now)
end

Category.create(name: '開発')
Category.create(name: 'マーケティング')
Category.create(name: '営業')

10.times.each do |n|
  # MoneyのcurrencyについてのDEPRECATIONが表示されるが一旦money-railsの動向を見るため放置
  Course.create(title: "Railsマスター_#{n}",
                user: User.all[rand(User.count)],
                category: Category.all[rand(Category.count)],
                price: 10000,
  )
end

Badge.create(name: '最高評価')
Badge.create(name: 'ベストセラー')

Course.all.each do |course|
  next if rand(10) > 5

  badge = Badge.all[rand(Badge.count)]
  course.course_badges.create(badge: badge)
end
