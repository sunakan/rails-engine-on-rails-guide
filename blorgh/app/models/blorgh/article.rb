module Blorgh
  class Article < ApplicationRecord
    attr_accessor :author_name
    belongs_to :author, class_name: Blorgh.author_class.to_s

    before_validation :set_author

    has_many :comments

    private
      def set_author
        self.author = Blorgh.author_class.find_or_create_by(name: author_name)
      end
  end
end
