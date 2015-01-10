class Sprocket < ActiveRecord::Base
  belongs_to :user

  has_attached_file :foo, styles: {medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :foo, :content_type => /\Aimage\/.*\Z/

  def self.create_many_sprockets
    100.times do |i|
      Sprocket.create(title: "My Sprocket #{i}", description: "Description for Sprocket #{i}.")
    end
    true
  end
end
