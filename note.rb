# from posts.rb
  # validaut whether category is present
  # validates :category, inclusion:{ in: "Fiction" || "Non-Fiction" }

  # status: :unprocessable_entity


# from posts_controller

  # render json: { errors: invalid.record.errors.full_messages }#, status: :unprocessable_entity

# from authors_controller
  # render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity