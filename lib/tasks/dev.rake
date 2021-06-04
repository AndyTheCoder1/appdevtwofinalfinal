desc "Fill the database tables with some sample data"
task sample_data: :environment do
  starting = Time.now

  #UserDatum.delete_all
  #PromptsAnswer.delete_all
  #DateRequest.delete_all
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
      password: "password"
    )
  end


  users = User.all

  users.each do |user|
      photo = Photo.create(owner_id: user.id)
      photo.update(
        image_one: "https://robohash.org/#{rand(1..10)}.jpeg"
      )
      photo.update(
        image_two: "https://robohash.org/#{rand(1..10)}.jpeg"
      )
      photo.update(
        image_three: "https://robohash.org/#{rand(1..10)}.jpeg"
      )
  end

  users.each do |user|
        data = UserDatum.create(
          owner_id: user.id,
          age: [21, 22,23,24,25,26,27,28,29].sample,
          drinking: ["yes", "No", "Sometimes"].sample,
          gender: ["Male", "Female", "Non-binary"].sample,
          height: ["5'1''", "5'3''", "5'5''" , "5'8''" , "5'9''" , "6'1''" , "6'2''" ].sample,
          hometown: ["Chicago", "Detroit", "Durham"].sample,
          interested_in_men: [true, false].sample,
          interested_in_women: [true, false].sample,
          interested_in_men_and_women: [true, false].sample,
          job_title: ["CPA", "Student", "Lawyer", "unemployed", "personal trainer"].sample,
          religion: ["Muslim", "Buddhist", "Christian", "Catholic", "Atheist"].sample,
          school: ["Harvard", "Kellogg", "Booth"].sample,
          smoking: ["Yes", "No", "Somtimes"].sample,
          undergrad_school: ["Yale", "Harvard", "Rice", "TCU", "SMU"].sample,
          full_name:["Bob", "Jane", "Jeffrey", "Chris", "Kristen", "Jacob", "Josh", "Alex", "George", "Elon", "Jessica", "Aaron", "Sean", "Taylor"].sample
        )

        end



  # user = User.create(
  #     email: "#{username}@example.com",
  #     password: "password",
  #     username: username.downcase,
  #     name: "#{person[:first_name]} #{person[:last_name]}",
  #     bio: Faker::Lorem.paragraph(
  #       sentence_count: 2,
  #       supplemental: true,
  #       random_sentences_to_add: 4
  #     ),
  #     website: Faker::Internet.url,
  #     private: [true, false].sample,
  #     avatar_image: "https://robohash.org/#{username}"
  #   )


  ending = Time.now
  p "It took #{(ending - starting).to_i} seconds to create sample data."
  p "There are now #{User.count} users."
  p "There are now #{Photo.count} photos."
end
