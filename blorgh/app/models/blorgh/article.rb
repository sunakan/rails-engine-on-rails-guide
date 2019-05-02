module Blorgh
  class Article < ApplicationRecord
    attr_accessor :author_name
    belongs_to :author, class_name: "User"

    before_validation :set_author

    has_many :comments

    private
      def set_author
        self.author = User.find_or_create_by(name: author_name)
      end
  end
end
