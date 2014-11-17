class Sprocket < ActiveRecord::Base
  belongs_to :user

  def self.create_many_sprockets
    100.times do |i|
      Sprocket.create(title: "My Sprocket #{i}", description: "Description for Sprocket #{i}.")
    end
    true
  end
end
