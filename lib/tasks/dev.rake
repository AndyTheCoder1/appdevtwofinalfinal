desc "Fill the database tables with some sample data"
task sample_data: :environment do
  starting = Time.now

  UserDatum.delete_all
  PromptsAnswer.delete_all
  DateRequest.delete_all
  Photo.delete_all
  User.delete_all
  UserDatum.delete_all

  people = Array.new(10) do
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
    }
  end

  people << { first_name: "Alice", last_name: "Smith" }
  people << { first_name: "Bob", last_name: "Smith" }
  people << { first_name: "Carol", last_name: "Smith" }
  people << { first_name: "Doug", last_name: "Smith" }

  people.each do |person|
    username = person.fetch(:first_name).downcase

    user = User.create(
      email: "#{username}@example.com",
      password: "password",
     

    p user.errors.full_messages
  end

  users.each do |user|
      user.own_photos.image_one.create(
        image: "/#{rand(1..10)}.jpeg"
      )
      user.own_photos.image_two.create(
        image: "/#{rand(1..10)}.jpeg"
      )
      user.own_photos.image_three.create(
        image: "/#{rand(1..10)}.jpeg"
      )
  end

  users.each do |user|
        if rand < 0.5
          user.user_datum.drinking = "yes"
        else
          user.user_datum.drinking = "No"
        end
        if rand < 0.25
          
        end

  ending = Time.now
  p "It took #{(ending - starting).to_i} seconds to create sample data."
  p "There are now #{User.count} users."
  p "There are now #{Photo.count} photos."
end
