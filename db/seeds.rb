require 'faker'

20.times do
  restaurant = Restaurant.create({
    name: Faker::Hipster.sentence(3),
    address: Faker::HarryPotter.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  })
  5.times do
    review = Review.create({
      content: Faker::Lorem.sentence,
      rating: (0..5).to_a.sample
    })
    review.restaurant = restaurant
    review.save!
  end
end


