- こんなイメージでdelegated_typeをつかってみる
- Profileクラスとその派生としてProgrammerクラス、Designerクラスを考える
- Profile: [id, name, profaileable_type, profileable_id]
- Programmer: [id, favorite_language]
- Designer: [id, illust_url]
- app/models/concerns/profileable.rb

```ruby
user = User.create(email: "a@example.com")
Profile.create!(name: "iga", user: user, profileable: Programmer.new(favorite_language: "Ruby"))
user.profile #=> #<Profile id: 1, user_id: 1, name: "iga", profileable_type: "Programmer", profileable_id: 1, ...>
user.profile.programmer? #=> true
user.profile.programmer #=> #<Programmer id: 1, favorite_language: "Ruby", ...>
user.profile.designer? #=> false
user.profile.designer #=> nil
...
user = User.create(email: "b@example.com")
Profile.create!(name: "foo", user: user, profileable: Designer.new(illust_url: "example.com/illust/1"))
user.profile #=> #<Profile id: 2, user_id: 3, name: "foo", profileable_type: "Designer", profileable_id: 1, ...>
user.profile.programmer? #=> false
irb(main):025:0> user.profile.designer? #=> true
```

