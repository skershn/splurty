class Quote < ApplicationRecord
  validates :saying, presence: true, length: { maximum: 280, minimum: 3 }
  validates :author, presence: true, length: { maximum: 100, minimum: 3 }

  def unique_tag
    abbr = []
    self.author.split(" ").each do |sub_string|
      abbr << sub_string[0]
    end
    abbr.join + '#' + self.id.to_s
  end
end




