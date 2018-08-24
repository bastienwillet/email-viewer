require 'faker'

8.times do
    Email.create(object: Faker::Myst.age, body: Faker::Lovecraft.paragraph, read: false)
end