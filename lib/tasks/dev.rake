desc "Fill the database tables with some sample data"
task sample_data: :environment do
  starting = Time.now


  DateRequest.delete_all
  Photo.delete_all
  Prompt.delete_all
  PrompAnswer.delete_all
  UserDatum.delete_all
  User.delete_all

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
      #username: username.downcase,
      #name: "#{person[:first_name]} #{person[:last_name]}",
      #bio: Faker::Lorem.paragraph(
        #sentence_count: 2,
        #supplemental: true,
        #random_sentences_to_add: 4
      ),
      #website: Faker::Internet.url,
      #private: [true, false].sample,
      #avatar_image: "https://robohash.org/#{username}"
    )

    p user.errors.full_messages
  end

  users = User.all

  users.each do |first_user|
    users.each do |second_user|
      if rand < 0.75
        first_user_date_request = first_user.sent_date_requests.create(
          recipient: second_user,
          status: DateRequest.statuses.values.sample
        )

        p first_user_date_request.errors.full_messages
      end

      if rand < 0.75
        second_user_date_request = second_user.sent_date_requests.create(
          recipient: first_user,
          status: DateRequest.statuses.values.sample
        )

        p second_user_date_request.errors.full_messages
      end
    end
  end

  users.each do |user|
      photo = user.own_photos.create(
        image_one: "/#{rand(1..10)}.jpeg"
      )
      photo = user.own_photos.create(
        image_two: "/#{rand(1..10)}.jpeg"
      )
      photo = user.own_photos.create(
        image_three: "/#{rand(1..10)}.jpeg"
      )

      p photo.errors.full_messages
        end
      end
  end

  

  ending = Time.now
  p "It took #{(ending - starting).to_i} seconds to create sample data."
  p "There are now #{User.count} users."
  p "There are now #{FollowRequest.count} follow requests."
  p "There are now #{Photo.count} photos."
  p "There are now #{Like.count} likes."
  p "There are now #{Comment.count} comments."
end